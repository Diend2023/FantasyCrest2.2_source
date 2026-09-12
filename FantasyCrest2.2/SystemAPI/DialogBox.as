package SystemAPI
{
   import flash.events.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   
   public class DialogBox
   {
      
      private var $text:TextField;
      
      private var $head:TextField;
      
      private var $color:TextFormat;
      
      private var $ailgn:TextFormat;
      
      private var $time:Timer;
      
      private var $array:Array;
      
      private var $window:Object;
      
      private var $i:int = 0;
      
      public function DialogBox()
      {
         super();
         this.$time = new Timer(25);
      }
      
      public function init(param1:Object, param2:TextField, param3:TextFormat, param4:TextField, param5:TextFormat, param6:Array) : void
      {
         this.$window = param1;
         this.$text = param4;
         this.$head = param2;
         this.$color = param3;
         this.$ailgn = param5;
         this.$array = param6;
         this.$time.addEventListener(TimerEvent.TIMER,this.toTimer);
      }
      
      public function set dragBoolean(param1:Boolean) : void
      {
         if(param1)
         {
            this.$window.addEventListener(MouseEvent.MOUSE_DOWN,this.toDown);
         }
         else
         {
            this.$window.removeEventListener(MouseEvent.MOUSE_DOWN,this.toDown);
         }
      }
      
      public function addShow(param1:String, param2:String, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.$array = [];
         }
         this.$array.push({
            "s":param2,
            "h":param1
         });
         if(!this.$window.visible || param3)
         {
            this.show(param1,param2);
         }
      }
      
      public function Down(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.J)
         {
            if(this.$window.visible)
            {
               this.next();
            }
         }
      }
      
      public function toUp(param1:MouseEvent) : void
      {
         this.$window.stopDrag();
         if(Boolean(this.$window.visible) && this.$window.alpha == 1)
         {
            this.next();
         }
         this.$window.alpha = 1;
      }
      
      private function show(param1:String, param2:String) : void
      {
         this.$i = 0;
         this.$text.text = "";
         this.$head.text = param1;
         this.$head.setTextFormat(this.$ailgn);
         this.$window.toVisible = true;
         this.$window.visible = true;
         this.$time.start();
      }
      
      public function next() : void
      {
         if(!this.$time.running)
         {
            if(this.$array.length > 0)
            {
               this.show(this.$array[0].h,this.$array[0].s);
            }
            else
            {
               this.$window.visible = false;
            }
         }
         else
         {
            this.$time.stop();
            this.$text.text = this.$array[0].s;
            this.$array.shift();
            this.$text.setTextFormat(this.$color);
         }
      }
      
      private function toDown(param1:MouseEvent) : void
      {
         this.$window.startDrag(false);
         this.$window.alpha = 0.5;
      }
      
      private function toTimer(param1:TimerEvent) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(this.$array[0].s.length > this.$i)
         {
            if(this.$array[0].s.substring(this.$i,this.$i + 2) == "\n")
            {
               this.$text.appendText("\n");
               this.$text.setTextFormat(this.$color);
               this.$i += 2;
            }
            else
            {
               this.$text.appendText(this.$array[0].s.charAt(this.$i));
               this.$text.setTextFormat(this.$color);
               _loc2_ = this;
               _loc3_ = this.$i + 1;
               _loc2_.$i = _loc3_;
            }
         }
         else
         {
            this.$time.stop();
            this.$array.shift();
         }
      }
   }
}

