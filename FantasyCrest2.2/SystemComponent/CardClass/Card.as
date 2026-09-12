package SystemComponent.CardClass
{
   import SystemEye.*;
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   
   public class Card extends Sprite
   {
      
      private var m_name:TextField;
      
      private var m_string:TextField;
      
      private var m_bitmap:Bitmap;
      
      public var m_id:int;
      
      public function Card()
      {
         super();
         var _loc1_:* = DataStorage.readImg("CARD");
         this.graphics.beginBitmapFill(_loc1_);
         this.graphics.drawRect(0,0,_loc1_.width,_loc1_.height);
         this.graphics.endFill();
         this.m_name = new TextField();
         this.addChild(this.m_name);
         this.m_name.mouseEnabled = false;
         this.m_name.x = 186;
         this.m_name.y = 28;
         this.m_name.height = 30;
         this.m_name.width = 120;
         this.m_string = new TextField();
         this.addChild(this.m_string);
         this.m_string.mouseEnabled = false;
         this.m_string.x = 186;
         this.m_string.y = 74;
         this.m_string.height = 120;
         this.m_string.width = 120;
         this.m_string.wordWrap = true;
         this.m_bitmap = new Bitmap();
         this.addChild(this.m_bitmap);
         this.m_bitmap.x = 100;
         this.m_bitmap.y = 78;
         this.m_bitmap.blendMode = BlendMode.SCREEN;
         this.alpha = 0.7;
         this.addEventListener(MouseEvent.MOUSE_UP,this.Up);
         this.addEventListener(MouseEvent.MOUSE_OVER,this.Over);
         this.addEventListener(MouseEvent.MOUSE_OUT,this.Out);
         this.doubleClickEnabled = true;
         this.addEventListener(MouseEvent.DOUBLE_CLICK,this.DClick);
      }
      
      private function DClick(param1:MouseEvent) : void
      {
         var _loc2_:* = this.parent.parent;
         _loc2_["OK"]();
      }
      
      private function Up(param1:MouseEvent) : void
      {
         if(!this.parent.parent["m_boolean"])
         {
            this.parent.parent["m_select"] = this.m_id;
         }
      }
      
      private function Over(param1:MouseEvent) : void
      {
         this.alpha = 1;
      }
      
      private function Out(param1:MouseEvent) : void
      {
         this.alpha = 0.7;
      }
      
      public function setData(param1:XML) : void
      {
         this.m_name.text = param1.@name;
         this.m_string.text = param1.@string;
         var _loc2_:* = new TextFormat(null,null,16777215,null);
         this.m_string.setTextFormat(_loc2_);
         _loc2_.size = 24;
         this.m_name.setTextFormat(_loc2_);
         this.m_bitmap.bitmapData = DataStorage.readImg("Hred" + param1.@head);
         this.m_bitmap.bitmapData = DataStorage.readImg("HredNoKown");
      }
      
      public function CG() : void
      {
         this.removeEventListener(MouseEvent.DOUBLE_CLICK,this.DClick);
         this.removeEventListener(MouseEvent.MOUSE_OUT,this.Out);
         this.removeEventListener(MouseEvent.MOUSE_OVER,this.Over);
      }
   }
}

