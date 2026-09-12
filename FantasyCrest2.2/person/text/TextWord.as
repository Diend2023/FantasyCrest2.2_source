package person.text
{
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   
   public class TextWord extends Sprite
   {
      
      private var $text:TextField;
      
      public var $textForm:TextFormat;
      
      private var $color:uint;
      
      public function TextWord(param1:String, param2:Point, param3:Rectangle)
      {
         super();
         this.$textForm = new TextFormat();
         this.$text = new TextField();
         this.addChild(this.$text);
         this.$text.x = param2.x;
         this.$text.y = param2.y;
         this.$text.autoSize = TextFieldAutoSize.CENTER;
         this.$text.wordWrap = true;
         this.$text.multiline = true;
         this.$text.text = param1;
         this.$text.width = param3.width;
         this.$text.height = param3.height;
         this.setColor = 16711680;
         this.$text.mouseEnabled = false;
      }
      
      public function setInput() : *
      {
         this.$text.type = TextFieldType.INPUT;
         this.$text.mouseEnabled = true;
      }
      
      public function set setColor(param1:uint) : void
      {
         this.$textForm.color = param1;
         this.$color = param1;
         this.$text.setTextFormat(this.$textForm);
      }
      
      public function CG() : void
      {
         this.removeChild(this.$text);
         this.$textForm = null;
         this.$text = null;
         this.parent.removeChild(this);
      }
      
      public function get text() : String
      {
         return this.$text.text;
      }
      
      public function set setText(param1:String) : void
      {
         this.$text.text = param1;
         this.setColor = this.$color;
      }
      
      public function getText() : TextField
      {
         return this.$text;
      }
   }
}

