package SystemComponent.Word
{
   import SystemComponent.*;
   import SystemEye.*;
   import flash.display.*;
   import flash.events.*;
   import person.darw.clear.*;
   
   public class SlayPhoto extends Bitmap
   {
      
      private var $word:SystemWord;
      
      private var $boolean:Boolean = false;
      
      private var $time:int = 0;
      
      private var $x:int = 0;
      
      public function SlayPhoto(param1:SystemWord)
      {
         super();
         this.$word = param1;
         this.addEventListener(Event.ENTER_FRAME,this.frame);
      }
      
      public function setPhoto(param1:String, param2:int, param3:String = "") : void
      {
         this.bitmapData = DataStorage.readImg(param1);
         this.x = 0;
         this.alpha = 0;
         this.y = stage.stageHeight - this.height;
         this.$time = param2 + 10;
         this.$x = 0;
         this.$word.$stop = true;
         this.$boolean = true;
      }
      
      private function frame(param1:Event) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(this.$boolean)
         {
            if(this.$time > 0)
            {
               _loc2_ = this;
               _loc3_ = this.$time - 1;
               _loc2_.$time = _loc3_;
            }
            else if(this.$x == 0)
            {
               this.$word.$stop = false;
               this.$x = -800;
            }
            this.x += (this.$x - this.x) * 0.1;
            this.alpha += (1 - this.alpha) * 0.2;
            if(this.$boolean && this.x < -700)
            {
               this.$boolean = false;
            }
         }
      }
      
      public function CG() : void
      {
         BitmapClear.Clear(this);
         this.removeEventListener(Event.ENTER_FRAME,this.frame);
         this.parent.removeChild(this);
      }
   }
}

