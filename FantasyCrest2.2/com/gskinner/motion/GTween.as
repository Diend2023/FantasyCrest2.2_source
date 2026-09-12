package com.gskinner.motion
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.utils.Dictionary;
   
   public class GTween extends EventDispatcher
   {
      
      protected static var _timingMode:String;
      
      protected static var _activeTicker:ITicker;
      
      public static var defaultEase:Function;
      
      protected static var _timeInterval:uint = 40;
      
      protected static var activeTweens:Dictionary = new Dictionary();
      
      public static const TIME:String = "time";
      
      public static const FRAME:String = "frame";
      
      public static const HYBRID:String = "hybrid";
      
      public static const START:String = "start";
      
      public static const DELAY:String = "delay";
      
      public static const TWEEN:String = "tween";
      
      public static const END:String = "end";
      
      public static var pauseAll:Boolean = false;
      
      public static var rotationProperties:Object = {
         "rotation":true,
         "rotationX":true,
         "rotationY":true,
         "rotationZ":true
      };
      
      public static var snappingProperties:Object = {
         "x":true,
         "y":true
      };
      
      public var autoPlay:Boolean = true;
      
      public var autoRotation:Boolean = false;
      
      public var autoVisible:Boolean = true;
      
      public var data:*;
      
      public var duration:Number = 1;
      
      public var ease:Function = linearEase;
      
      public var nextTween:GTween;
      
      public var reflect:Boolean = false;
      
      public var repeat:int = 0;
      
      public var snapping:Boolean = false;
      
      protected var startValues:Object;
      
      protected var endValues:Object;
      
      protected var inited:Boolean;
      
      protected var inTick:Boolean;
      
      protected var ticker:ITicker;
      
      protected var positionOffset:Number;
      
      protected var assignmentTarget:Object;
      
      protected var assignmentProperty:String;
      
      protected var _position:Number = 0;
      
      protected var _previousPosition:Number;
      
      protected var _tweenPosition:Number = 0;
      
      protected var _previousTweenPosition:Number;
      
      protected var _target:Object;
      
      protected var _propertyTarget:Object;
      
      protected var _paused:Boolean = true;
      
      protected var _proxy:TargetProxy;
      
      protected var _delay:Number = 0;
      
      protected var _reversed:Boolean;
      
      protected var _lockStartProperties:Boolean;
      
      public function GTween(param1:Object = null, param2:Number = 10, param3:Object = null, param4:Object = null)
      {
         super();
         this.ticker = activeTicker;
         this.target = param1;
         this.duration = param2;
         this.ease = defaultEase || linearEase;
         this.setProperties(param3);
         this.setTweenProperties(param4);
      }
      
      public static function get timingMode() : String
      {
         return _timingMode;
      }
      
      public static function set timingMode(param1:String) : void
      {
         param1 = param1 == FRAME || param1 == TIME ? param1 : HYBRID;
         if(param1 == _timingMode)
         {
            return;
         }
         _timingMode = param1;
         if(_timingMode == TIME)
         {
            _activeTicker = new TimeTicker();
            (_activeTicker as TimeTicker).interval = _timeInterval / 1000;
         }
         else if(_timingMode == FRAME)
         {
            _activeTicker = new FrameTicker();
         }
         else
         {
            _activeTicker = new HybridTicker();
         }
      }
      
      public static function get timeInterval() : uint
      {
         return _timeInterval;
      }
      
      public static function set timeInterval(param1:uint) : void
      {
         _timeInterval = param1;
         if(_activeTicker is TimeTicker)
         {
            (_activeTicker as TimeTicker).interval = _timeInterval / 1000;
         }
      }
      
      public static function get activeTicker() : ITicker
      {
         if(_timingMode == null)
         {
            timingMode = HYBRID;
         }
         return _activeTicker;
      }
      
      public static function linearEase(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param1;
      }
      
      public function get proxy() : Object
      {
         if(this._proxy == null)
         {
            this._proxy = new TargetProxy(this);
         }
         return this._proxy;
      }
      
      public function get position() : Number
      {
         return this._position;
      }
      
      public function set position(param1:Number) : void
      {
         this.setPosition(param1,true);
      }
      
      public function get paused() : Boolean
      {
         return this._paused;
      }
      
      public function set paused(param1:Boolean) : void
      {
         if(param1 == this._paused)
         {
            return;
         }
         this._paused = param1;
         if(param1)
         {
            this.ticker.removeEventListener("tick",this.handleTick);
         }
         else
         {
            this.ticker.addEventListener("tick",this.handleTick,false,0,true);
            if(this.repeat != -1 && this._position >= this.duration * (this.repeat + 1))
            {
               this.position = 0;
            }
            else
            {
               this.updatePositionOffset();
            }
         }
         this.setGCLock(!param1);
      }
      
      public function get tweenPosition() : Number
      {
         return this._tweenPosition;
      }
      
      public function get target() : Object
      {
         return this._target;
      }
      
      public function set target(param1:Object) : void
      {
         this._propertyTarget = this._target = param1 === null ? {} : param1;
         this.inited = false;
      }
      
      public function get propertyTarget() : Object
      {
         return this._propertyTarget;
      }
      
      public function get reversed() : Boolean
      {
         return this._reversed;
      }
      
      public function set reversed(param1:Boolean) : void
      {
         if(param1 == this._reversed)
         {
            return;
         }
         this._reversed = param1;
         if(!this.inited)
         {
            this.init();
         }
         this.setPosition(this._position,true);
      }
      
      public function get state() : String
      {
         return this._position == -this._delay && this._paused ? START : (this._position < 0 ? DELAY : (this.repeat != -1 && this._position >= (this.repeat + 1) * this.duration ? END : TWEEN));
      }
      
      public function get delay() : Number
      {
         return this._delay;
      }
      
      public function set delay(param1:Number) : void
      {
         if(this._position == -this._delay)
         {
            this.setPosition(-param1);
         }
         this._delay = param1;
      }
      
      public function get lockStartProperties() : Boolean
      {
         return this._lockStartProperties;
      }
      
      public function set lockStartProperties(param1:Boolean) : void
      {
         if(param1 && !this.inited)
         {
            this.init();
         }
         this._lockStartProperties = param1;
      }
      
      public function setProperties(param1:Object) : void
      {
         var _loc2_:String = null;
         this.endValues = {};
         for(_loc2_ in param1)
         {
            this.setProperty(_loc2_,param1[_loc2_]);
         }
      }
      
      public function setProperty(param1:String, param2:Number) : void
      {
         if(isNaN(param2))
         {
            return;
         }
         this.endValues[param1] = param2;
         if(this._lockStartProperties && this.startValues[param1] == null)
         {
            this.startValues[param1] = this._propertyTarget[param1];
         }
         this.invalidate();
      }
      
      public function getProperty(param1:String) : Number
      {
         return this.endValues[param1];
      }
      
      public function deleteProperty(param1:String) : Boolean
      {
         return delete this.endValues[param1];
      }
      
      public function getProperties() : Object
      {
         return this.copyObject(this.endValues);
      }
      
      public function setStartProperties(param1:Object) : void
      {
         this.startValues = this.copyObject(param1);
         this.inited = true;
      }
      
      public function getStartProperties() : Object
      {
         return this.copyObject(this.startValues);
      }
      
      public function setTweenProperties(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:String = null;
         if(!param1)
         {
            return;
         }
         if("position" in param1)
         {
            _loc2_ = Number(param1.position);
            delete param1.position;
         }
         if("initListener" in param1)
         {
            addEventListener(Event.INIT,param1.initListener,false,0,true);
            delete param1.initListener;
         }
         if("completeListener" in param1)
         {
            addEventListener(Event.COMPLETE,param1.completeListener,false,0,true);
            delete param1.completeListener;
         }
         if("changeListener" in param1)
         {
            addEventListener(Event.CHANGE,param1.changeListener,false,0,true);
            delete param1.changeListener;
         }
         for(_loc3_ in param1)
         {
            this[_loc3_] = param1[_loc3_];
         }
         if(!isNaN(_loc2_))
         {
            this.position = _loc2_;
         }
      }
      
      public function reverse(param1:Boolean = true) : void
      {
         var _loc2_:Number = this.repeat == -1 ? this.duration - this._position % this.duration : (this.repeat + 1) * this.duration - this._position;
         if(this.reflect)
         {
            this._reversed = this.position / this.duration % 2 >= 1 == _loc2_ / this.duration % 2 >= 1 != this._reversed;
         }
         else
         {
            this._reversed = !this._reversed;
         }
         this.setPosition(_loc2_,param1);
      }
      
      public function invalidate() : void
      {
         this.inited = false;
         if(this._position > 0)
         {
            this._position = 0;
            this.updatePositionOffset();
         }
         if(this.autoPlay)
         {
            this.paused = false;
         }
      }
      
      public function pause() : void
      {
         this.paused = true;
      }
      
      public function play() : void
      {
         this.paused = false;
      }
      
      public function beginning() : void
      {
         this.setPosition(-this._delay);
      }
      
      public function end() : void
      {
         this.setPosition(this.repeat == -1 ? this.duration : (this.repeat + 1) * this.duration);
      }
      
      public function setAssignment(param1:Object = null, param2:String = null) : void
      {
         this.assignmentTarget = param1;
         this.assignmentProperty = param2;
         this.inited = false;
      }
      
      public function setPosition(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Number = NaN;
         this._previousPosition = this._position;
         this._position = param1;
         if(!this.inTick && !this.paused)
         {
            this.updatePositionOffset();
         }
         var _loc3_:Number = (this.repeat + 1) * this.duration;
         if(param1 < 0)
         {
            _loc4_ = this._reversed ? this.duration : 0;
         }
         else if(this.repeat == -1 || param1 < _loc3_)
         {
            _loc4_ = param1 % this.duration;
            if((this.reflect && param1 / this.duration % 2 >= 1) != this._reversed)
            {
               _loc4_ = this.duration - _loc4_;
            }
         }
         else
         {
            _loc4_ = (this.reflect && this.repeat % 2 >= 1) != this._reversed ? 0 : this.duration;
         }
         if(_loc4_ == this._tweenPosition)
         {
            return;
         }
         this._previousTweenPosition = this._tweenPosition;
         this._tweenPosition = _loc4_;
         if(!param2 && hasEventListener(Event.CHANGE))
         {
            dispatchEvent(new Event(Event.CHANGE));
         }
         if(!this.inited && this._previousPosition <= 0 && this._position >= 0)
         {
            this.init();
            if(!param2 && hasEventListener(Event.INIT))
            {
               dispatchEvent(new Event(Event.INIT));
            }
         }
         this.updateProperties();
         if(this.repeat != -1 && this._previousPosition < _loc3_ && param1 >= _loc3_)
         {
            if(!param2 && hasEventListener(Event.COMPLETE))
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            this.paused = true;
            if(this.nextTween)
            {
               this.nextTween.paused = false;
            }
         }
      }
      
      protected function init() : void
      {
         var _loc1_:String = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.inited = true;
         if(this._lockStartProperties)
         {
            return;
         }
         this.startValues = {};
         if(Boolean(this.assignmentTarget) && Boolean(this.assignmentProperty))
         {
            this._propertyTarget = this.assignmentTarget[this.assignmentProperty];
         }
         for(_loc1_ in this.endValues)
         {
            if(this.autoRotation && Boolean(rotationProperties[_loc1_]))
            {
               _loc2_ = Number(this.endValues[_loc1_] = this.endValues[_loc1_] % 360);
               _loc3_ = this._propertyTarget[_loc1_] % 360;
               this.startValues[_loc1_] = _loc3_ + (Math.abs(_loc3_ - _loc2_) < 180 ? 0 : (_loc3_ > _loc2_ ? -360 : 360));
            }
            else
            {
               this.startValues[_loc1_] = this._propertyTarget[_loc1_];
            }
         }
      }
      
      protected function updateProperties() : void
      {
         var _loc2_:String = null;
         var _loc1_:Number = this.ease(this._tweenPosition / this.duration,0,1,1);
         for(_loc2_ in this.endValues)
         {
            this.updateProperty(_loc2_,this.startValues[_loc2_],this.endValues[_loc2_],_loc1_);
         }
         if(this.autoVisible && "alpha" in this.endValues && "alpha" in this._propertyTarget && "visible" in this._propertyTarget)
         {
            this._propertyTarget.visible = this._propertyTarget.alpha > 0;
         }
         if(Boolean(this.assignmentTarget) && Boolean(this.assignmentProperty))
         {
            this.assignmentTarget[this.assignmentProperty] = this._propertyTarget;
         }
      }
      
      protected function updateProperty(param1:String, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = param2 + (param3 - param2) * param4;
         if(this.snapping && Boolean(snappingProperties[param1]))
         {
            _loc5_ = Math.round(_loc5_);
         }
         if(param1 == "currentFrame")
         {
            this._propertyTarget.gotoAndStop(_loc5_ << 0);
         }
         else
         {
            this._propertyTarget[param1] = _loc5_;
         }
      }
      
      protected function setGCLock(param1:Boolean) : void
      {
         if(param1)
         {
            if(this._target is IEventDispatcher)
            {
               this._target.addEventListener("GDS__NONEXISTENT_EVENT",this.nullListener,false,0,false);
            }
            else
            {
               activeTweens[this] = true;
            }
         }
         else
         {
            if(this._target is IEventDispatcher)
            {
               this._target.removeEventListener("GDS__NONEXISTENT_EVENT",this.nullListener);
            }
            delete activeTweens[this];
         }
      }
      
      protected function copyObject(param1:Object) : Object
      {
         var _loc3_:String = null;
         var _loc2_:Object = {};
         for(_loc3_ in param1)
         {
            _loc2_[param1] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      protected function updatePositionOffset() : void
      {
         this.positionOffset = this.ticker.position - this._position;
      }
      
      protected function nullListener(param1:Event) : void
      {
      }
      
      protected function handleTick(param1:Event) : void
      {
         this.inTick = true;
         if(pauseAll)
         {
            this.updatePositionOffset();
         }
         else
         {
            this.setPosition(this.ticker.position - this.positionOffset,false);
         }
         this.inTick = false;
      }
   }
}

import flash.display.Shape;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import flash.events.TimerEvent;
import flash.utils.Proxy;
import flash.utils.Timer;
import flash.utils.flash_proxy;
import flash.utils.getTimer;

use namespace flash_proxy;

interface ITicker extends IEventDispatcher
{
   
   function get position() : Number;
}

class TimeTicker extends EventDispatcher implements ITicker
{
   
   protected var timer:Timer;
   
   public function TimeTicker()
   {
      super();
      this.timer = new Timer(20);
      this.timer.start();
      this.timer.addEventListener(TimerEvent.TIMER,this.tick);
   }
   
   public function get position() : Number
   {
      return getTimer() / 1000;
   }
   
   public function set interval(param1:Number) : void
   {
      this.timer.delay = param1 * 1000;
   }
   
   protected function tick(param1:TimerEvent) : void
   {
      dispatchEvent(new Event("tick"));
      param1.updateAfterEvent();
   }
}

class FrameTicker extends EventDispatcher implements ITicker
{
   
   protected var shape:Shape;
   
   protected var _position:Number = 0;
   
   public function FrameTicker()
   {
      super();
      this.shape = new Shape();
      this.shape.addEventListener(Event.ENTER_FRAME,this.tick);
   }
   
   public function get position() : Number
   {
      return this._position;
   }
   
   protected function tick(param1:Event) : void
   {
      ++this._position;
      dispatchEvent(new Event("tick"));
   }
}

class HybridTicker extends EventDispatcher implements ITicker
{
   
   protected var shape:Shape;
   
   public function HybridTicker()
   {
      super();
      this.shape = new Shape();
      this.shape.addEventListener(Event.ENTER_FRAME,this.tick);
   }
   
   public function get position() : Number
   {
      return getTimer() / 1000;
   }
   
   protected function tick(param1:Event) : void
   {
      dispatchEvent(new Event("tick"));
   }
}

dynamic class TargetProxy extends Proxy
{
   
   private var gTween:GTween;
   
   public function TargetProxy(param1:GTween)
   {
      super();
      this.gTween = param1;
   }
   
   override flash_proxy function callProperty(param1:*, ... rest) : *
   {
      return this.gTween.propertyTarget[param1].apply(null,rest);
   }
   
   override flash_proxy function getProperty(param1:*) : *
   {
      var _loc2_:Number = Number(this.gTween.getProperty(param1));
      return isNaN(_loc2_) ? this.gTween.propertyTarget[param1] : _loc2_;
   }
   
   override flash_proxy function setProperty(param1:*, param2:*) : void
   {
      if(isNaN(param2))
      {
         this.gTween.propertyTarget[param1] = param2;
      }
      else
      {
         this.gTween.setProperty(String(param1),Number(param2));
      }
   }
   
   override flash_proxy function deleteProperty(param1:*) : Boolean
   {
      return this.gTween.deleteProperty(param1);
   }
}
