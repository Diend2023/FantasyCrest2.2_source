package SystemComponent
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import person.darw.clear.BitmapClear;
   
   public class SystemButton extends Sprite
   {
      
      private var $array:Array = new Array();
      
      private var $bitmap:Bitmap = new Bitmap();
      
      private var $bitmapText:Bitmap = new Bitmap();
      
      private var $type:String = "direct";
      
      private var $data:Object;
      
      public var $function:Function;
      
      public function SystemButton(param1:Array, param2:BitmapData)
      {
         super();
         this.$array = param1;
         this.$array.push(param2);
         this.addChild(this.$bitmap);
         this.addChild(this.$bitmapText);
         this.$bitmap.bitmapData = this.$array[0];
         this.$bitmapText.bitmapData = this.$array[3];
         this.$bitmapText.y = 5;
         this.addEventListener(MouseEvent.CLICK,this.toClick);
         this.addEventListener(MouseEvent.MOUSE_DOWN,this.toDown);
         this.addEventListener(MouseEvent.MOUSE_OVER,this.toOver);
         this.addEventListener(MouseEvent.MOUSE_OUT,this.toOut);
      }
      
      public function setFunction(param1:Function, param2:Object) : void
      {
         this.$function = param1;
         this.$data = param2;
         this.$type = "set";
      }
      
      public function set array(param1:Array) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in this.$array)
         {
            this.$array[_loc2_].dispose();
         }
         this.$array = param1;
         this.$bitmap.bitmapData = this.$array[0];
         this.$bitmapText.bitmapData = this.$array[3];
      }
      
      private function toDown(param1:MouseEvent) : void
      {
         this.$bitmap.bitmapData = this.$array[2];
      }
      
      private function toClick(param1:MouseEvent) : void
      {
         this.$bitmap.bitmapData = this.$array[1];
         if(this.$function !== null)
         {
            if(this.$type == "direct")
            {
               this.$function();
            }
            else if(this.$type == "set")
            {
               this.$function(this.$data);
            }
         }
      }
      
      private function toOver(param1:MouseEvent) : void
      {
         this.$bitmap.bitmapData = this.$array[1];
      }
      
      private function toOut(param1:MouseEvent) : void
      {
         this.$bitmap.bitmapData = this.$array[0];
      }
      
      public function CG() : void
      {
         var _loc1_:* = undefined;
         this.removeChild(this.$bitmap);
         this.removeChild(this.$bitmapText);
         BitmapClear.Clear(this.$bitmap);
         BitmapClear.Clear(this.$bitmapText);
         for(_loc1_ in this.$array)
         {
            try
            {
               this.$array[_loc1_].dispose();
            }
            catch(e:Error)
            {
            }
         }
         this.$array = null;
         this.$function = null;
         this.removeEventListener(MouseEvent.CLICK,this.toClick);
         this.removeEventListener(MouseEvent.MOUSE_DOWN,this.toDown);
         this.removeEventListener(MouseEvent.MOUSE_OVER,this.toOver);
         this.removeEventListener(MouseEvent.MOUSE_OUT,this.toOut);
         this.parent.removeChild(this);
      }
   }
}

