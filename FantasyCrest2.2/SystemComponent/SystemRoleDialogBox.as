package SystemComponent
{
   import SystemAPI.*;
   import SystemEye.*;
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   
   public class SystemRoleDialogBox extends Sprite
   {
      
      private var $bitmap:Bitmap;
      
      private var $text:TextField;
      
      private var $head:TextField;
      
      private var $color:TextFormat;
      
      private var $ailgn:TextFormat;
      
      private var $stage:Object;
      
      public var $api:DialogBox;
      
      private var $array:Array;
      
      public function SystemRoleDialogBox(param1:String)
      {
         super();
         this.$bitmap = new Bitmap();
         this.$text = new TextField();
         this.$head = new TextField();
         this.$color = new TextFormat();
         this.$ailgn = new TextFormat();
         this.$api = new DialogBox();
         this.$array = new Array();
         this.visible = false;
         this.addChild(this.$bitmap);
         this.$bitmap.bitmapData = DataStorage.readImg(param1);
         this.$color.color = "0xffffff";
         this.$ailgn.align = TextFormatAlign.CENTER;
         this.$ailgn.color = "0xFFCC00";
         this.addChild(this.$head);
         this.$head.mouseEnabled = false;
         this.$head.x = 51;
         this.$head.y = 10;
         this.$head.width = 150;
         this.$head.height = 26;
         this.addChild(this.$text);
         this.$text.mouseEnabled = false;
         this.$text.x = 22;
         this.$text.y = 53;
         this.$text.width = 655;
         this.$text.height = 124;
         this.y = 450 - this.$bitmap.height;
      }
      
      public function setKeyboard(param1:Object) : void
      {
         this.$stage = param1;
         this.$api.init(this,this.$head,this.$color,this.$text,this.$ailgn,this.$array);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.$api.Down);
         this.$api.dragBoolean = false;
      }
      
      public function set toVisible(param1:Boolean) : void
      {
         if(param1)
         {
            this.$stage.addChild(this);
         }
         else
         {
            this.visible = false;
         }
      }
   }
}

