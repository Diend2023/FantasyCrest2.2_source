package SystemComponent
{
   import SystemEye.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.ui.*;
   import person.darw.bitmap.*;
   
   public class SystemSelectBox extends Sprite
   {
      
      private var $BJ:Bitmap;
      
      private var $RoleSprite:Sprite;
      
      private var $RoleButton:SystemButton;
      
      private var $RoleObButton:Object;
      
      private var $mode:String = "";
      
      private var $PData:BitmapData;
      
      private var $xml:XML;
      
      private var $1PString:String = "OFF";
      
      private var $2PString:String = "OFF";
      
      private var $1P:Bitmap;
      
      private var $2P:Bitmap;
      
      private var $1PTo:int = 0;
      
      private var $2PTo:int;
      
      private var $TwoBoolean:Boolean = false;
      
      private var $timeOver:int = 40;
      
      public var $boolean:Boolean = false;
      
      private var selectV:int = 3;
      
      public function SystemSelectBox()
      {
         super();
         this.$RoleObButton = new Object();
         this.$1P = new Bitmap();
         this.$2P = new Bitmap();
         this.$2PTo = GameData.$roleArray.length - 1;
         this.UI();
      }
      
      private function UI() : void
      {
         this.$BJ = new Bitmap(new BitmapData(700,500,false,16777215));
         this.$BJ.alpha = 0.5;
         this.addChild(this.$BJ);
         this.$RoleSprite = new Sprite();
         this.addChild(this.$RoleSprite);
         this.selectButton();
      }
      
      public function set selectMode(param1:String) : void
      {
         this.$mode = param1;
         GameData.$roleSelectArray = [];
         this.$PData = DataStorage.readImg("1P2P3P4P");
         this.$xml = XML(DataStorage.readText("1P2P3P4P"));
         this.$1P.bitmapData = BitmapDarw.xmlForBitmapData(this.$PData,this.$xml.SubTexture[0]);
         this.$2P.bitmapData = BitmapDarw.xmlForBitmapData(this.$PData,this.$xml.SubTexture[1]);
         this.$RoleSprite.addChild(this.$1P);
         this.$RoleSprite.addChild(this.$2P);
         this.$1PString = "OFF";
         this.$2PString = "OFF";
         switch(this.$mode)
         {
            case "1PALL":
               this.$1PString = "NO";
               GameData.$roleSelectArray[1] = "-1";
               break;
            case "1PSB":
            case "1PCOM":
            case "COMCOM":
               this.$TwoBoolean = true;
               this.$1PString = "NO";
               break;
            case "1P2P":
               this.$1PString = "NO";
               this.$2PString = "NO";
         }
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.Key);
         this.addEventListener(Event.ENTER_FRAME,this.Frame);
      }
      
      public function Key(param1:KeyboardEvent) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(GameData.$keyBoolean)
         {
            if(!this.$boolean)
            {
               switch(param1.keyCode)
               {
                  case Keyboard.A:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.D:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.W:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.S:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.J:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.K:
               }
               switch(param1.keyCode)
               {
                  case Keyboard.RIGHT:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.LEFT:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.UP:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.DOWN:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.NUMPAD_1:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.NUMPAD_2:
                     if(this.$2PString == "OK")
                     {
                     }
               }
               switch(param1.keyCode)
               {
                  case Keyboard.A:
                     if(this.$1PString == "NO")
                     {
                        _loc2_ = this;
                        _loc3_ = this.$1PTo - 1;
                        _loc2_.$1PTo = _loc3_;
                     }
                     break;
                  case Keyboard.D:
                     if(this.$1PString == "NO")
                     {
                        _loc2_ = this;
                        _loc3_ = this.$1PTo + 1;
                        _loc2_.$1PTo = _loc3_;
                     }
                     break;
                  case Keyboard.W:
                     if(this.$1PString == "NO")
                     {
                        this.$1PTo -= this.selectV;
                     }
                     break;
                  case Keyboard.S:
                     if(this.$1PString == "NO")
                     {
                        this.$1PTo += this.selectV;
                     }
                     break;
                  case Keyboard.J:
                     if(this.$1PString == "NO")
                     {
                        SystemMucisPlay.setMusic = "Fight_SELECT";
                        GameData.$roleSelectArray[0] = GameData.$roleArray[this.$1PTo];
                        this.$1PString = "OK";
                        if(this.$TwoBoolean)
                        {
                           this.$2PString = "NO";
                        }
                     }
                     break;
                  case Keyboard.K:
                     if(this.$1PString == "OK")
                     {
                        GameData.$roleSelectArray[0] = "";
                        this.$1PString = "NO";
                     }
               }
            }
            if(this.$1PTo < 0)
            {
               this.$1PTo = 0;
            }
            else if(this.$1PTo > GameData.$roleArray.length - 1)
            {
               this.$1PTo = GameData.$roleArray.length - 1;
            }
            if(this.$2PTo < 0)
            {
               this.$2PTo = 0;
            }
            else if(this.$2PTo > GameData.$roleArray.length - 1)
            {
               this.$2PTo = GameData.$roleArray.length - 1;
            }
            if(GameData.$roleSelectArray[0] is String && GameData.$roleSelectArray[0] !== "" && GameData.$roleSelectArray[1] !== "" && GameData.$roleSelectArray[1] is String)
            {
               this.$boolean = true;
            }
         }
      }
      
      public function toKey(param1:int) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(GameData.$keyBoolean)
         {
            if(!this.$boolean)
            {
               switch(param1)
               {
                  case Keyboard.A:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.D:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.W:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.S:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.J:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.K:
               }
               switch(param1)
               {
                  case Keyboard.RIGHT:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.LEFT:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.UP:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.DOWN:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.NUMPAD_1:
                     if(this.$2PString == "NO")
                     {
                     }
                     break;
                  case Keyboard.NUMPAD_2:
                     if(this.$2PString == "OK")
                     {
                     }
               }
               switch(param1)
               {
                  case Keyboard.A:
                     if(this.$1PString == "NO")
                     {
                        _loc2_ = this;
                        _loc3_ = this.$1PTo - 1;
                        _loc2_.$1PTo = _loc3_;
                     }
                     break;
                  case Keyboard.D:
                     if(this.$1PString == "NO")
                     {
                        _loc2_ = this;
                        _loc3_ = this.$1PTo + 1;
                        _loc2_.$1PTo = _loc3_;
                     }
                     break;
                  case Keyboard.W:
                     if(this.$1PString == "NO")
                     {
                        this.$1PTo -= this.selectV;
                     }
                     break;
                  case Keyboard.S:
                     if(this.$1PString == "NO")
                     {
                        this.$1PTo += this.selectV;
                     }
                     break;
                  case Keyboard.J:
                     if(this.$1PString == "NO")
                     {
                        SystemMucisPlay.setMusic = "Fight_SELECT";
                        GameData.$roleSelectArray[0] = GameData.$roleArray[this.$1PTo];
                        this.$1PString = "OK";
                        if(this.$TwoBoolean)
                        {
                           this.$2PString = "NO";
                        }
                     }
                     break;
                  case Keyboard.K:
                     if(this.$1PString == "OK")
                     {
                        GameData.$roleSelectArray[0] = "";
                        this.$1PString = "NO";
                     }
               }
            }
            if(this.$1PTo < 0)
            {
               this.$1PTo = 0;
            }
            else if(this.$1PTo > GameData.$roleArray.length - 1)
            {
               this.$1PTo = GameData.$roleArray.length - 1;
            }
            if(this.$2PTo < 0)
            {
               this.$2PTo = 0;
            }
            else if(this.$2PTo > GameData.$roleArray.length - 1)
            {
               this.$2PTo = GameData.$roleArray.length - 1;
            }
            if(GameData.$roleSelectArray[0] is String && GameData.$roleSelectArray[0] !== "" && GameData.$roleSelectArray[1] !== "" && GameData.$roleSelectArray[1] is String)
            {
               this.$boolean = true;
            }
         }
      }
      
      private function Frame(param1:Event) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         SystemMucisPlay.$atTimeArray = [];
         var _loc2_:* = new Point(this.$RoleObButton[GameData.$roleArray[this.$1PTo]].x - 5,this.$RoleObButton[GameData.$roleArray[this.$1PTo]].y + 25);
         var _loc3_:* = new Point(this.$RoleObButton[GameData.$roleArray[this.$2PTo]].x + 15,this.$RoleObButton[GameData.$roleArray[this.$2PTo]].y + 25);
         if(this.$1P.x !== _loc2_.x || this.$1P.y !== _loc2_.y)
         {
            this.$1P.x = _loc2_.x;
            this.$1P.y = _loc2_.y;
            SystemMucisPlay.setMusic = "Fight_MOVE";
         }
         if(this.$2P.x !== _loc3_.x || this.$2P.y !== _loc3_.y)
         {
            this.$2P.x = _loc3_.x;
            this.$2P.y = _loc3_.y;
            SystemMucisPlay.setMusic = "Fight_MOVE";
         }
         if(this.$1PString == "OFF")
         {
            this.$1P.visible = false;
         }
         else
         {
            this.$1P.visible = true;
            if(this.$1PString == "NO")
            {
               if(this.$1P.bitmapData !== null)
               {
                  this.$1P.bitmapData.dispose();
               }
               this.$1P.bitmapData = BitmapDarw.xmlForBitmapData(this.$PData,this.$xml.SubTexture[0]);
               this.SS(this.$1P);
            }
            else
            {
               this.$1P.bitmapData = BitmapDarw.xmlForBitmapData(this.$PData,this.$xml.SubTexture[0]);
            }
         }
         if(this.$2PString == "OFF")
         {
            this.$2P.visible = false;
         }
         else
         {
            this.$2P.visible = true;
            if(this.$2PString == "NO")
            {
               if(this.$2P.bitmapData !== null)
               {
                  this.$2P.bitmapData.dispose();
               }
               this.$2P.bitmapData = BitmapDarw.xmlForBitmapData(this.$PData,this.$xml.SubTexture[1]);
               this.SS(this.$2P);
            }
            else
            {
               this.$2P.bitmapData = BitmapDarw.xmlForBitmapData(this.$PData,this.$xml.SubTexture[1]);
            }
         }
         if(this.$timeOver > 0 && this.$boolean)
         {
            _loc4_ = this;
            _loc5_ = this.$timeOver - 1;
            _loc4_.$timeOver = _loc5_;
            if(this.alpha > 0 && this.$timeOver < 10)
            {
               this.alpha -= 0.1;
            }
         }
         else if(this.$timeOver <= 0)
         {
            this.CG();
            if(GameData.$mode !== "1PALL")
            {
               ComponentResourcesManage.askResources("SelectMAP","SelectMAP",null);
            }
            else
            {
               SystemLoadType.loadMAP("map3");
               SystemEvent.select({"name":GameData.$roleSelectArray[0]});
            }
         }
      }
      
      public function code(param1:String) : void
      {
         var _loc2_:* = false;
         switch(param1)
         {
            case "67657978737765":
               _loc2_ = true;
               GameData.$roleSelectArray[0] = "CaoNiMa";
               this.$1PString = "OK";
               break;
            case "686578737765666573":
               _loc2_ = true;
               GameData.$roleSelectArray[0] = "DaBai";
               this.$1PString = "OK";
               break;
            case "78867169687985":
               _loc2_ = true;
               GameData.$roleSelectArray[0] = "GeDouJia";
               this.$1PString = "OK";
         }
         if(_loc2_)
         {
            SystemMucisPlay.setMusic = "Fight_SELECT";
         }
      }
      
      private function SS(param1:Bitmap) : void
      {
         param1.bitmapData.draw(param1,null,SystemColor.bodyColorTwo,BlendMode.SCREEN);
      }
      
      private function selectButton() : void
      {
         var _loc3_:* = undefined;
         var _loc4_:BitmapData = null;
         var _loc5_:BitmapData = null;
         var _loc1_:Number = Math.sqrt(GameData.$roleArray.length);
         if(int(_loc1_) == Math.sqrt(GameData.$roleArray.length))
         {
            this.selectV = int(_loc1_) + 1;
         }
         else
         {
            this.selectV = _loc1_;
         }
         var _loc2_:int = 0;
         for(_loc3_ in GameData.$roleArray)
         {
            _loc4_ = DataStorage.readImg("Hred" + GameData.$roleArray[_loc3_]);
            _loc5_ = new BitmapData(40,40);
            _loc5_.draw(_loc4_,null,null,null,new Rectangle(5,5,35,35));
            this.$RoleObButton[GameData.$roleArray[_loc3_]] = new SystemButton([_loc4_,_loc5_,_loc4_],null);
            this.$RoleObButton[GameData.$roleArray[_loc3_]].x = 50 * _loc2_ - int(_loc2_ / this.selectV) * (this.selectV * 50);
            this.$RoleObButton[GameData.$roleArray[_loc3_]].y = 50 * int(_loc2_ / this.selectV);
            this.$RoleSprite.addChild(this.$RoleObButton[GameData.$roleArray[_loc3_]]);
            this.$RoleObButton[GameData.$roleArray[_loc3_]].mouseEnabled = false;
            this.$RoleObButton[GameData.$roleArray[_loc3_]].setFunction(SystemEvent.select,{"name":GameData.$roleArray[_loc3_]});
            _loc2_++;
         }
         this.$RoleSprite.x = 700 / 2 - this.$RoleSprite.width / 2;
         this.$RoleSprite.y = 450 / 2 - this.$RoleSprite.height / 2;
      }
      
      public function CG() : void
      {
         var _loc1_:* = undefined;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.Key);
         this.removeEventListener(Event.ENTER_FRAME,this.Frame);
         this.$1P.bitmapData.dispose();
         this.$2P.bitmapData.dispose();
         this.$PData.dispose();
         this.$RoleSprite.removeChild(this.$1P);
         this.$RoleSprite.removeChild(this.$2P);
         for(_loc1_ in this.$RoleObButton)
         {
            if(this.$RoleObButton[_loc1_] !== null)
            {
               this.$RoleObButton[_loc1_].CG();
               this.$RoleObButton[_loc1_] = null;
            }
         }
         this.$BJ.bitmapData.dispose();
         this.removeChild(this.$RoleSprite);
         this.$RoleSprite = null;
         this.parent.removeChild(this);
         ComponentResourcesManage.$Ob["SelectRole"] = null;
      }
   }
}

