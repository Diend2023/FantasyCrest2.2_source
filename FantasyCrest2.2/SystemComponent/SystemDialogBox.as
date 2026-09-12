package SystemComponent
{
   import SystemAPI.*;
   import SystemEye.*;
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   
   public class SystemDialogBox extends Sprite
   {
      
      private var $bitmap:Bitmap;
      
      private var $text:TextField;
      
      private var $head:TextField;
      
      private var $color:TextFormat;
      
      private var $ailgn:TextFormat;
      
      private var $stage:Object;
      
      public var $api:DialogBox;
      
      private var $array:Array;
      
      public function SystemDialogBox(param1:String)
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
         this.$head.x = 0;
         this.$head.y = 2;
         this.$head.width = this.$bitmap.width;
         this.$head.height = 26;
         this.addChild(this.$text);
         this.$text.wordWrap = true;
         this.$text.mouseEnabled = false;
         this.$text.x = 8;
         this.$text.y = 25;
         this.$text.width = 267;
         this.$text.height = 72;
         var _loc2_:* = new TextField();
         this.addChild(_loc2_);
         _loc2_.text = "--- 按J键继续 ---";
         _loc2_.y = this.height - 24;
         _loc2_.x = this.width / 2 - _loc2_.textWidth / 2;
         _loc2_.mouseEnabled = false;
         _loc2_.setTextFormat(this.$ailgn);
      }
      
      public function setKeyboard(param1:Object, param2:String = "欢迎来到游戏之路 - 幻想纹章") : void
      {
         this.$stage = param1;
         this.$api.init(this,this.$head,this.$color,this.$text,this.$ailgn,this.$array);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.$api.Down);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.$api.toUp);
         this.$api.dragBoolean = false;
         this.x = stage.stageWidth / 2 - this.$bitmap.width / 2;
         this.y = stage.stageHeight / 2 - this.$bitmap.height / 2;
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

