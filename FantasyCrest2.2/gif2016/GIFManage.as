package gif2016
{
   import SystemEye.*;
   import flash.display.*;
   import flash.events.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.net.*;
   import flash.text.*;
   import flash.utils.*;
   import org.gif.encoder.*;
   
   public class GIFManage
   {
      
      private static var _rect:Rectangle;
      
      private static var _bmd:Bitmap;
      
      private static var _saveSpr:Sprite;
      
      private static var _freams:Array;
      
      private static var gif:GIFEncoder = new GIFEncoder();
      
      private static var _time:int = 0;
      
      private static var _delFrame:int = 5;
      
      private static var _delMath:int = 0;
      
      private static var _maxTask:int = 0;
      
      private static var _ok:Boolean = false;
      
      public function GIFManage()
      {
         super();
      }
      
      public static function save() : void
      {
         if(!_ok || _freams.length == 0 || _saveSpr != null)
         {
            return;
         }
         _saveSpr = new Sprite();
         ComponentResourcesManage.$stage.addChild(_saveSpr);
         _saveSpr.graphics.beginFill(0,0.8);
         _saveSpr.graphics.drawRect(0,0,700,500);
         _saveSpr.graphics.endFill();
         gif.start();
         gif.setFrameRate(20);
         gif.setDelay(0);
         gif.setRepeat(0);
         _maxTask = _freams.length;
         next();
      }
      
      private static function next() : void
      {
         var w:*;
         var txt:TextField = null;
         if(_freams.length == 0)
         {
            gif.finish();
            txt = new TextField();
            txt.text = "【点击屏幕进行保存】";
            txt.setTextFormat(new TextFormat(null,32,65535,true,null,null,null,null,TextFormatAlign.CENTER));
            _saveSpr.addChild(txt);
            txt.width = 700;
            txt.x = 0;
            txt.mouseEnabled = false;
            txt.y = 250;
            txt.filters = [new DropShadowFilter(0)];
            _saveSpr.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               var _loc2_:* = new FileReference();
               _loc2_.save(gif.stream,"ExportGif.gif");
               _saveSpr.parent.removeChild(_saveSpr);
               _saveSpr = null;
            });
         }
         w = 700 / _maxTask * (_maxTask - _freams.length);
         _saveSpr.graphics.clear();
         _saveSpr.graphics.beginFill(16776960,0.5);
         _saveSpr.graphics.drawRect(0,0,w,500);
         _saveSpr.graphics.beginFill(0,0.5);
         _saveSpr.graphics.drawRect(w,0,700 - w,500);
         _saveSpr.graphics.endFill();
         gif.addFrame(_freams[0] as BitmapData);
         _freams.shift();
         setTimeout(next,100);
      }
      
      public static function start(param1:DisplayObject, param2:Number) : void
      {
         if(_bmd)
         {
            return;
         }
         _ok = false;
         _rect = null;
         _freams = [];
         _bmd = new Bitmap();
         _bmd.alpha = 0.5;
         _time = param2 * param1.stage.frameRate;
         param1.removeEventListener(Event.ENTER_FRAME,onFrame);
         param1.addEventListener(Event.ENTER_FRAME,onFrame);
      }
      
      public static function stop(param1:DisplayObject) : void
      {
         if(_bmd)
         {
            _ok = true;
            _bmd.parent.removeChild(_bmd);
            _bmd = null;
            param1.removeEventListener(Event.ENTER_FRAME,onFrame);
         }
      }
      
      public static function onFrame(param1:Event) : void
      {
         var _loc2_:* = undefined;
         _loc2_ = _time - 1;
         _time = _loc2_;
         if(_time <= 0)
         {
            gif.finish();
            _ok = true;
            stop(param1.target as DisplayObject);
            return;
         }
         _bmd.visible = false;
         _loc2_ = _delMath + 1;
         _delMath = _loc2_;
         if(_delMath >= _delFrame)
         {
            _delMath = 0;
            draw(param1.target as DisplayObject);
         }
         _bmd.visible = true;
         ComponentResourcesManage.$stage.addChild(_bmd);
      }
      
      private static function draw(param1:DisplayObject) : void
      {
         var _loc2_:* = 0.35;
         var _loc3_:* = new BitmapData(700,500);
         _loc3_.draw(param1);
         var _loc4_:* = new BitmapData(700 * _loc2_,500 * _loc2_);
         var _loc5_:* = new Matrix();
         var _loc6_:* = 0;
         _loc5_.scale(_loc2_ + _loc6_,_loc2_ + _loc6_);
         _loc4_.draw(_loc3_,_loc5_);
         _bmd.bitmapData = _loc4_;
         _freams.push(_loc4_);
      }
      
      public static function isSaveing() : Boolean
      {
         return _saveSpr != null;
      }
   }
}

