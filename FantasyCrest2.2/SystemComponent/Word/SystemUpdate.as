package SystemComponent.Word
{
   import SystemEye.DataStorage;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class SystemUpdate extends Sprite
   {
      
      private var $bitmap:Bitmap;
      
      private var $text:TextField;
      
      private var $color:TextFormat;
      
      public function SystemUpdate()
      {
         super();
         this.$bitmap = new Bitmap();
         this.$text = new TextField();
         this.$color = new TextFormat(null,null,13434624);
         this.$bitmap.bitmapData = DataStorage.readImg("box3");
         this.addChild(this.$bitmap);
         this.addChild(this.$text);
         this.$text.x = 10;
         this.$text.y = 60;
         this.$text.width = 385;
         this.$text.height = 300;
         this.$text.wordWrap = true;
         this.$text.mouseEnabled = false;
         this.$text.text = DataStorage.readText("System_UPDATE");
         this.$text.setTextFormat(this.$color);
      }
      
      public function CG() : void
      {
         this.$bitmap.bitmapData.dispose();
         this.removeChild(this.$bitmap);
         this.$bitmap = null;
         this.removeChild(this.$text);
         this.$text = null;
         this.parent.removeChild(this);
      }
   }
}

