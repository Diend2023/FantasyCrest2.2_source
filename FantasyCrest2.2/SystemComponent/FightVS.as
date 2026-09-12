package SystemComponent
{
   import SystemEye.*;
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import flash.utils.*;
   
   public class FightVS extends Sprite
   {
      
      private var $1P:Bitmap;
      
      private var $2P:Bitmap;
      
      private var $3P:Bitmap;
      
      private var $4P:Bitmap;
      
      private var _p1:Bitmap;
      
      private var _p2:Bitmap;
      
      private var $VS:Bitmap;
      
      private var $BJ:Bitmap;
      
      private var $time:int = 80;
      
      public var $boolean:Boolean = false;
      
      private var _isLoaded:Boolean = false;
      
      public function FightVS()
      {
         super();
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = false;
         this.$1P = new Bitmap();
         this.$2P = new Bitmap();
         this.$3P = new Bitmap();
         this.$4P = new Bitmap();
         this.$VS = new Bitmap();
         this.$BJ = new Bitmap(new BitmapData(700,500,false,0));
         var _loc5_:* = "";
         var _loc6_:* = "";
         if(GameData.$mode !== "TwoAll")
         {
            _loc1_ = GameData.$roleSelectArray[0];
            _loc2_ = GameData.$roleSelectArray[1];
         }
         else
         {
            _loc1_ = GameData.$roleSelectArray[0];
            _loc2_ = GameData.$roleSelectArray[1];
            _loc5_ = GameData.$fightArray[GameData.$fightTo];
            _loc6_ = GameData.$fightArray[GameData.$fightTo + 1];
            this.$3P.bitmapData = DataStorage.readImg("FightVS" + _loc5_);
            this.$4P.bitmapData = DataStorage.readImg("FightVS" + _loc6_);
         }
         this.$1P.bitmapData = DataStorage.readImg("FightVS" + _loc1_);
         this.$2P.bitmapData = DataStorage.readImg("FightVS" + _loc2_);
         this.$VS.bitmapData = DataStorage.readImg("VS");
         if(this.$1P.bitmapData)
         {
         }
         this.$BJ.alpha = 0.8;
         this.$1P.x = -700;
         this.$2P.x = 1400;
         this.$2P.scaleX = -1;
         this.$VS.scaleX = 3;
         this.$VS.scaleY = 3;
         this.$1P.y = 500 - this.$1P.height;
         this.$2P.y = 500 - this.$2P.height;
         this.alpha = 0;
         if(GameData.$mode == "1PALL" || GameData.$mode == "SZ" || GameData.$mode == "TwoAll")
         {
            _loc3_ = new TextField();
            this.addChild(_loc3_);
            _loc3_.width = 700;
            _loc3_.height = 40;
            _loc4_ = GameData.$mode == "TwoAll";
            _loc3_.text = "挑战难度：" + Main.NDString() + "    当前挑战进度：" + GameData.$fightTo / (_loc4_ ? 2 : 1) + "/" + GameData.$fightArray.length / (_loc4_ ? 2 : 1) + "   已积累战力：" + GameScore.getScore();
            _loc3_.setTextFormat(new TextFormat(null,null,16763904));
         }
         setTimeout(SystemEvent.startLoad,1000);
         var _loc7_:* = new RoleVs();
         this.addChild(_loc7_);
         if(GameData.$mode !== "TwoAll")
         {
            _loc7_.r1.scaleX = 1.5;
            _loc7_.r1.scaleY = 1.5;
            _loc7_.r3.scaleX = 1.5;
            _loc7_.r3.scaleY = 1.5;
            _loc7_.r1.x += _loc7_.r1.width / 5;
            _loc7_.r1.y -= 50;
            _loc7_.r3.y -= 50;
            _loc7_.r2.visible = false;
            _loc7_.r3.x += _loc7_.r1.width / 5;
            _loc7_.r4.visible = false;
            _loc7_.r1.addChildAt(this.$1P,1);
            _loc7_.r3.addChildAt(this.$2P,1);
            this.$1P.scaleX = 0.5;
            this.$1P.x = 0;
            this.$1P.y = 0;
            this.$2P.scaleX = 0.5;
            this.$1P.scaleY = 0.5;
            this.$2P.scaleY = 0.5;
            this.$2P.x = 0;
            this.$2P.y = 0;
            this.$1P.mask = _loc7_.r1.maskSprite;
            this.$2P.mask = _loc7_.r3.maskSprite;
            this.getData(_loc7_.r1.state,_loc1_);
            this.getData(_loc7_.r3.state,_loc2_);
         }
         else
         {
            _loc7_.r1.addChildAt(this.$1P,1);
            _loc7_.r2.addChildAt(this.$2P,1);
            _loc7_.r3.addChildAt(this.$3P,1);
            _loc7_.r4.addChildAt(this.$4P,1);
            this.$1P.scaleX = 0.5;
            this.$3P.scaleX = 0.5;
            this.$3P.scaleY = 0.5;
            this.$4P.scaleX = 0.5;
            this.$4P.scaleY = 0.5;
            this.$2P.scaleX = 0.5;
            this.$1P.scaleY = 0.5;
            this.$2P.scaleY = 0.5;
            this.$1P.x = 0;
            this.$1P.y = 0;
            this.$2P.x = 0;
            this.$2P.y = 0;
            this.$4P.x = 0;
            this.$4P.y = 0;
            this.$3P.x = 0;
            this.$3P.y = 0;
            this.$1P.mask = _loc7_.r1.maskSprite;
            this.$2P.mask = _loc7_.r2.maskSprite;
            this.$3P.mask = _loc7_.r3.maskSprite;
            this.$4P.mask = _loc7_.r4.maskSprite;
            this.getData(_loc7_.r1.state,_loc1_);
            this.getData(_loc7_.r2.state,_loc2_);
            this.getData(_loc7_.r3.state,_loc5_);
            this.getData(_loc7_.r4.state,_loc6_);
         }
         this.addEventListener(Event.ENTER_FRAME,this.Frame);
      }
      
      private function getData(param1:GameRoleSelectState, param2:String) : void
      {
         var _loc3_:* = GameData.getRoleFromTarget(param2);
         param1.li.gotoAndStop(int(100 * int(_loc3_.@li) / int(GameData.max_data[2])));
         param1.fang.gotoAndStop(int(100 * int(_loc3_.@fang) / int(GameData.max_data[3])));
         param1.speed.gotoAndStop(int(100 * int(_loc3_.@speed) / int(GameData.max_data[4])));
         param1.hp.gotoAndStop(int(100 * int(_loc3_.@hp) / int(GameData.max_data[0])));
         param1.mp.gotoAndStop(int(100 * int(_loc3_.@mp) / int(GameData.max_data[1])));
         (param1.parent["nameText"] as TextField).text = _loc3_.@name;
      }
      
      private function Frame(param1:Event) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         this.$VS.x = 700 / 2 - this.$VS.width / 2;
         this.$VS.y = 500 / 2 - this.$VS.height / 2;
         if(this.$VS.scaleX > 1.25)
         {
            this.$VS.scaleX -= 0.25;
            this.$VS.scaleY -= 0.25;
         }
         else
         {
            this.$VS.x += Math.random() * 10 - 5;
            this.$VS.y += Math.random() * 10 - 5;
         }
         if(this.alpha < 1)
         {
            this.alpha += 0.1;
         }
         if(this._p1)
         {
            this._p2.x -= (this._p2.x - 600) * 0.2;
            this._p1.x -= (this._p1.x + 150) * 0.2;
         }
         if(this.$boolean && this.$time > 0)
         {
            _loc2_ = this;
            _loc3_ = this.$time - 1;
            _loc2_.$time = _loc3_;
         }
         else if(this.$boolean)
         {
            SystemEvent.PlayGame();
         }
      }
      
      public function CG() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,this.Frame);
         if(this.$1P.bitmapData !== null)
         {
            this.$1P.bitmapData.dispose();
         }
         this.$1P = null;
         if(this.$2P.bitmapData !== null)
         {
            this.$2P.bitmapData.dispose();
         }
         this.$2P = null;
         if(this.$VS.bitmapData !== null)
         {
            this.$VS.bitmapData.dispose();
         }
         this.$VS = null;
         if(this.$BJ.bitmapData !== null)
         {
            this.$BJ.bitmapData.dispose();
         }
         this.$BJ = null;
         this.parent.removeChild(this);
      }
   }
}

