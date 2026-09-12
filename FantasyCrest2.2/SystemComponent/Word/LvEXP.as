package SystemComponent.Word
{
   import SystemEye.*;
   import flash.display.*;
   import flash.text.*;
   
   public class LvEXP extends Sprite
   {
      
      private var $bitmap:BitmapData;
      
      private var $bitmapt:BitmapData;
      
      private var $txt:TextField;
      
      public function LvEXP()
      {
         super();
         this.$txt = new TextField();
         this.$bitmap = DataStorage.readImg("system_lvexp");
         this.$bitmapt = DataStorage.readImg("system_lvexpt");
         this.y = 36;
         this.visible = false;
         this.update();
         this.addChild(this.$txt);
         this.mouseEnabled = false;
         this.$txt.width = 36;
         this.$txt.height = 24;
         this.$txt.x = 12;
         this.$txt.y = 16;
         this.$txt.mouseEnabled = false;
         this.scaleX = 0.7;
         this.scaleY = 0.7;
      }
      
      public function set vis(param1:Boolean) : void
      {
         this.visible = param1;
         this.parent.addChild(this);
      }
      
      public function update() : void
      {
         this.graphics.clear();
         this.graphics.beginBitmapFill(this.$bitmap);
         this.graphics.drawRect(0,0,this.$bitmap.width,this.$bitmap.height);
         this.graphics.endFill();
         this.graphics.beginBitmapFill(this.$bitmapt);
         this.graphics.drawRect(0,0,52 + 110 * NSGameData.expBL,this.$bitmapt.height);
         this.graphics.endFill();
         this.$txt.text = String(NSGameData.$lv);
         this.$txt.setTextFormat(new TextFormat(null,18,16777113,null,null,null,null,null,TextFormatAlign.CENTER));
      }
      
      public function getlvexp(param1:String) : void
      {
         if(NSGameData.ns_object[param1])
         {
            NSGameData.$lv = NSGameData.ns_object[param1].lv;
            NSGameData.$exp = NSGameData.ns_object[param1].exp;
            this.update();
         }
      }
   }
}

