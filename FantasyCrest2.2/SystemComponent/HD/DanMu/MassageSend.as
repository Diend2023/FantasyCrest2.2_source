package SystemComponent.HD.DanMu
{
   import SystemEye.GameData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   import person.p2p.P2POnline;
   
   public class MassageSend extends Sprite
   {
      
      public static var massageSend:MassageSend;
      
      public static var showBoolean:Boolean;
      
      private static var time:int = 0;
      
      public var $text:TextField;
      
      private var $sprite:Sprite;
      
      private var setText:TextFormat;
      
      public function MassageSend()
      {
         super();
         this.setText = new TextFormat();
         showBoolean = false;
         this.$sprite = new Sprite();
         this.$sprite.graphics.beginFill(7829367,0.6);
         this.$sprite.graphics.drawRect(0,0,250,24);
         this.$sprite.graphics.endFill();
         this.addChild(this.$sprite);
         this.$sprite.y -= 3;
         this.setText.color = 16777215;
         this.$text = new TextField();
         this.$text.type = TextFieldType.INPUT;
         this.addChild(this.$text);
         this.$text.width = this.$sprite.width;
         this.$text.height = this.$sprite.height;
         this.$text.setTextFormat(this.setText);
         this.$text.maxChars = 50;
      }
      
      public function init() : void
      {
         this.x = stage.stageWidth / 2 - this.width / 2;
         this.y = stage.stageHeight - 150;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.key);
         this.addEventListener(Event.ENTER_FRAME,this.frame);
      }
      
      public function frame(param1:Event) : void
      {
         time -= time <= 0 ? 0 : 1;
      }
      
      public function set top(param1:Boolean) : void
      {
         if(param1)
         {
            MassageSend.massageSend.parent.addChild(MassageSend.massageSend);
            if(GameData.$keyBoolean)
            {
               stage.focus = MassageSend.massageSend.$text;
            }
         }
         MassageSend.massageSend.$text.setTextFormat(this.setText);
         GameData.$keyBoolean = !param1;
         MassageSend.massageSend.visible = param1;
         MassageSend.showBoolean = param1;
      }
      
      private function key(param1:KeyboardEvent) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = null;
         if(param1.keyCode == Keyboard.ENTER)
         {
            MassageSend.showBoolean = !MassageSend.showBoolean;
            if(!MassageSend.showBoolean && this.$text.length !== 0 && time <= 0)
            {
               _loc2_ = Math.random() * 400 + 24;
               _loc3_ = Math.random() * 2 + 2;
               P2POnline.sendPlayGame({
                  "massage":this.$text.text,
                  "type":"DANMU",
                  "y":_loc2_,
                  "speed":_loc3_,
                  "random":int(Math.random() * 99999)
               });
               _loc4_ = new DanMu(this.$text.text,_loc2_,_loc3_);
               stage.addChild(_loc4_);
               this.$text.text = "";
               time = 80;
            }
         }
      }
   }
}

