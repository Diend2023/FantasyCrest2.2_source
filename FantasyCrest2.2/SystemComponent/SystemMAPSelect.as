package SystemComponent
{
   import SystemEye.ComponentResourcesManage;
   import SystemEye.DataStorage;
   import SystemEye.GameData;
   import SystemEye.SystemEvent;
   import SystemEye.SystemLoadType;
   import flash.display.Bitmap;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import p2p2016.P2PData;
   
   public class SystemMAPSelect extends Sprite
   {
      
      private var to:int = 0;
      
      private var $select:Shape = new Shape();
      
      public var $boolean:Boolean = false;
      
      private var $ob:Array = new Array();
      
      public function SystemMAPSelect()
      {
         super();
         this.$select.graphics.beginFill(16777215,0.5);
         this.$select.graphics.drawRect(0,0,40,40);
         this.$select.graphics.drawRect(5,5,30,30);
         this.addChild(this.$select);
      }
      
      private function Frame(param1:Event) : void
      {
         if(this.$boolean)
         {
            if(this.alpha > 0)
            {
               this.alpha -= 0.2;
            }
            else
            {
               this.CG();
               if(SystemEvent.getP2PType() != "")
               {
                  P2PData.p2p.send("onPlayGame",GameData.$mapArray[this.to]);
                  SystemEvent.onPlayGame([GameData.$mapArray[this.to]]);
               }
               else
               {
                  SystemEvent.select({"name":GameData.$roleSelectArray[0]});
               }
            }
         }
         if(this.alpha > 0)
         {
            this.$select.x -= (this.$select.x - this.$ob[this.to].x) * 0.2;
            this.$select.y -= (this.$select.y - this.$ob[this.to].y) * 0.2;
         }
      }
      
      private function Key(param1:KeyboardEvent) : void
      {
         SystemMucisPlay.$atTimeArray = [];
         if(!this.$boolean)
         {
            switch(param1.keyCode)
            {
               case Keyboard.A:
                  SystemMucisPlay.setMusic = "Fight_MOVE";
                  --this.to;
                  break;
               case Keyboard.D:
                  SystemMucisPlay.setMusic = "Fight_MOVE";
                  ++this.to;
                  break;
               case Keyboard.W:
               case Keyboard.S:
                  break;
               case Keyboard.J:
                  SystemMucisPlay.setMusic = "Fight_SELECT";
                  SystemLoadType.loadMAP(GameData.$mapArray[this.to]);
                  this.$boolean = true;
                  break;
               case Keyboard.K:
            }
         }
         if(this.to < 0)
         {
            this.to = 0;
         }
         else if(this.to >= this.$ob.length)
         {
            this.to = this.$ob.length - 1;
         }
      }
      
      public function span() : void
      {
         var _loc1_:* = undefined;
         this.addEventListener(Event.ENTER_FRAME,this.Frame);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.Key);
         for(_loc1_ in GameData.$mapArray)
         {
            this.$ob[_loc1_] = new Bitmap(DataStorage.readImg("MAP" + GameData.$mapArray[_loc1_]));
            this.addChildAt(this.$ob[_loc1_],0);
            this.$ob[_loc1_].x = 50 * _loc1_;
            this.$ob[_loc1_].name = GameData.$mapArray[_loc1_];
         }
         this.x = stage.stageWidth / 2 - this.width / 2;
         this.y = stage.stageHeight / 2 - this.height / 2;
         this.$select.x = this.$ob[this.to].x;
         this.$select.y = this.$ob[this.to].y;
      }
      
      public function CG() : void
      {
         var _loc1_:* = undefined;
         this.removeEventListener(Event.ENTER_FRAME,this.Frame);
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.Key);
         for(_loc1_ in this.$ob)
         {
            this.$ob[_loc1_].bitmapData.dispose();
            this.removeChild(this.$ob[_loc1_]);
            this.$ob[_loc1_] = null;
         }
         this.$ob = null;
         this.parent.removeChild(this);
         ComponentResourcesManage.$Ob["SelectMAP"] = null;
      }
   }
}

