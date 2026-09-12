package SystemComponent.HD.DanMu
{
   import flash.events.*;
   import flash.text.*;
   
   public class DanMu extends TextField
   {
      
      private var speed:int;
      
      public function DanMu(param1:String, param2:int, param3:int)
      {
         super();
         this.speed = param3;
         this.text = param1;
         var _loc4_:* = new TextFormat();
         _loc4_.color = 16777215;
         _loc4_.size = 32;
         this.mouseEnabled = false;
         this.setTextFormat(_loc4_);
         this.width = this.textWidth;
         this.y = param2;
         this.x = 700 + this.width;
         this.addEventListener(Event.ENTER_FRAME,this.frame);
      }
      
      private function frame(param1:Event) : void
      {
         this.x -= this.speed;
         if(this.x < this.width * -2)
         {
            this.removeEventListener(Event.ENTER_FRAME,this.frame);
            this.parent.removeChild(this);
         }
      }
   }
}

