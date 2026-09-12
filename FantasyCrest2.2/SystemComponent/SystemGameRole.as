package SystemComponent
{
   import SystemAPI.SkillMath;
   import SystemComponent.Word.QZ;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.DataStorage;
   import SystemEye.GameData;
   import SystemEye.NSGameData;
   import SystemEye.SystemEvent;
   import SystemEye.SystemState;
   import eye.Draw.BitmapDataDraw;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.Shape;
   import flash.events.KeyboardEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   import flash.utils.getDefinitionByName;
   import game2016.FPSMath;
   import game2016.FrameEffectManage;
   import game2016.RoleData;
   import game2016.RoleParsing;
   import game2016.SkillEffectManage;
   import gif2016.GIFManage;
   import p2p2016.P2PData;
   import person.darw.clear.BitmapClear;
   
   public class SystemGameRole extends Bitmap
   {
      
      public var $target:String = "";
      
      public var $class:Class;
      
      private var $xml:XML;
      
      public var $bitmapData:BitmapData;
      
      public var $x:int = 300;
      
      public var $y:int = 300;
      
      public var $fps:int = 2;
      
      public var $fpsMath:int = 0;
      
      public var $actArray:Array;
      
      public var $keyArray:Array;
      
      public var $hitBoolean:Boolean = false;
      
      public var $jumpMath:Number = 0;
      
      public var $jumpBoolean:Boolean = false;
      
      public var $jumpFuckInt:int = 1;
      
      public var $jumpForFuckBoolean:Boolean = false;
      
      private var $fuckBoolean:Boolean = false;
      
      public var $jumpNumMath:int = 1;
      
      public var $troops:int = -1;
      
      public var $skillFrameInt:int = -1;
      
      public var $ob:Object;
      
      public var $skillCD:Object;
      
      public var $runKey:int = 0;
      
      public var $runEnter:int = 0;
      
      public var $lv:int = 10;
      
      public var $hit_num:Object = 0;
      
      public var $shouColor:Array;
      
      public var $fangCD:int = 0;
      
      public var isBreak:Boolean = false;
      
      public var $keyP:int = -1;
      
      public var $mode:String = "D";
      
      public var $modeString:String = "";
      
      public var $hpID:int = -1;
      
      public var fuckFlyCount:int = 0;
      
      public var $fuck:int = 25;
      
      public var $jump:int = 18;
      
      private var $jumpFu:Number = 1.3;
      
      private var $jumpFight:int = 1;
      
      public var $speed:int = 4;
      
      public var $runSpeed:int = 4;
      
      public var $jumpNum:int = 2;
      
      private var $gravity:Number = 1.25;
      
      public var $hpMax:int = 1500;
      
      private var $hp:cint;
      
      public var $mpMax:int = 600;
      
      public var $mp:int = 100;
      
      public var $fang:Number = 0;
      
      public var $god:int = 0;
      
      private var $reaction:int = 1;
      
      private var $reactionMath:int = 0;
      
      public var $stoic:int = 40;
      
      public var hurtThan:Number = 1;
      
      public var $rigid:int = 0;
      
      public var $tx:int = 0;
      
      public var $ty:int = 0;
      
      public var $fuz:int = 0;
      
      public var $ding:int = 0;
      
      private var lian:int = 0;
      
      public var _ex:int = 0;
      
      private var _ex_math:int = 0;
      
      private var hitkey:int = -1;
      
      public var qz:int = 1;
      
      public var qzFrameString:String = "none";
      
      public var $p2pmath:int = 6;
      
      public var roleData:RoleData;
      
      private var _xuanfu:int = 0;
      
      public var $bit:Bitmap;
      
      public var $dit:Bitmap;
      
      public var $fit:Bitmap;
      
      public var roleTarget:String = "";
      
      private var $frameStringCopy:String = "";
      
      public var $down:Boolean = false;
      
      public var $up:Boolean = false;
      
      public var $key:int = 0;
      
      public var $keyString:String = "";
      
      public var $keyTime:int = 0;
      
      public var $GameAttBoolean:Boolean = false;
      
      private var $runTime:int = 0;
      
      public var $frameInt:int = 0;
      
      private var $act:int = 0;
      
      public var $scaleX:int = 1;
      
      public var $scaleY:int = 1;
      
      private var $drawBoolean:Boolean = false;
      
      public var $frameString:String = "待机";
      
      public var $stopUpdateframeBoolean:Boolean = false;
      
      private var $jiuScaleX:int = 1;
      
      public var hitStop:int = 0;
      
      public var $fx:int = 0;
      
      public var $fy:int = 0;
      
      private var $hpShape:Shape;
      
      private var $aiRuning:String = "待机";
      
      private var $aiThinking:String = "平静";
      
      private var $seeRole:SystemGameRole;
      
      private var $see:int = 9900;
      
      private var $think:int = 80;
      
      private var $seeThink:int = 0;
      
      private var $jumpForFang:Boolean = false;
      
      public var $txTime:int = 0;
      
      public var $left:Boolean = false;
      
      public var $right:Boolean = false;
      
      private var $toRunBoolean:Boolean = false;
      
      private var $jx:int = 0;
      
      private var $jy:int = 0;
      
      private var xInt:int = 0;
      
      private var yInt:int = 0;
      
      private var widthInt:int = 0;
      
      private var heightInt:int = 0;
      
      private var pxy:Point;
      
      private var _effectiveFPS:int = 0;
      
      private var _fightFrame:int = 0;
      
      private var colorBoolean:Boolean = false;
      
      private var _currentFrame:int = 0;
      
      public var $fightOB:Object;
      
      public var $hrutVisible:Boolean = true;
      
      public function SystemGameRole(param1:String)
      {
         super();
         this.$actArray = new Array();
         this.$keyArray = new Array(Keyboard.A,Keyboard.D,Keyboard.S,Keyboard.W,Keyboard.J,Keyboard.K,Keyboard.L,Keyboard.U,Keyboard.I,Keyboard.O,Keyboard.P);
         this.$ob = new Object();
         this.$skillCD = new Object();
         this.$hp = new cint(1500);
         this.$bit = new Bitmap(new BitmapData(4,4,false,16711680));
         this.$dit = new Bitmap(new BitmapData(4,20,false,268435200));
         this.$fit = new Bitmap();
         this.pxy = new Point();
         this.$fightOB = new Object();
         this.$target = param1;
      }
      
      public function set rigid(param1:int) : void
      {
         this.$rigid = param1;
         this.frameString = "受伤";
         this.$hitBoolean = false;
         this.$frameInt = 0;
         this.$txTime = this.$rigid * 0.8;
      }
      
      public function sethp(param1:int) : *
      {
         this.$hp.value = param1;
         if(this.$hp.value > this.$hpMax)
         {
            this.$hp.value = this.$hpMax;
         }
      }
      
      public function get gethp() : int
      {
         return this.$hp.value;
      }
      
      public function get Dam() : int
      {
         return this.$fuck + this.$ob["BUFFFuck"];
      }
      
      public function get Speed() : int
      {
         return this.$speed + this.$ob["BUFFSpeed"];
      }
      
      public function chanageRoleTarget(param1:String) : void
      {
         this.roleTarget = param1;
         var _loc2_:* = DataStorage.readImg(this.roleTarget);
         if(_loc2_ != null)
         {
            this.$bitmapData = DataStorage.readImg(this.roleTarget);
         }
         var _loc3_:* = DataStorage.readText(this.roleTarget);
         this.xml = new XML(_loc3_);
         if(this.$xml.@type != undefined && this.$xml.@type.indexOf("role_pkg") != -1)
         {
            this.roleData = new RoleData(_loc3_);
            this.$class = RoleParsing;
         }
         else
         {
            this.roleData = null;
            if(this.name.indexOf("Freak") == -1)
            {
               this.$class = getDefinitionByName("SystemComponent.Word.Role." + this.$target) as Class;
            }
            else
            {
               this.$class = getDefinitionByName("SystemComponent.Word.Freak." + this.$target) as Class;
            }
         }
      }
      
      public function init() : void
      {
         this.BUFFInit();
         this.chanageRoleTarget(this.$target);
         this.bitmapData = BitmapDataDraw.xmlForBitmapData(this.$bitmapData,this.$xml.act[0].SubTexture[0]);
         this.smoothing = true;
         if(this.name == "role1" || this.name == "role2")
         {
            if(SystemP2P.$FightOK)
            {
               if(this.name == "role1" && SystemEvent.getP2PType() == "fight")
               {
                  this.$keyP = 1;
                  this.$keyArray = GameData["$keyArray" + 1 + "P"];
                  stage.addEventListener(KeyboardEvent.KEY_DOWN,this.Down);
                  stage.addEventListener(KeyboardEvent.KEY_UP,this.Up);
               }
               else if(this.name == "role2" && SystemEvent.getP2PType() == "accept")
               {
                  this.$keyP = 1;
                  this.$keyArray = GameData["$keyArray" + 1 + "P"];
                  stage.addEventListener(KeyboardEvent.KEY_DOWN,this.Down);
                  stage.addEventListener(KeyboardEvent.KEY_UP,this.Up);
               }
               else
               {
                  this.$keyP = -1;
               }
            }
            else
            {
               this.$keyP = int(this.name.charAt(4));
               if(!SystemP2P.$FightOK)
               {
                  this.$keyArray = GameData["$keyArray" + this.$keyP + "P"];
               }
               else
               {
                  this.$keyP = 1;
                  this.$keyArray = GameData["$keyArray" + 1 + "P"];
               }
               stage.addEventListener(KeyboardEvent.KEY_DOWN,this.Down);
               stage.addEventListener(KeyboardEvent.KEY_UP,this.Up);
            }
         }
         try
         {
            if(this.$xml.@type != undefined && this.$xml.@type.indexOf("role_pkg") != -1)
            {
               this.$class = RoleParsing;
            }
            else if(this.name.indexOf("Freak") == -1)
            {
               this.$class = getDefinitionByName("SystemComponent.Word.Role." + this.$target) as Class;
            }
            else
            {
               this.$class = getDefinitionByName("SystemComponent.Word.Freak." + this.$target) as Class;
            }
         }
         catch(e:Error)
         {
         }
         this.parent.addChild(this.$bit);
         this.parent.addChild(this.$dit);
         this.parent.addChild(this.$fit);
         this.$bit.visible = false;
         this.$dit.visible = false;
         this.$fit.visible = false;
         this.setNengLi();
      }
      
      public function setNengLi() : void
      {
         var _loc1_:Object = GameData.$roleNengLi[this.$target];
         var _loc2_:Number = 0;
         if((GameData.$mode == "1PALL" || GameData.$mode == "SZ" || GameData.$mode == "TwoAll") && this.$keyP == -1)
         {
            switch(GameData.$lv)
            {
               case 95:
                  _loc2_ = 0;
                  break;
               case 80:
                  _loc2_ = 0.05;
                  break;
               case 65:
                  _loc2_ = 0.1;
                  break;
               case 50:
                  _loc2_ = 0.15;
                  break;
               case 35:
                  _loc2_ = 0.2;
            }
         }
         if(_loc1_)
         {
            this.$jump = _loc1_.jump - 5;
            this.$speed = _loc1_.speed;
            if(this.name !== "role1" && this.name !== "role2")
            {
               this.$fuck = int(_loc1_.li) * this.$lv / 10 + _loc1_.li * _loc2_;
               this.$hpMax = int(_loc1_.hp) * this.$lv / 10 + _loc1_.hp * _loc2_;
               this.$hp.value = this.$hpMax;
               this.$mpMax = _loc1_.mp * this.$lv / 10;
               this.$mp = _loc1_.mp * 0.2;
               this.$fang = int(_loc1_.fang) * this.$lv / 10 / 25;
            }
            else if(GameData.ns_select !== "none")
            {
               this.$lv = NSGameData.lv * 10;
               this.$fuck = int(_loc1_.li) * NSGameData.lv;
               this.$hpMax = int(_loc1_.hp) * NSGameData.lv;
               this.$hp.value = this.$hpMax;
               this.$mpMax = int(_loc1_.mp) * NSGameData.lv;
               this.$mp = _loc1_.mp * 0.2;
               this.$fang = int(_loc1_.fang) * NSGameData.lv / 25;
               if(NSGameData.hp !== -1)
               {
                  this.$hp.value = NSGameData.hp;
                  this.$mp = NSGameData.mp;
               }
            }
            else
            {
               this.$fuck = int(_loc1_.li) * this.$lv / 10;
               this.$hpMax = int(_loc1_.hp) * this.$lv / 10;
               this.$hp.value = this.$hpMax;
               this.$mpMax = _loc1_.mp * this.$lv / 10;
               this.$mp = _loc1_.mp * 0.2;
               this.$fang = int(_loc1_.fang) * this.$lv / 10 / 25;
            }
            if(_loc1_.hurt != null && _loc1_.hurt > 0)
            {
               this.hurtThan = _loc1_.hurt;
            }
         }
      }
      
      public function DZ() : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc1_:* = ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["bit"];
         while(!this.endRed(_loc1_))
         {
            _loc2_ = this;
            _loc3_ = this.$y + 1;
            _loc2_.$y = _loc3_;
         }
         while(this.$bit.bitmapData.hitTest(new Point(this.$x,this.$y),85,_loc1_.bitmapData,new Point(_loc1_.x,_loc1_.y),1))
         {
            _loc2_ = this;
            _loc3_ = this.$y - 1;
            _loc2_.$y = _loc3_;
            this.$jumpBoolean = false;
         }
      }
      
      public function mapDZ() : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc1_:* = ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["bit"];
         while(this.$bit.bitmapData.hitTest(new Point(this.$x,this.$y),85,_loc1_.bitmapData,new Point(_loc1_.x,_loc1_.y),1))
         {
            _loc2_ = this;
            _loc3_ = this.$y - 1;
            _loc2_.$y = _loc3_;
            this.$jumpBoolean = false;
         }
      }
      
      public function set xml(param1:XML) : void
      {
         var _loc2_:* = 0;
         this.$xml = param1;
         this.$actArray = [];
         while(_loc2_ < this.$xml.act.length())
         {
            this.$actArray.push(String(this.$xml.act[_loc2_].@name));
            _loc2_++;
         }
         this.$frameInt = 0;
         this.stopSkill();
         this.frameString = "待机";
      }
      
      public function get xml() : XML
      {
         return this.$xml;
      }
      
      public function set frameString(param1:String) : void
      {
         if(param1 == "行走" && this.$actArray.indexOf(param1) == -1)
         {
            param1 = "跑步";
            this.$toRunBoolean = true;
         }
         if(this.$actArray.indexOf(param1) !== -1)
         {
            if(this.$frameString !== param1 && !this.$hitBoolean || param1 == "受伤" || this.$frameStringCopy == "落下" && param1 == "跳跃")
            {
               if(this.$frameStringCopy == "落下" && param1 == "跳跃")
               {
                  this.stopSkill();
               }
               this.$frameString = param1;
            }
         }
      }
      
      private function enterFrameString() : void
      {
         if(this.$mode == "K")
         {
            this.$jumpBoolean = false;
         }
         if(this.$modeString !== "")
         {
            this.frameString = this.$modeString;
            this.$modeString = "";
         }
         if(this.$frameStringCopy !== this.$frameString)
         {
            this.$frameInt = 0;
            this.$fpsMath = 0;
            this.$fuckBoolean = false;
         }
      }
      
      public function set fuckY(param1:int) : void
      {
         if(param1 > 8)
         {
            param1 -= 5;
         }
         if(param1 < 0)
         {
            this.$jumpForFuckBoolean = true;
         }
         this.$jumpBoolean = true;
         this.$hitBoolean = false;
         this.$down = false;
         var _loc2_:* = this;
         var _loc3_:* = this.$y - 1;
         _loc2_.$y = _loc3_;
         this.$y -= FPSMath.getFPSScale(this) * param1 + 5;
         if(-param1 / this.$gravity > 0)
         {
            this.$jumpMath += -param1 / this.$gravity;
         }
         else
         {
            this.$jumpMath = -param1 / this.$gravity;
         }
      }
      
      public function getMP(param1:String) : int
      {
         var s:* = param1;
         try
         {
            if(this.$class["$ob"][s]["mp"] == undefined)
            {
               return 0;
            }
            return this.$class["$ob"][s]["mp"];
         }
         catch(e:Error)
         {
            return 0;
         }
         return (0); //
      }
      
      public function set hitString(param1:String) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc2_:* = null;
         var _loc3_:* = 0;
         if(this.$actArray.indexOf(param1) !== -1)
         {
            if(this.roleData)
            {
               RoleParsing.$ob = this.roleData.skillData;
            }
            if(!this.$class.$ob)
            {
               return;
            }
            _loc2_ = "FUCK";
            if(this.$class.$ob[param1] !== undefined)
            {
               if(this.$class.$ob[param1].mode !== undefined)
               {
                  _loc2_ = this.$class.$ob[param1].mode;
               }
            }
            if(this.$frameString !== param1 && param1 !== "none" && !this.$jumpForFuckBoolean && (_loc2_ == "DK" || this.$frameString !== "受伤"))
            {
               if(param1 == "空中攻击" && this.$ob.kong !== true || param1 !== "空中攻击")
               {
                  if(int(this.$skillCD[param1]) <= 0)
                  {
                     _loc3_ = this.getMP(param1);
                     if(this.$mp >= _loc3_ || GameData.$mode == "1PSB")
                     {
                        _loc4_ = this;
                        _loc5_ = this._ex + 1;
                        _loc4_._ex = _loc5_;
                        this._ex_math = 36;
                        this.$mp -= _loc3_;
                        if(this.$class !== null)
                        {
                           if(this.$class.$ob[param1] !== undefined)
                           {
                              if(!Main.IS_TEST || !Main.IS_PREVIEW)
                              {
                                 this.$skillCD[param1] = this.$class.$ob[param1].cd * 36;
                              }
                              if(this.$skillCD[param1] > 0)
                              {
                                 this.$skillCD.setPropertyIsEnumerable(param1,true);
                              }
                              if(this.$class.$ob[param1].key == Keyboard.O)
                              {
                                 ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                                    "fps":1,
                                    "mode":"tx",
                                    "name":"GameAtt",
                                    "fuck":0,
                                    "time":0,
                                    "role":this,
                                    "x":this.$x,
                                    "y":this.$y,
                                    "scaleX":this.$scaleX * 1.2
                                 });
                                 GameData.$KaTime = 20;
                              }
                           }
                        }
                        if(param1 !== "普通攻击" && param1 !== "空中攻击")
                        {
                           this.$keyString = "";
                           this.$ob["Di"] = null;
                        }
                        if(param1 == "空中攻击" && this.$jumpFuckInt > 0)
                        {
                           _loc4_ = this;
                           _loc5_ = this.$jumpFuckInt - 1;
                           _loc4_.$jumpFuckInt = _loc5_;
                           this.drFrameString = param1;
                        }
                        else if(param1 !== "空中攻击")
                        {
                           this.drFrameString = param1;
                           this.$txTime = 0;
                        }
                        if(param1 == "瞬步")
                        {
                           ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                              "name":"shun",
                              "fuck":0,
                              "time":0,
                              "role":this,
                              "x":this.$x,
                              "y":this.$y,
                              "scaleX":this.$scaleX * 0.7
                           });
                        }
                        this.$rigid = 0;
                        this.$tx = 0;
                        this.$txTime = 0;
                        this._fightFrame = -1;
                        if(this.$left)
                        {
                           this.$scaleX = -1;
                        }
                        else if(this.$right)
                        {
                           this.$scaleX = 1;
                        }
                     }
                  }
               }
            }
            else if(param1 == "起身")
            {
               this.drFrameString = "起身";
            }
         }
         this.$GameAttBoolean = false;
      }
      
      public function set drFrameString(param1:String) : void
      {
         this.$frameString = param1;
         this.$frameInt = 0;
         this.$fpsMath = 0;
         this.$reactionMath = 0;
         this.$hitBoolean = true;
         this.$fuckBoolean = false;
         this.$skillFrameInt = -1;
      }
      
      private function GameAtt(param1:uint, param2:String) : void
      {
         if(param2 !== "none")
         {
            this.$GameAttBoolean = param1 == Keyboard.O || param1 == Keyboard.NUMPAD_6;
         }
         else
         {
            this.$GameAttBoolean = false;
         }
      }
      
      private function Down(param1:KeyboardEvent) : void
      {
         var _loc2_:String = null;
         if(GIFManage.isSaveing())
         {
            return;
         }
         if(SystemEvent.getP2PType() == "accept")
         {
            if(P2PData.p2p)
            {
               P2PData.p2p.send("onAcceptKeyDown",param1.keyCode);
            }
            return;
         }
         if(GameData.$fightBoolean && param1.keyCode !== this.$key && this.$keyP != -1)
         {
            switch(param1.keyCode)
            {
               case this.$keyArray[0]:
                  this.$keyString += "A";
                  this.$keyTime = 10;
                  break;
               case this.$keyArray[1]:
                  this.$keyString += "D";
                  this.$keyTime = 10;
                  break;
               case this.$keyArray[2]:
                  this.$keyString += "S";
                  this.$keyTime = 10;
                  break;
               case this.$keyArray[3]:
                  this.$keyString += "W";
                  this.$keyTime = 10;
            }
            if(!this.$hitBoolean)
            {
               switch(param1.keyCode)
               {
                  case this.$keyArray[0]:
                     this.$left = true;
                     this.$runTime = 15;
                     this.toRun(this.$keyArray[0]);
                     this.$runEnter = 20;
                     break;
                  case this.$keyArray[1]:
                     this.$right = true;
                     this.$runTime = 15;
                     this.toRun(this.$keyArray[1]);
                     this.$runEnter = 20;
                     break;
                  case this.$keyArray[2]:
                     this.$down = true;
                     break;
                  case this.$keyArray[3]:
                     this.$up = true;
               }
            }
            else
            {
               switch(param1.keyCode)
               {
                  case this.$keyArray[0]:
                     this.$left = true;
                     break;
                  case this.$keyArray[1]:
                     this.$right = true;
                     break;
                  case this.$keyArray[2]:
                     this.$down = true;
                     break;
                  case this.$keyArray[3]:
                     this.$up = true;
               }
            }
            if(!this.$hitBoolean)
            {
               this.qz = 1;
               this.qzFrameString = "none";
               this.hitkey = -1;
               this.lian = 0;
               switch(param1.keyCode)
               {
                  case this.$keyArray[10]:
                  case this.$keyArray[9]:
                     this.qz = 0;
                  case this.$keyArray[4]:
                  case this.$keyArray[6]:
                  case this.$keyArray[7]:
                  case this.$keyArray[8]:
                  case this.$keyArray[10]:
                     _loc2_ = "none";
                     _loc2_ = this.getSkillName(GameData.$keyArray1P[GameData["$keyArray" + this.$keyP + "P"].indexOf(param1.keyCode)]);
                     this.GameAtt(param1.keyCode,_loc2_);
                     this.hitString = _loc2_;
                     this.hitkey = param1.keyCode;
                     break;
                  case this.$keyArray[5]:
                     if(this.$frameString !== "受伤" && this.$ob.aimode !== "K")
                     {
                        if(!this.$down)
                        {
                           this.goJump();
                        }
                        else if(!this.$jumpBoolean)
                        {
                           this.$y += FPSMath.getFPSScale(this) * 20;
                           this.$jumpMath = 5;
                           this.$jumpBoolean = true;
                        }
                     }
                     else if(this.$ob.aimode == "K")
                     {
                        this.$jumpForFang = true;
                     }
               }
            }
            else if(this.$hitBoolean && (this.hitkey == param1.keyCode || param1.keyCode == Keyboard.K) && param1.keyCode !== Keyboard.P)
            {
               this.lian = 9;
               switch(param1.keyCode)
               {
                  case this.$keyArray[10]:
                  case this.$keyArray[9]:
                     this.qz = 0;
                  case this.$keyArray[4]:
                  case this.$keyArray[6]:
                  case this.$keyArray[7]:
                  case this.$keyArray[8]:
                     if(this.$frameString == "普通攻击")
                     {
                        _loc2_ = "none";
                        _loc2_ = this.getSkillName(GameData.$keyArray1P[GameData["$keyArray" + this.$keyP + "P"].indexOf(param1.keyCode)]);
                        if(_loc2_ !== "普通攻击" && _loc2_ !== "空中攻击" && (_loc2_ !== "瞬步" || this.$target == "MoHuaJianXin") && _loc2_ !== this.$frameStringCopy)
                        {
                           --this.qz;
                           this.hitStopClear();
                           this.goQZ();
                           this.GameAtt(param1.keyCode,_loc2_);
                           this.hitString = _loc2_;
                           this.hitkey = param1.keyCode;
                           this.qzFrameString = _loc2_;
                        }
                        if(String(this.$xml.act[this.$act].SubTexture[this.$frameInt].@asA) == "stop")
                        {
                           this.lian = 0;
                           ++this.$frameInt;
                           this.$reactionMath = 0;
                           this.$stopUpdateframeBoolean = true;
                        }
                     }
                     else if(this.$frameInt >= 5 && this.qz > 0)
                     {
                        _loc2_ = this.getSkillName(GameData.$keyArray1P[GameData["$keyArray" + this.$keyP + "P"].indexOf(param1.keyCode)]);
                        if(_loc2_ !== "普通攻击" && _loc2_ !== "空中攻击" && _loc2_ !== "瞬步" && _loc2_ !== this.$frameStringCopy)
                        {
                           --this.qz;
                           this.hitStopClear();
                           this.goQZ();
                           this.GameAtt(param1.keyCode,_loc2_);
                           this.hitString = _loc2_;
                           this.hitkey = param1.keyCode;
                           this.qzFrameString = _loc2_;
                        }
                     }
                     break;
                  case this.$keyArray[5]:
                     if(this.$frameString !== "受伤" && this.$frameString == "普通攻击")
                     {
                        this.goJump();
                     }
               }
            }
            else if(this.qz > 0 && this.$frameInt >= 3 && param1.keyCode !== Keyboard.P)
            {
               switch(param1.keyCode)
               {
                  case this.$keyArray[9]:
                     this.qz = 0;
                  case this.$keyArray[4]:
                  case this.$keyArray[6]:
                  case this.$keyArray[7]:
                  case this.$keyArray[8]:
                  case this.$keyArray[10]:
                     _loc2_ = this.getSkillName(GameData.$keyArray1P[GameData["$keyArray" + this.$keyP + "P"].indexOf(param1.keyCode)]);
                     if(_loc2_ !== "普通攻击" && _loc2_ !== "空中攻击" && _loc2_ !== "瞬步")
                     {
                        --this.qz;
                        this.hitStopClear();
                        this.goQZ();
                        this.GameAtt(param1.keyCode,_loc2_);
                        this.hitString = _loc2_;
                        this.hitkey = param1.keyCode;
                        this.qzFrameString = _loc2_;
                     }
               }
            }
            this.$key = param1.keyCode;
         }
      }
      
      private function getSkillName(param1:int) : String
      {
         var _loc3_:* = undefined;
         if(this.roleData)
         {
            RoleParsing.$ob = this.roleData.skillData;
         }
         var _loc2_:* = "none";
         if(this.$jumpBoolean)
         {
            _loc3_ = this.$class;
            _loc2_ = _loc3_["getKeyJumpString"](this,param1);
         }
         else if(!this.$jumpBoolean)
         {
            _loc3_ = this.$class;
            _loc2_ = _loc3_["getKeyString"](this,param1);
         }
         return _loc2_;
      }
      
      public function hitStopClear() : void
      {
         this.hitStop = 0;
      }
      
      public function goQZ(param1:Number = 1, param2:Number = 2.55, param3:Number = 2.55, param4:Boolean = true) : void
      {
         this.alpha = 1;
         var _loc5_:* = new QZ(this.bitmapData.clone(),param1 * 10,param2 * 10,param3 * 10,param4);
         _loc5_.x = this.x;
         _loc5_.y = this.y;
         this.parent.addChildAt(_loc5_,1);
      }
      
      public function toDown(param1:int) : void
      {
         if(GameData.$fightBoolean)
         {
            switch(param1)
            {
               case this.$keyArray[0]:
                  this.$keyString += "A";
                  this.$keyTime = 10;
                  break;
               case this.$keyArray[1]:
                  this.$keyString += "D";
                  this.$keyTime = 10;
                  break;
               case this.$keyArray[2]:
                  this.$keyString += "S";
                  this.$keyTime = 10;
                  break;
               case this.$keyArray[3]:
                  this.$keyString += "W";
                  this.$keyTime = 10;
            }
            if(!this.$hitBoolean)
            {
               if(this.$key !== param1)
               {
                  switch(param1)
                  {
                     case this.$keyArray[0]:
                     case this.$keyArray[1]:
                     case this.$keyArray[2]:
                     case this.$keyArray[3]:
                     case this.$keyArray[4]:
                     case this.$keyArray[6]:
                     case this.$keyArray[7]:
                     case this.$keyArray[8]:
                     case this.$keyArray[9]:
                     case this.$keyArray[10]:
                     case this.$keyArray[5]:
                  }
               }
               switch(param1)
               {
                  case this.$keyArray[0]:
                  case this.$keyArray[1]:
                  case this.$keyArray[2]:
                  case this.$keyArray[3]:
                  case this.$keyArray[4]:
                  case this.$keyArray[6]:
                  case this.$keyArray[7]:
                  case this.$keyArray[8]:
                  case this.$keyArray[9]:
                  case this.$keyArray[10]:
                     break;
                  case this.$keyArray[5]:
                     if(this.$frameString !== "受伤" && this.$ob.aimode !== "K")
                     {
                        if(this.$down)
                        {
                           if(this.$jumpBoolean)
                           {
                           }
                        }
                     }
               }
            }
            else if(this.$hitBoolean)
            {
               if(this.$key !== GameData.$keyArray1P[GameData["$keyArray" + 1 + "P"].indexOf(param1)])
               {
                  switch(param1)
                  {
                     case this.$keyArray[0]:
                     case this.$keyArray[1]:
                     case this.$keyArray[2]:
                     case this.$keyArray[3]:
                     case this.$keyArray[4]:
                     case this.$keyArray[6]:
                     case this.$keyArray[7]:
                     case this.$keyArray[8]:
                     case this.$keyArray[9]:
                     case this.$keyArray[10]:
                     case this.$keyArray[5]:
                  }
               }
               switch(param1)
               {
                  case this.$keyArray[0]:
                  case this.$keyArray[1]:
                  case this.$keyArray[2]:
                  case this.$keyArray[3]:
                     break;
                  case this.$keyArray[4]:
                  case this.$keyArray[4]:
                  case this.$keyArray[6]:
                  case this.$keyArray[7]:
                  case this.$keyArray[8]:
                  case this.$keyArray[9]:
                  case this.$keyArray[10]:
                     if(this.$frameString == "普通攻击")
                     {
                        if(String(this.$xml.act[this.$act].SubTexture[this.$frameInt].@asA) == "stop")
                        {
                        }
                     }
                     else if(String(this.$xml.act[this.$act].SubTexture[this.$frameInt].@asA) == "stop")
                     {
                     }
                     break;
                  case this.$keyArray[5]:
                     if(this.$frameString !== "受伤" && this.$frameString == "普通攻击")
                     {
                     }
               }
            }
            this.$key = param1;
         }
      }
      
      public function toUp(param1:int) : void
      {
         this.$key = -1;
         switch(param1)
         {
            case this.$keyArray[0]:
            case this.$keyArray[1]:
            case this.$keyArray[2]:
            case this.$keyArray[3]:
         }
         switch(param1)
         {
            case this.$keyArray[0]:
            case this.$keyArray[1]:
            case this.$keyArray[2]:
            case this.$keyArray[3]:
            case this.$keyArray[5]:
         }
      }
      
      private function Up(param1:KeyboardEvent) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:SkillShow = null;
         if(GIFManage.isSaveing())
         {
            return;
         }
         if(SystemEvent.getP2PType() == "accept")
         {
            if(P2PData.p2p)
            {
               P2PData.p2p.send("onAcceptKeyUp",param1.keyCode);
            }
            return;
         }
         this.$key = -1;
         if(SystemState.$socketBoolean)
         {
            switch(param1.keyCode)
            {
               case this.$keyArray[0]:
               case this.$keyArray[1]:
               case this.$keyArray[2]:
               case this.$keyArray[3]:
                  SystemWebSocket.app(param1.keyCode,"up");
            }
         }
         else
         {
            switch(param1.keyCode)
            {
               case this.$keyArray[0]:
                  this.$left = false;
                  this.$runKey = this.$keyArray[0];
                  break;
               case this.$keyArray[1]:
                  this.$right = false;
                  this.$runKey = this.$keyArray[1];
                  break;
               case this.$keyArray[2]:
                  this.$down = false;
                  this.$fangCD = 36;
                  break;
               case this.$keyArray[3]:
                  this.$up = false;
                  if(GameData.ns_select !== "none")
                  {
                     for(_loc2_ in GameData.ns_end)
                     {
                        _loc3_ = GameData.ns_end[_loc2_];
                        if(Math.abs(_loc3_.$x - this.$x) < 30 && Math.abs(_loc3_.$y - this.$y) < 30)
                        {
                           if(_loc3_.$ob.to !== -1)
                           {
                              GameData.$fightBoolean = false;
                              GameData.ns_ob[GameData.ns_select]["card"] = _loc3_.$ob.to;
                              NSGameData.$tox = _loc3_.$ob.tox ? int(_loc3_.$ob.tox) : -1;
                              GameData.ns_end = null;
                              GameData.$mapTarget = _loc3_.name;
                              ComponentResourcesManage.$word.$map.updateMap();
                              ComponentResourcesManage.$word.again();
                           }
                           else
                           {
                              GameData.ns_select = "over";
                              ComponentResourcesManage.$word.CG();
                              ComponentResourcesManage.$stage.$box.$api.addShow("#000000","&GameData.$mode - " + GameData.$mode);
                           }
                        }
                     }
                  }
                  break;
               case this.$keyArray[5]:
                  this.$jumpForFang = false;
            }
         }
      }
      
      public function SocketDown(param1:int) : void
      {
         switch(param1)
         {
            case this.$keyArray[0]:
            case this.$keyArray[1]:
            case this.$keyArray[2]:
            case this.$keyArray[3]:
            case this.$keyArray[4]:
            case this.$keyArray[6]:
            case this.$keyArray[7]:
            case this.$keyArray[8]:
            case this.$keyArray[9]:
            case this.$keyArray[10]:
               break;
            case this.$keyArray[5]:
               if(this.$jumpNumMath > 0 && this.$frameString !== "受伤")
               {
                  if(this.$jumpForFuckBoolean)
                  {
                  }
               }
         }
         if(this.$hitBoolean)
         {
            switch(param1)
            {
               case this.$keyArray[0]:
               case this.$keyArray[1]:
               case this.$keyArray[2]:
               case this.$keyArray[3]:
                  break;
               case this.$keyArray[4]:
               case this.$keyArray[4]:
               case this.$keyArray[6]:
               case this.$keyArray[7]:
               case this.$keyArray[8]:
               case this.$keyArray[9]:
               case this.$keyArray[10]:
                  if(this.$frameString == "普通攻击")
                  {
                     if(String(this.$xml.act[this.$act].SubTexture[this.$frameInt].@asA) == "stop")
                     {
                     }
                  }
                  else if(String(this.$xml.act[this.$act].SubTexture[this.$frameInt].@asA) == "stop")
                  {
                  }
                  break;
               case this.$keyArray[5]:
            }
         }
      }
      
      public function SocketUp(param1:int) : void
      {
         switch(param1)
         {
            case Keyboard.A:
               this.$left = false;
               this.$runKey = this.$keyArray[0];
               break;
            case Keyboard.D:
               this.$right = false;
               this.$runKey = this.$keyArray[1];
               break;
            case this.$keyArray[2]:
               this.$down = false;
               this.frameString = "待机";
               break;
            case this.$keyArray[3]:
               this.$up = false;
         }
      }
      
      public function toFrame(param1:Object = null) : void
      {
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(SystemEvent.getP2PType() == "accept")
         {
            if(param1)
            {
               if(this.roleTarget != param1.data.roleTarget)
               {
                  this.chanageRoleTarget(param1.data.roleTarget);
               }
               this.$fuckBoolean = true;
               this.$frameString = param1.data.frameString;
               this.to(param1.data.frame);
               this.$scaleX = param1.data.scaleX;
               this.$scaleY = param1.data.scaleY;
               this.$god = param1.data.god;
               this.$stoic = param1.data.stoic;
               this.actID();
               this.updateAct();
            }
            return;
         }
         if(GameData.$KaBoolean)
         {
            return;
         }
         var _loc4_:* = new Point(this.$x,this.$y);
         var _loc5_:* = ComponentResourcesManage.$word.midpoint();
         if(this.hitStop > 0)
         {
            _loc6_ = this;
            _loc7_ = this.hitStop - 1;
            _loc6_.hitStop = _loc7_;
            this.updatePoint(_loc5_,_loc4_);
            return;
         }
         if(this.$frameString == "落地" && (this.$left || this.$right))
         {
            this.stopSkill();
         }
         this.$jiuScaleX = this.$scaleX;
         if(this.$class)
         {
            _loc2_ = ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["bit"];
            if(!GameData.$KaBoolean)
            {
               this.BUFFInit();
               if(!this.$hitBoolean)
               {
                  this._ex_math -= this._ex_math > 0 ? 1 : 0;
                  if(this._ex_math <= 0)
                  {
                     this._ex = 0;
                  }
               }
               if(this.$frameString == "待机")
               {
                  this.filters = [];
               }
               if(this.$keyTime > 0)
               {
                  _loc6_ = this;
                  _loc7_ = this.$keyTime - 1;
                  _loc6_.$keyTime = _loc7_;
               }
               else
               {
                  this.$keyString = "";
               }
               this.$frameStringCopy = this.$frameString;
               if(this.$runEnter > 0)
               {
                  _loc6_ = this;
                  _loc7_ = this.$runEnter - 1;
                  _loc6_.$runEnter = _loc7_;
               }
               else
               {
                  this.$runKey = -1;
               }
               _loc6_ = this.$ob;
               if(this.$ob["StopCD"] == undefined || this.$ob["StopCD"] <= 0)
               {
                  this.cd();
               }
               else
               {
                  _loc7_ = "StopCD";
                  _loc8_ = _loc6_["StopCD"] - 1;
                  _loc6_[_loc7_] = _loc8_;
               }
               if(this.$keyP == -1 && GameData.$fightBoolean && (Boolean(int(_loc6_.ai > 0) || !SystemP2P.$FightOK) || Boolean(this.name != "role2" && this.name != "role1")))
               {
                  this.ai();
               }
               else if(!GameData.$fightBoolean)
               {
                  this.$down = false;
                  this.run = "none";
               }
               this.updateFrame();
               if(this.$stoic <= 0)
               {
                  this.downBUFF();
               }
               else
               {
                  this.$tx = 0;
                  this.$txTime = 0;
                  _loc6_.fangX = 0;
               }
               if(this.$rigid <= 0 && !this.$jumpForFuckBoolean && this.$frameString !== "起身")
               {
                  if((this.$down && this.$mode == "D" || this.$jumpForFang && this.$mode == "K") && !this.$hitBoolean)
                  {
                     this.frameString = "防御";
                  }
                  else if(this.$txTime <= 0)
                  {
                     if(!this.$hitBoolean && this.$rigid <= 0 && !this.$jumpForFang || this.$frameString == "落下")
                     {
                        this.runing();
                     }
                     else
                     {
                        this.actRuning();
                        if(this.$class !== null)
                        {
                           _loc6_ = this.$class;
                           _loc6_["getSkillBuff"](this);
                           if(this.$frameString == "空中攻击" && !this.$jumpBoolean)
                           {
                              this.stopSkill();
                           }
                        }
                     }
                  }
               }
               if(this.$y < 5)
               {
                  this.$y = 5;
               }
               this.upBUFF();
               try
               {
                  this.updateAct();
               }
               catch(e:Error)
               {
               }
               if(this.$mode == "D")
               {
                  this.hit();
               }
               else
               {
                  if(this.$jumpForFang && this.$rigid <= 0 && !this.$jumpForFuckBoolean && this.$frameString !== "起身")
                  {
                     this.frameString = "防御";
                  }
                  else
                  {
                     if(this.$down)
                     {
                        this.$y += FPSMath.getFPSScale(this) * 2;
                     }
                     else if(this.$up)
                     {
                        this.$y -= FPSMath.getFPSScale(this) * 2;
                     }
                     if(this.lidi(150))
                     {
                        this.$y += FPSMath.getFPSScale(this) * 2;
                     }
                  }
                  if(this.endRed(_loc2_))
                  {
                     while(this.$bit.bitmapData.hitTest(new Point(this.$bit.x,this.$bit.y),85,_loc2_.bitmapData,new Point(_loc2_.x,_loc2_.y),1))
                     {
                        --this.$bit.y;
                        this.$jumpBoolean = false;
                     }
                     if(this.$txTime !== 0 && (this.$frameString == "跳跃" || this.$frameString == "降落"))
                     {
                        this.$txTime = 0;
                     }
                     if(!this.$jumpBoolean)
                     {
                        this.$y = this.$bit.y;
                     }
                     if(this.$jumpForFuckBoolean)
                     {
                        this.getUP();
                     }
                  }
               }
               if(!this.$jumpBoolean && this.$frameString !== "受伤")
               {
                  this.$jumpFuckInt = this.$jumpFight;
                  this.$jumpNumMath = this.$jumpNum;
                  this.$tx = 0;
               }
               if(!this.$hitBoolean && this.$hp.value > 0)
               {
                  this.alpha = 1;
               }
               if(!this.$jumpBoolean || this.$mode == "K")
               {
                  this.$fuz -= this.$fuz > 0 ? 1 : 0;
               }
               if(this.$hp.value <= 0)
               {
                  this.$hp.value = 0;
                  if(!this.$jumpBoolean && this.$frameStringCopy !== "起身" && this.$frameString !== "受伤")
                  {
                     this.hitString = "起身";
                  }
                  if(this.$frameStringCopy == "起身")
                  {
                     this.$frameInt = 0;
                  }
               }
            }
            else
            {
               if(this.$jumpForFuckBoolean)
               {
                  this.$y += FPSMath.getFPSScale(this) * this.$jumpMath > 0 ? 1 : -1;
               }
               if(this.$rigid > 0)
               {
                  this.$x += FPSMath.getFPSScale(this) * this.$tx > 0 ? 1 : -1;
               }
               while(this.endRed(_loc2_))
               {
                  _loc6_ = this;
                  _loc7_ = this.$y - 1;
                  _loc6_.$y = _loc7_;
               }
            }
            this.enterFrameString();
            this.actID();
            this.updateAct();
            if(this.$rigid > 1 && this.$shouColor !== null)
            {
               _loc3_ = new ColorMatrixFilter(this.$shouColor);
               this.filters = this.colorBoolean ? [] : [_loc3_];
               this.colorBoolean = !this.colorBoolean;
            }
            else
            {
               this.$shouColor = null;
            }
            if(this.$class["PasvSkill"] is Function)
            {
               _loc6_ = this.$class;
               _loc6_["PasvSkill"](this);
            }
            this.updatePoint(_loc5_,_loc4_);
            if(!this.$jumpForFuckBoolean && this.$jumpBoolean)
            {
               if(this.$frameString == "受伤" && this.$jumpMath > 0)
               {
                  if(this.$rigid > 0)
                  {
                     this.$jumpMath = -1;
                  }
                  else
                  {
                     this.frameString = "待机";
                  }
                  this.$rigid -= 5;
               }
            }
            if(SystemP2P.$FightOK)
            {
            }
         }
         if(this.$hpID == -1)
         {
            this.drawHP();
         }
      }
      
      private function updatePoint(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         try
         {
            _loc3_ = ComponentResourcesManage.$word.midpoint();
            if(ComponentResourcesManage.$word.$map.$scale <= 1)
            {
               if(this.$x < _loc3_.x - 350)
               {
                  this.$x = _loc3_.x - 350;
               }
               else if(this.$x > _loc3_.x + 350)
               {
                  this.$x = _loc3_.x + 350;
               }
            }
            if(ComponentResourcesManage.$word.$map.$scale <= 1.2 && _loc3_.h >= param1.h && _loc3_.h > SystemState.$stageHeight)
            {
               this.$y = param2.y;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public function lidi(param1:int) : Boolean
      {
         var _loc2_:* = param1;
         var _loc3_:* = ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["bit"] as Bitmap;
         while(param1 > -_loc2_)
         {
            param1--;
            if(_loc3_.bitmapData.getPixel(this.$x,this.$y + param1) !== 0)
            {
               return false;
            }
         }
         return true;
      }
      
      private function drawHP() : void
      {
         if(!this.$hpShape)
         {
            this.$hpShape = new Shape();
         }
         this.parent.addChild(this.$hpShape);
         this.$hpShape.graphics.clear();
         this.$hpShape.graphics.beginFill(0);
         this.$hpShape.graphics.drawRoundRect(0,0,50,5,6);
         this.$hpShape.graphics.endFill();
         this.$hpShape.graphics.beginFill(this.$troops == 0 ? 13234271 : 16711680);
         this.$hpShape.graphics.drawRoundRect(1,1,48 * (this.$hp.value / this.$hpMax),3,6);
         this.$hpShape.graphics.endFill();
         this.$hpShape.x = this.$x - this.$hpShape.width / 2;
         this.$hpShape.y = this.$y + 5;
         if(this.$hp.value <= 0)
         {
            this.$hp.value = 0;
            if(this.alpha > 0.4)
            {
               this.alpha -= 0.05;
            }
            else
            {
               this.CG();
            }
         }
      }
      
      private function BUFFInit() : void
      {
         this.$ob["BUFFSpeed"] = 0;
         this.$ob["BUFFFuck"] = 0;
         if(this.$ob["BUFFFang"])
         {
            this.$fang = this.$ob["BUFFFang"];
         }
         if(this.$ob["BUFFJump"])
         {
            this.$jump = this.$ob["BUFFJump"];
         }
         if(!this.$hitBoolean)
         {
            this.$ob.kong = false;
         }
      }
      
      private function cd() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in this.$skillCD)
         {
            if(this.$skillCD[_loc1_] > 0)
            {
               // --this.$skillCD[_loc1_];
               var _loc2_:* = this.$skillCD; //
               var _loc3_:* = _loc1_; //
               var _loc4_:* = _loc2_[_loc3_] - 1; //
               _loc2_[_loc3_] = _loc4_; //
            }
            if(this.$skillCD[_loc1_] == 0)
            {
               this.$skillCD.setPropertyIsEnumerable(_loc1_,false);
            }
         }
      }
      
      public function set stoic(param1:Number) : void
      {
         this.$stoic = param1 * 36;
      }
      
      private function ai() : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc1_:* = null;
         if(this.$rigid <= 0 && !this.$jumpForFuckBoolean && this.$frameString !== "起身")
         {
            if(this.$think > 0)
            {
               this.$think = 80 + GameData.$lv;
               if(this.see)
               {
                  if(Math.random() * 10 > 9.5 || this.$mode == "D")
                  {
                     this.$down = false;
                     this.$up = false;
                  }
                  this.$jumpForFang = false;
                  _loc1_ = this.skillObject;
                  if(_loc1_ !== "瞬步" || _loc1_ == "瞬步" && Math.random() * 10 > 9)
                  {
                     if((!this.$hitBoolean || this.$frameString == "普通攻击") && Math.random() * 10 > 6)
                     {
                        if(!this.$jumpBoolean && !this.$hitBoolean)
                        {
                           if(this.$seeRole.$x >= this.$x)
                           {
                              this.$scaleX = 1;
                           }
                           else
                           {
                              this.$scaleX = -1;
                           }
                        }
                        this.hitString = _loc1_;
                     }
                     else if(!this.$hitBoolean && Math.abs(this.$x - this.$seeRole.$x) < 50 && !this.$jumpBoolean)
                     {
                        this.hitString = "普通攻击";
                     }
                     this.$GameAttBoolean = false;
                  }
                  if(this.$seeRole.y < this.y - this.$seeRole.height && !this.$hitBoolean)
                  {
                     if((this.$frameString !== "受伤" && this.$frameString == "普通攻击" || this.$frameString !== "受伤") && Math.random() * 10 > 9.5)
                     {
                        if(this.$mode == "D")
                        {
                           this.goJump();
                        }
                        else
                        {
                           this.$up = true;
                        }
                     }
                  }
                  else if(this.$seeRole.y > this.y - this.height && Math.random() * 10 > 9.5 && !this.$hitBoolean)
                  {
                     if(this.$mode == "D")
                     {
                        if(!this.$jumpBoolean)
                        {
                           this.$y += FPSMath.getFPSScale(this) * 20;
                           this.$jumpMath = 5;
                           this.$jumpBoolean = true;
                        }
                     }
                     else
                     {
                        this.$down = true;
                     }
                  }
                  if(!this.$hitBoolean && !this.$jumpBoolean)
                  {
                     if(Math.random() * 10 > 9)
                     {
                        if(this.$seeRole.$x > this.$x && !this.$jumpBoolean)
                        {
                           this.$scaleX = 1;
                        }
                        else
                        {
                           this.$scaleX = -1;
                        }
                     }
                     if(this.$x < 50 || this.$x > ComponentResourcesManage.$word.$map.width - 50)
                     {
                        if(this.$x < 50)
                        {
                           this.run = "right";
                        }
                        else
                        {
                           this.run = "left";
                        }
                     }
                     else if(Math.random() * 10 > 8)
                     {
                        if(this.$scaleX == 1)
                        {
                           this.run = "right";
                        }
                        else
                        {
                           this.run = "left";
                        }
                     }
                     if(Math.random() * 10 > 9.5)
                     {
                        this.run = "none";
                     }
                  }
                  if(Math.random() * 10 > 2 && this.$seeRole.$hitBoolean && this.$seeRole.$frameString !== "普通攻击" && this.$seeRole.$frameString !== "起身" && this.$seeRole.$frameString !== "防御")
                  {
                     if(this.$mode == "D" && !this.$jumpBoolean && this.$actArray.indexOf("防御") !== -1)
                     {
                        this.$down = true;
                     }
                     else if(this.$mode !== "D")
                     {
                        this.$jumpForFang = true;
                     }
                  }
               }
               else
               {
                  this.$down = false;
                  this.$up = false;
                  this.$jumpForFang = false;
                  this.run = "none";
               }
            }
            else
            {
               _loc2_ = this;
               _loc3_ = this.$think - 1;
               _loc2_.$think = _loc3_;
            }
         }
         else if(this.$frameString !== "起身" && this.$mode == "D" && this.$ob.aimode !== "K")
         {
            if((this.$frameString !== "受伤" && this.$frameString == "普通攻击" || this.$frameString !== "受伤") && Math.random() * 10 > 9.5)
            {
               this.goJump();
            }
         }
      }
      
      public function stopSkill() : void
      {
         this.$hitBoolean = false;
         this.$frameString = "待机";
      }
      
      public function goJump() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         if(this.$jumpNumMath > 0 && this.$hp.value > 0 && (!this.$hitBoolean || this.$frameStringCopy == "普通攻击" || this.$frameStringCopy == "落下") && this.$actArray.indexOf("跳跃") !== -1 && this.$mode == "D")
         {
            if(this.$jumpForFuckBoolean && (this.$frameStringCopy == "倒落" || this.$frameStringCopy == "落下") && Math.abs(this.$tx) <= this.$speed || !this.$jumpForFuckBoolean)
            {
               _loc1_ = this;
               _loc2_ = this.$jumpNumMath - 1;
               _loc1_.$jumpNumMath = _loc2_;
               this.$y += FPSMath.getFPSScale(this) * -this.$jump;
               this.$jumpMath = -this.$jump - 3;
               this.$jumpBoolean = true;
               if(this.$jumpForFuckBoolean)
               {
                  this.$jumpNumMath = 0;
                  this.$jumpForFuckBoolean = false;
                  this.$rigid = 0;
                  this.$txTime = 0;
                  this.$jumpMath *= 0.8;
                  this.$god = 10;
               }
               this.$hitBoolean = false;
               this.frameString = "跳跃";
               if(!this.$down)
               {
                  this._xuanfu = 6;
               }
               ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                  "name":"tx2",
                  "role":this,
                  "x":this.$x,
                  "y":this.$y,
                  "scaleX":this.$scaleX * 0.3
               });
            }
         }
         else if(this.$mode == "K")
         {
            this.$jumpForFang = true;
         }
      }
      
      private function get skillObject() : String
      {
         var i:* = undefined;
         var h:int = 0;
         var str:String = null;
         for(i in this.$class["$ob"])
         {
            if(this.$class["$ob"][i].w > Math.abs(this.$x - this.$seeRole.$x))
            {
               h = int(this.$class["$ob"][i].h);
               if(h == 0)
               {
                  h = this.height;
               }
               if(h > Math.abs(this.$y - this.$seeRole.$y))
               {
                  if(this.$skillCD[i] == 0 || this.$skillCD[i] == undefined)
                  {
                     if(Math.random() * 100 > GameData.$lv)
                     {
                        str = "none";
                        if(this.$class["$ob"][i].k == true && this.$jumpBoolean)
                        {
                           this.$keyString = this.$class["$ob"][i].s;
                           str = this.getSkillName(this.$class["$ob"][i].key);
                        }
                        else if(this.$class["$ob"][i].k !== true && !this.$jumpBoolean)
                        {
                           this.$keyString = this.$class["$ob"][i].s;
                           str = this.getSkillName(this.$class["$ob"][i].key);
                        }
                        try
                        {
                           this.GameAtt(this.$class["$ob"][i].key,str);
                        }
                        catch(e:Error)
                        {
                        }
                        return str;
                     }
                  }
               }
            }
         }
         return "";
      }
      
      private function get see() : Boolean
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc1_:* = null;
         var _loc2_:* = undefined;
         var _loc3_:* = ComponentResourcesManage.$Ob["SystemWord"]["$troops" + (-this.$troops + 1)];
         if(_loc3_.length == 1)
         {
            this.$seeRole = _loc3_[0];
         }
         else if(_loc3_.length > 0)
         {
            if(this.$seeThink <= 0)
            {
               this.$seeThink = 200;
               this.$seeRole = _loc3_[int(Math.random() * 2)];
               if(this.$seeRole.gethp <= 0)
               {
                  _loc1_ = this.$seeRole;
                  for(_loc2_ in _loc3_)
                  {
                     if(_loc3_[_loc2_].$hp > 0)
                     {
                        if(_loc1_ !== _loc3_[_loc2_])
                        {
                           this.$seeRole = _loc1_;
                           break;
                        }
                     }
                  }
                  if(_loc1_.gethp <= 0)
                  {
                     this.$seeRole = null;
                     this.$seeThink = 0;
                  }
               }
            }
            else
            {
               _loc4_ = this;
               _loc5_ = this.$seeThink - 1;
               _loc4_.$seeThink = _loc5_;
            }
         }
         return this.$seeRole !== null;
      }
      
      public function get seeBoolean() : Boolean
      {
         if(Math.random() * 10 > 5)
         {
            return true;
         }
         return false;
      }
      
      public function set run(param1:String) : void
      {
         if(param1 == "left")
         {
            this.$left = true;
            this.$right = false;
         }
         else if(param1 == "right")
         {
            this.$left = false;
            this.$right = true;
         }
         else if(param1 == "none")
         {
            this.$left = false;
            this.$right = false;
         }
      }
      
      private function downBUFF() : void
      {
         var _loc1_:Object = null;
         var _loc2_:* = undefined;
         if(this.$tx !== 0 && (this.$txTime > 0 || this.$jumpBoolean) && this.$frameString !== "起身")
         {
            if(!this.$jumpBoolean)
            {
               _loc1_ = this;
               _loc2_ = this.$txTime - 1;
               _loc1_.$txTime = _loc2_;
            }
            this.$x += FPSMath.getFPSScale(this) * this.$tx;
         }
         else if(this.$frameString == "起身")
         {
            this.$txTime = 0;
         }
         _loc1_ = this.$ob;
         if(this.$ob.du > 0)
         {
            _loc2_ = _loc1_.du - 1;
            _loc1_.du = _loc2_;
            this.$hp.value - 1;
         }
         if(_loc1_.fangX > 0 && (this.$down || this.$jumpForFang))
         {
            this.$x -= FPSMath.getFPSScale(this) * _loc1_.fangX * this.$scaleX;
            _loc1_ = this.$ob;
            _loc2_ = _loc1_.fangX - 1;
            _loc1_.fangX = _loc2_;
         }
         else
         {
            _loc1_.fangX = 0;
         }
      }
      
      private function upBUFF() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         if(this.$god > 0)
         {
            _loc1_ = this;
            _loc2_ = this.$god - 1;
            _loc1_.$god = _loc2_;
         }
         if(this.$stoic > 0)
         {
            _loc1_ = this;
            _loc2_ = this.$stoic - 1;
            _loc1_.$stoic = _loc2_;
         }
         if(GameData.$mode == "1PSB")
         {
            ComponentResourcesManage.$word.$time.$fightTime = 99;
            if(this.$hp.value <= 0 && this.$target.indexOf("Freak_") == -1)
            {
               this.$hp.value = this.$hpMax;
            }
            this.$mp = this.$mpMax;
         }
      }
      
      private function actID() : void
      {
         var _loc1_:* = this.$actArray.indexOf(this.$frameString);
         if(_loc1_ !== -1 && this.$act !== _loc1_)
         {
            this._currentFrame = -1;
            this.$act = _loc1_;
            this.$drawBoolean = false;
         }
      }
      
      private function updateFrame() : void
      {
         var _loc1_:int = int(this.$xml.act[this.$act].@fps);
         var _loc2_:int = this.$hitBoolean ? int(this.$ob["fps"]) : 0;
         if(this.$fangCD < 36 && this.$down)
         {
            ++this.$fangCD;
         }
         else if(this.$fangCD > 0)
         {
            --this.$fangCD;
         }
         if(this.$hitBoolean && this.$frameString == "普通攻击")
         {
            _loc2_++;
         }
         if(this.$fps + _loc1_ - _loc2_ > this.$fpsMath)
         {
            ++this.$fpsMath;
            this.lian -= this.lian > 0 ? 2 : 0;
         }
         else
         {
            if(this.$ob["StopMP"] == undefined || this.$ob["StopMP"] <= 0)
            {
               ++this.$mp;
            }
            else
            {
               this.$ob["StopMP"] -= this.$fps;
            }
            if(this.$mp > this.$mpMax)
            {
               this.$mp = this.$mpMax;
            }
            if(this.$hp.value > this.$hpMax)
            {
               this.$hp.value = this.$hpMax;
            }
            if(this.$xml.act[this.$act].SubTexture.length() - 1 > this.$frameInt)
            {
               if(String(this.$xml.act[this.$act].SubTexture[this.$frameInt].@asA) == "stop" && (this.$keyP !== -1 || SystemP2P.$FightOK) && this.lian <= 0)
               {
                  if(this.$reactionMath < this.$reaction)
                  {
                     ++this.$reactionMath;
                  }
                  else
                  {
                     this.$reactionMath = 0;
                     this.$hitBoolean = false;
                     this.frameString = "待机";
                     if(this.$ob["Di"] is SystemGameRole)
                     {
                        if(this.$ob["Di"].$frameString == "受伤")
                        {
                           this.$ob["Di"].rigid = 0;
                           this.$ob["Di"] = null;
                        }
                     }
                  }
               }
               else if(!this.$stopUpdateframeBoolean)
               {
                  if(String(this.$xml.act[this.$act].SubTexture[this.$frameInt].@asA) == "stop")
                  {
                     this.lian = 0;
                  }
                  ++this.$frameInt;
                  if(this.qzFrameString == this.$frameString)
                  {
                     this.goQZ();
                  }
               }
               else
               {
                  this.$stopUpdateframeBoolean = false;
               }
            }
            else if(this.$rigid > 0 && !this.$jumpBoolean)
            {
               this.$rigid -= this.$fps;
               if(this.$frameString !== "受伤")
               {
                  this.frameString = "受伤";
               }
            }
            else if(this.$hitBoolean || this.$frameString == "受伤")
            {
               this.$hitBoolean = false;
               this.$txTime = 0;
               this.frameString = "待机";
               SystemP2P.$frameString = "none";
            }
            else
            {
               this.$frameInt = 0;
            }
            this.$drawBoolean = false;
            this.$fpsMath = 0;
         }
      }
      
      private function runing() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         if(!this.$jumpBoolean)
         {
            if(this.$left)
            {
               this.$scaleX = -1;
            }
            else if(this.$right)
            {
               this.$scaleX = 1;
            }
         }
         if(this.$left)
         {
            this.$x -= FPSMath.getFPSScale(this) * this.Speed;
            if(!this.$jumpBoolean)
            {
               if(this.$toRunBoolean)
               {
                  this.frameString = "跑步";
                  this.$x -= FPSMath.getFPSScale(this) * this.$runSpeed;
               }
               else
               {
                  this.frameString = "行走";
               }
            }
            else if(this.$jumpBoolean)
            {
               if(this.$toRunBoolean)
               {
                  this.$x -= FPSMath.getFPSScale(this) * this.$runSpeed;
               }
            }
         }
         else if(this.$right)
         {
            this.$x += FPSMath.getFPSScale(this) * this.Speed;
            if(!this.$jumpBoolean)
            {
               if(this.$toRunBoolean)
               {
                  this.frameString = "跑步";
                  this.$x += FPSMath.getFPSScale(this) * this.$runSpeed;
               }
               else
               {
                  this.frameString = "行走";
               }
            }
            else if(this.$jumpBoolean)
            {
               if(this.$toRunBoolean)
               {
                  this.$x += FPSMath.getFPSScale(this) * this.$runSpeed;
               }
            }
         }
         else
         {
            this.frameString = "待机";
            this.$toRunBoolean = false;
            if(this.$runTime > 0)
            {
               _loc1_ = this;
               _loc2_ = this.$runTime - 1;
               _loc1_.$runTime = _loc2_;
               this.$x += FPSMath.getFPSScale(this) * this.$scaleX * this.$runTime / 5;
            }
         }
      }
      
      private function toRun(param1:int) : void
      {
         if(this.$runEnter > 0 && param1 == this.$runKey && this.$actArray.indexOf("跑步") !== -1)
         {
            this.$toRunBoolean = true;
         }
      }
      
      private function actRuning() : void
      {
         if(this.$frameString == "空中攻击" || this.$frameString == "落下")
         {
            if(this.$left)
            {
               this.$x -= FPSMath.getFPSScale(this) * this.Speed;
            }
            else if(this.$right)
            {
               this.$x += FPSMath.getFPSScale(this) * this.Speed;
            }
         }
      }
      
      private function jumpBUFF() : void
      {
         if(this.$mode == "D")
         {
            if(this.$jumpForFuckBoolean && !this.$hitBoolean)
            {
               if(this.$ding <= 0)
               {
                  if(this.$jumpMath < 0)
                  {
                     this.frameString = "打飞";
                  }
                  else
                  {
                     this.frameString = "倒落";
                  }
               }
               else
               {
                  this.frameString = "受伤";
               }
            }
            else if(this.$frameStringCopy !== "受伤" && this.$rigid <= 0)
            {
               if(this.$jumpMath < 0 && !this.$hitBoolean)
               {
                  this.frameString = "跳跃";
               }
               else if(this.$frameStringCopy == "跳跃" && this.$actArray.indexOf("落下") !== -1)
               {
                  this.hitString = "落下";
               }
               else
               {
                  this.frameString = "降落";
               }
            }
            else
            {
               this.frameString = "受伤";
            }
         }
      }
      
      public function beHit() : void
      {
         if(this.$stoic > 0 && this.hitStop <= 0)
         {
            this.hitStop = 3;
         }
      }
      
      private function hit() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         if(this.$frameString == "受伤" && this.$jumpBoolean && this.$rigid > 0)
         {
         }
         var _loc1_:Object = ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["bit"];
         this.$bit.x = this.$x;
         this.$bit.y = this.$y;
         if((!this.$hitBoolean || this.$frameString == "空中攻击" || this.$frameString == "落下") && this.$jumpBoolean)
         {
            if(this.$ding > 0)
            {
               --this.$ding;
            }
            else
            {
               this.$y += FPSMath.getFPSScale(this) * this.$jumpMath / this.$jumpFu;
               if(this.$jumpMath < this.$jump * 1.5)
               {
                  this.$jumpMath += this.$gravity;
               }
            }
         }
         else
         {
            this.$jumpMath = 0;
         }
         if(this.endRed(_loc1_))
         {
            while(this.$bit.bitmapData.hitTest(new Point(this.$bit.x,this.$bit.y),85,_loc1_.bitmapData,new Point(_loc1_.x,_loc1_.y),1))
            {
               --this.$bit.y;
               this.$jumpBoolean = false;
            }
            if(this.$txTime !== 0 && (this.$frameString == "跳跃" || this.$frameString == "降落"))
            {
               this.$txTime = 0;
            }
            if(!this.$jumpBoolean)
            {
               this.$y = this.$bit.y;
               if(this.$frameStringCopy == "降落" && !this.$hitBoolean)
               {
                  this.hitString = "落地";
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"tx1",
                     "role":this,
                     "x":this.$bit.x,
                     "y":this.$bit.y,
                     "scaleX":this.$scaleX * 0.5
                  });
               }
            }
            if(this.$jumpForFuckBoolean)
            {
               this.getUP();
            }
         }
         if(this.$jy <= this.$y && this.$jumpMath >= 0 && this.$bit.bitmapData.hitTest(new Point(this.$bit.x,this.$bit.y),85,_loc1_.bitmapData,new Point(_loc1_.x,_loc1_.y),1))
         {
            _loc2_ = 0;
            _loc3_ = this.$jumpBoolean;
            while(this.$bit.bitmapData.hitTest(new Point(this.$bit.x,this.$bit.y),85,_loc1_.bitmapData,new Point(_loc1_.x,_loc1_.y),1))
            {
               --this.$bit.y;
               _loc2_++;
               this.$jumpBoolean = false;
               if(_loc2_ > this.$jump / this.$jumpFu * 1.5 && _loc3_)
               {
                  this.$jumpBoolean = true;
                  this.$bit.y += _loc2_ + this.$jumpMath / this.$jumpFu;
                  if(this.$jumpMath < this.$jump * 1.5)
                  {
                     this.$jumpMath += this.$gravity;
                  }
                  this.jumpBUFF();
                  break;
               }
            }
            if(this.$txTime !== 0 && (this.$frameString == "跳跃" || this.$frameString == "降落"))
            {
               this.$txTime = 0;
            }
            if(_loc3_ && !this.$jumpBoolean && !this.$jumpForFuckBoolean && this.$jy !== this.$y && !this.$hitBoolean)
            {
               if(this.$frameStringCopy == "降落")
               {
                  this.hitString = "落地";
               }
               ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                  "name":"tx1",
                  "role":this,
                  "x":this.$bit.x,
                  "y":this.$bit.y,
                  "scaleX":this.$scaleX * 0.5
               });
            }
            this.getUP();
            this.$y = this.$bit.y + 1;
            if(this.$frameString == "空中攻击")
            {
               this.stopSkill();
            }
         }
         else if(!this.$hitBoolean || this.$frameString == "普通攻击")
         {
            if(!this.$jumpBoolean)
            {
               this.$jumpMath = 0;
               this.$jumpBoolean = true;
               if(this.$dit.bitmapData.hitTest(new Point(this.$dit.x,this.$dit.y),85,_loc1_.bitmapData,new Point(_loc1_.x,_loc1_.y),1))
               {
                  while(!this.$bit.bitmapData.hitTest(new Point(this.$bit.x,this.$bit.y),85,_loc1_.bitmapData,new Point(_loc1_.x,_loc1_.y),1))
                  {
                     ++this.$bit.y;
                     this.$jumpBoolean = false;
                  }
                  this.$y = this.$bit.y;
               }
               if(this.$jumpBoolean && !this.$hitBoolean)
               {
                  this.jumpBUFF();
               }
            }
            else if(!this.$hitBoolean)
            {
               this.jumpBUFF();
            }
         }
         if(!this.$dit.bitmapData.hitTest(new Point(this.$dit.x,this.$dit.y),85,_loc1_.bitmapData,new Point(_loc1_.x,_loc1_.y),1))
         {
            this.$jumpBoolean = true;
            if(this.$frameString == "普通攻击" && this.$ob.kong !== true)
            {
               this.$hitBoolean = false;
               this.jumpBUFF();
            }
         }
         this.$jx = this.$x;
         this.$jy = this.$y;
      }
      
      public function updateJump() : void
      {
         this.$y += FPSMath.getFPSScale(this) * this.$jumpMath / this.$jumpFu;
         if(this.$jumpMath < this.$jump * 1.5)
         {
            this.$jumpMath += this.$gravity;
         }
      }
      
      private function endRed(param1:Object) : Boolean
      {
         if(param1)
         {
            if(param1.bitmapData.getPixel(this.$x,this.$y) == 16711680)
            {
               return true;
            }
            if(param1.bitmapData.getPixel(this.$x + this.$bit.width,this.$y) == 16711680)
            {
               return true;
            }
            if(param1.bitmapData.getPixel(this.$x,this.$y + this.$bit.height) == 16711680)
            {
               return true;
            }
            if(param1.bitmapData.getPixel(this.$x + this.$bit.width,this.$y + this.$bit.height) == 16711680)
            {
               return true;
            }
            return false;
         }
         return false;
      }
      
      private function getUP() : void
      {
         if(!this.$jumpBoolean && this.$jumpForFuckBoolean)
         {
            if((this.$jumpMath > 15 || Math.abs(this.$tx) >= 6) && int(this.$ob.ft) <= 6)
            {
               this.$ob.ft = int(this.$ob.ft) + 1;
               this.$jumpMath /= -3;
               this.$tx /= 3;
               this.$jumpBoolean = true;
               ComponentResourcesManage.$word.$map.setZhen = 0.3;
               ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                  "name":"daodichen",
                  "role":this,
                  "x":this.$bit.x,
                  "y":this.$bit.y,
                  "scaleX":this.$scaleX * 1
               });
            }
            else
            {
               this.$ob.ft = 0;
               this.$shouColor = null;
               this.hitString = "起身";
               this.$jumpForFuckBoolean = false;
               this.$god = 40;
               this.$rigid = 0;
               this.$hit_num = 0;
               this.fuckFlyCount = 0;
            }
            ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
               "name":"tx1",
               "role":this,
               "x":this.$bit.x,
               "y":this.$bit.y,
               "scaleX":this.$scaleX * 0.5
            });
         }
      }
      
      public function drawRectFight() : void
      {
         if(this._fightFrame == this.$frameInt)
         {
            return;
         }
         this._fightFrame = this.$frameInt;
         if(this.$fit.bitmapData !== null)
         {
            this.$fit.bitmapData.dispose();
            this.$fit.bitmapData = null;
         }
         if(this.widthInt !== 0 && this.heightInt !== 0)
         {
            this.$fit.bitmapData = new BitmapData(this.widthInt,this.heightInt,false,0);
            this.$fightOB.fuckY = int(this.$xml.act[this.$act].SubTexture[this.$frameInt].@asY);
            this.$fightOB.fuckX = int(this.$xml.act[this.$act].SubTexture[this.$frameInt].@asZ);
            if(this.$xml.act[this.$act].SubTexture[this.$frameInt].@asR != undefined)
            {
               this.$fightOB.R = int(this.$xml.act[this.$act].SubTexture[this.$frameInt].@asR) / this.$fps;
            }
            else
            {
               this.$fightOB.R = int(this.$xml.act[this.$act].SubTexture[this.$frameInt].@asS) / this.$fps;
            }
            if(String(this.$xml.act[this.$act].SubTexture[this.$frameInt].@isBreak) == "break")
            {
               this.isBreak = true;
            }
            else
            {
               this.isBreak = false;
            }
            this.$fightOB.hurt = int(this.$xml.act[this.$act].SubTexture[this.$frameInt].@hitHurt) * this.hurtThan;
            this.$fuckBoolean = true;
         }
         else
         {
            this.$fit.bitmapData = new BitmapData(1,1,true,0);
            this.$fuckBoolean = false;
         }
      }
      
      private function updateAct() : void
      {
         var _loc_1:* = null;
         if(this._currentFrame == this.$frameInt && this._currentFrame != 0)
         {
            this.$drawBoolean = true;
         }
         if(this.$jiuScaleX !== this.$scaleX)
         {
            this.$drawBoolean = false;
         }
         if(this.$frameInt >= this.$xml.act[this.$act].SubTexture.length())
         {
            this.$frameInt = 0;
         }
         if(SystemEvent.getP2PType() != "accept")
         {
            if(this.$xml.act[this.$act].SubTexture[this.$frameInt].@asH == "hurt" && !this.$drawBoolean)
            {
               this.xInt = this.$xml.act[this.$act].SubTexture[this.$frameInt].@Hx;
               this.yInt = this.$xml.act[this.$act].SubTexture[this.$frameInt].@Hy;
               this.widthInt = this.$xml.act[this.$act].SubTexture[this.$frameInt].@Hw;
               this.heightInt = this.$xml.act[this.$act].SubTexture[this.$frameInt].@Hh;
               this.drawRectFight();
            }
            else if(this.$xml.act[this.$act].SubTexture[this.$frameInt].@hitWidth != undefined)
            {
               this.xInt = this.$xml.act[this.$act].SubTexture[this.$frameInt].@hitX;
               this.yInt = this.$xml.act[this.$act].SubTexture[this.$frameInt].@hitY;
               this.widthInt = this.$xml.act[this.$act].SubTexture[this.$frameInt].@hitWidth;
               this.heightInt = this.$xml.act[this.$act].SubTexture[this.$frameInt].@hitHeight;
               this._effectiveFPS = this.$frameInt + this.$xml.act[this.$act].SubTexture[this.$frameInt].@hiteffective;
               this.drawRectFight();
            }
            else if(this._effectiveFPS < this.$frameInt && !this.$drawBoolean)
            {
               this.widthInt = 0;
               this.heightInt = 0;
               this.drawRectFight();
            }
         }
         FrameEffectManage.event(this,String(this.$xml.act[this.$act].@eventTag));
         FrameEffectManage.event(this,String(this.$xml.@eventTag));
         if(!this.$drawBoolean)
         {
            try
            {
               if(this._currentFrame != this.$frameInt && this.$xml.act[this.$act].SubTexture[this.$frameInt].@soundName !== undefined && String(this.$xml.act[this.$act].SubTexture[this.$frameInt].@soundName) != "")
               {
                  _loc_1 = String(this.$xml.act[this.$act].SubTexture[this.$frameInt].@soundName);
                  _loc_1 = _loc_1.substr(0,_loc_1.lastIndexOf("."));
                  SystemMucisPlay.setMusic = this.roleTarget + "_sound/" + _loc_1;
               }
               else if(this._currentFrame != this.$frameInt && this.$xml.act[this.$act].SubTexture[this.$frameInt].@sound !== undefined && GameData.$fightBoolean)
               {
                  SystemMucisPlay.setMusic = String(this.$xml.act[this.$act].SubTexture[this.$frameInt].@sound);
               }
               if(this._currentFrame != this.$frameInt)
               {
                  if(this.$xml.act[this.$act].SubTexture[this.$frameInt].@effects !== undefined)
                  {
                     SkillEffectManage.effectManage.parsing(this,this.$xml.act[this.$act].SubTexture[this.$frameInt].@effects);
                  }
                  FrameEffectManage.parsing(this,this.$xml.act[this.$act].SubTexture[this.$frameInt]);
               }
               if(this.bitmapData !== null)
               {
                  this.bitmapData.dispose();
                  this.bitmapData = null;
               }
               this.bitmapData = BitmapDataDraw.xmlForBitmapData(this.$bitmapData,this.$xml.act[this.$act].SubTexture[this.$frameInt],this.$scaleX);
               this.smoothing = true;
               this.$drawBoolean = true;
               this.pxy.x = int(this.$xml.act[this.$act].SubTexture[this.$frameInt].@frameX);
               this.pxy.y = int(this.$xml.act[this.$act].SubTexture[this.$frameInt].@frameY);
            }
            catch(e:Error)
            {
            }
         }
         if(this.$god > 0)
         {
            this.bitmapData.draw(this,null,SystemColor.bodyColor,BlendMode.SCREEN);
         }
         if(this.$x < 25)
         {
            this.$x = 25;
         }
         else if(this.$x > ComponentResourcesManage.$Ob["SystemWord"].$map.getWidth - 25)
         {
            this.$x = ComponentResourcesManage.$Ob["SystemWord"].$map.getWidth - 25;
         }
         this.x = this.$x + (int(this.$xml.@px) - this.pxy.x) * this.$scaleX;
         this.y = this.$y + (int(this.$xml.@py) - this.pxy.y) * this.$scaleY;
         this.$bit.x = this.$x;
         this.$bit.y = this.$y;
         this.$dit.x = this.$bit.x;
         this.$dit.y = this.$bit.y + 4;
         this.$fit.x = this.$x + this.xInt * this.$scaleX;
         this.$fit.y = this.$y + this.yInt * this.$scaleY;
         if(this.$scaleX < 0)
         {
            this.$fit.x -= this.$fit.width;
            this.x -= this.width;
         }
         if(this.$fuckBoolean && this.$hitBoolean)
         {
            this.hitRole();
            this.$hrutVisible = true;
         }
         if(this.$stoic > 0)
         {
            this.filters = [SystemColor.dropColor];
         }
         else if(!this.$shouColor)
         {
            this.filters = [];
         }
         this._currentFrame = this.$frameInt;
      }
      
      private function hitRole() : void
      {
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc1_:* = undefined;
         var _loc2_:* = null;
         var _loc3_:* = 0;
         var _loc4_:* = 1;
         var _loc5_:* = ComponentResourcesManage.$Ob["SystemWord"]["$troops" + (-this.$troops + 1)];
         for(_loc1_ in _loc5_)
         {
            if(_loc5_[_loc1_] is SystemGameRole && this.$fit.bitmapData !== null && _loc5_[_loc1_] !== this)
            {
               if(this.$fit.bitmapData.hitTest(new Point(this.$fit.x,this.$fit.y),85,_loc5_[_loc1_],new Point(_loc5_[_loc1_].x,_loc5_[_loc1_].y),1))
               {
                  _loc2_ = _loc5_[_loc1_];
                  if(_loc2_.$god <= 0 && _loc2_.$frameString !== "起身")
                  {
                     _loc2_.beHit();
                     if(this.isBreak)
                     {
                        _loc2_.stopSkill();
                     }
                     _loc6_ = this.$class;
                     _loc6_["getFightBuff"](this,_loc2_ as SystemGameRole);
                     if(_loc2_.$stoic <= 0 || _loc2_.$frameString == "防御")
                     {
                        if(this.$hpID !== -1)
                        {
                           ComponentResourcesManage.$word.$hpmpArray[this.$hpID].addNum();
                        }
                        if((_loc2_.$frameString == "防御" && _loc2_.$actArray.indexOf("防御") !== -1 || _loc2_.$frameString == "空中格挡") && _loc2_.$scaleX !== this.$scaleX)
                        {
                           _loc3_ = (this.Dam + RoleMathType.addTSHurt(this,this.$class)) * 0.3;
                           ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                              "mode":"tx",
                              "name":"fangYu",
                              "rotate":Math.random() * 180,
                              "role":this,
                              "x":_loc2_.$bit.x,
                              "y":_loc2_.$bit.y - 30 + (15 - Math.random() * 30),
                              "scaleX":this.$scaleX
                           });
                           _loc2_.sethp(_loc2_.gethp - _loc3_ * (1 - _loc2_.$fang));
                           _loc2_.$ob.fangX = 10;
                           if(_loc2_.$fangCD < 18 && Math.abs(_loc2_.$x - this.$x) < 120)
                           {
                              _loc2_.$fangCD = 36;
                              _loc2_.stoic = 0.3;
                              ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                                 "mode":"tx",
                                 "name":"SJFang",
                                 "rotate":Math.random() * 180,
                                 "role":this,
                                 "x":_loc2_.$bit.x + 25 * _loc2_.$scaleX,
                                 "y":_loc2_.$bit.y - 30 + (15 - Math.random() * 30),
                                 "scaleX":this.$scaleX * -1
                              });
                           }
                        }
                        else if(this.$hrutVisible)
                        {
                           this.$mp += this.$mpMax / 60;
                           if(this.$frameStringCopy == "普通攻击")
                           {
                              this.$ob["Di"] = _loc2_;
                           }
                           if(_loc6_["$ob"][this.$frameString] !== undefined)
                           {
                              if(_loc6_["$ob"][this.$frameString].bs !== undefined)
                              {
                                 _loc4_ = _loc6_["$ob"][this.$frameString].bs;
                              }
                           }
                           _loc3_ = (this.Dam + RoleMathType.addTSHurt(this,this.$class)) * _loc4_;
                           _loc2_.sethp(_loc2_.gethp - _loc3_ * (1 - _loc2_.$fang));
                           _loc2_.rigid = this.$fightOB.R;
                           if(this.$fightOB.fuckX !== 0)
                           {
                              _loc2_.$tx = this.$fightOB.fuckX * this.$scaleX;
                           }
                           else
                           {
                              _loc2_.$tx = 0;
                           }
                           _loc2_.$scaleX = -this.$scaleX;
                           if(this.$fightOB.fuckY !== 0)
                           {
                              if(Boolean(_loc2_.$jumpBoolean) || _loc2_.$mode == "K")
                              {
                                 _loc2_.$jumpForFuckBoolean = true;
                                 _loc2_.$mode = "D";
                              }
                              _loc2_.fuckY = this.$fightOB.fuckY - _loc2_.$fuz;
                              if(this.$fightOB.fuckY >= 5 && _loc2_.$fuz < 15 && this.$frameStringCopy == "普通攻击")
                              {
                                 _loc2_.$fuz += 3;
                              }
                              _loc2_.$ding = 0;
                           }
                           else if(_loc2_.$jumpBoolean)
                           {
                              _loc2_.$ding = 15;
                              _loc2_.$jumpMath = 0;
                           }
                           if(Boolean(_loc2_.$jumpForFuckBoolean) && _loc2_.$jumpNumMath > 1)
                           {
                              _loc2_.$jumpNumMath = 1;
                           }
                           if(_loc2_.name.indexOf("Freak") == -1)
                           {
                              if(this.$frameStringCopy == "普通攻击" && _loc2_.$hit_num > 12)
                              {
                                 _loc2_.rigid = 0;
                                 _loc2_.fuckY = -5;
                                 _loc2_.$jumpForFuckBoolean = true;
                                 _loc2_.$y += FPSMath.getFPSScale(this) * 6;
                                 if(this.$fightOB.fuckY >= 5 && _loc2_.$fuz < 15)
                                 {
                                    _loc2_.$fuz += 3;
                                 }
                              }
                           }
                           ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                              "mode":"tx",
                              "name":this.FuckClass,
                              "rotate":Math.random() * 180,
                              "role":this,
                              "x":_loc2_.$x,
                              "y":_loc2_.$y - 30 + (15 - Math.random() * 30),
                              "scaleX":this.$scaleX
                           });
                           if(String(this.$xml.act[this.$act].SubTexture[this.$frameInt].@isBlow) == "blow")
                           {
                              ComponentResourcesManage.$word.$map.setZhen = 0.3;
                              this.hitStop = 6;
                              _loc2_.hitStop = 6;
                              if(this.$fightOB.fuckY != 0)
                              {
                                 _loc2_.$jumpForFuckBoolean = true;
                              }
                           }
                        }
                     }
                     else
                     {
                        _loc3_ = (this.Dam + RoleMathType.addTSHurt(this,this.$class)) * _loc4_;
                        _loc2_.sethp(_loc2_.gethp - _loc3_ * (1 - _loc2_.$fang));
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "mode":"tx",
                           "name":this.FuckClass,
                           "rotate":Math.random() * 180,
                           "role":this,
                           "x":_loc2_.$x,
                           "y":_loc2_.$y - 30 / 2 + (15 - Math.random() * 30),
                           "scaleX":this.$scaleX
                        });
                     }
                     this.$fuckBoolean = false;
                     ComponentResourcesManage.$word.askElements("hurt",{
                        "hurt":_loc3_ * (1 - _loc2_.$fang),
                        "point":new Point(_loc2_.$x,_loc2_.$y)
                     });
                     _loc6_ = _loc2_;
                     _loc7_ = _loc2_.$hit_num + 1;
                     _loc6_.$hit_num = _loc7_;
                     if(_loc2_.$class["beHurt"])
                     {
                        _loc6_ = _loc2_.$class;
                        _loc6_["beHurt"](_loc2_,_loc3_);
                     }
                  }
               }
            }
         }
         _loc5_ = ComponentResourcesManage.$word["$skill" + (-this.$troops + 1)];
         for(_loc1_ in _loc5_)
         {
            if(_loc5_[_loc1_] is SkillShow && this.bitmapData !== null && _loc5_[_loc1_] !== this && _loc5_[_loc1_].bitmapData !== null)
            {
               if(this.bitmapData.hitTest(new Point(this.x,this.y),50,_loc5_[_loc1_].bitmapData,new Point(_loc5_[_loc1_].x,_loc5_[_loc1_].y),255))
               {
                  RoleMathType.setSkillHurtOrAdd(_loc5_[_loc1_],this.Dam);
                  _loc2_ = _loc5_[_loc1_];
                  this.$fuckBoolean = false;
               }
            }
         }
      }
      
      public function to(param1:int) : void
      {
         this.$frameInt = param1;
         this.$drawBoolean = false;
      }
      
      public function toTips(param1:String) : void
      {
         if(param1 == "" || !param1)
         {
            return;
         }
         var _loc2_:* = this.$xml.act[this.$act].SubTexture.length();
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_)
         {
            if(String(this.$xml.act[this.$act].SubTexture[_loc3_].@findName) == param1)
            {
               this.to(_loc3_);
               return;
            }
            _loc3_++;
         }
      }
      
      public function get FuckClass() : String
      {
         var _loc1_:* = "";
         if(String(this.$xml.act[this.$act].SubTexture[this.$frameInt].@tx) !== "")
         {
            _loc1_ = String(this.$xml.act[this.$act].SubTexture[this.$frameInt].@tx);
         }
         else if(String(this.$xml.act[this.$act].@tx) !== "")
         {
            _loc1_ = String(this.$xml.act[this.$act].@tx);
         }
         else
         {
            _loc1_ = "dj1";
         }
         if(_loc1_ == "jian")
         {
            _loc1_ = SkillMath.JianTX;
         }
         else if(_loc1_ == "")
         {
            _loc1_ = "dj1";
         }
         else if(Boolean(this.roleData) && _loc1_ != "dj1")
         {
            _loc1_ = this.$target + "_effect/" + _loc1_;
         }
         return _loc1_;
      }
      
      public function get hitRoleBoolean() : Boolean
      {
         var _loc1_:* = undefined;
         var _loc2_:* = ComponentResourcesManage.$Ob["SystemWord"]["$troops" + (-this.$troops + 1)];
         for(_loc1_ in _loc2_)
         {
            if(_loc2_[_loc1_] is SystemGameRole && this.bitmapData !== null && _loc2_[_loc1_] !== this)
            {
               if(this.bitmapData.hitTest(new Point(this.x,this.y),85,_loc2_[_loc1_],new Point(_loc2_[_loc1_].x,_loc2_[_loc1_].y),1))
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function get hitGameRole() : SystemGameRole
      {
         var _loc1_:* = undefined;
         var _loc2_:* = ComponentResourcesManage.$Ob["SystemWord"]["$troops" + (-this.$troops + 1)];
         for(_loc1_ in _loc2_)
         {
            if(_loc2_[_loc1_] is SystemGameRole && this.bitmapData !== null && _loc2_[_loc1_] !== this)
            {
               if(_loc2_[_loc1_].$god <= 0 && _loc2_[_loc1_].gethp > 0)
               {
                  if(this.bitmapData.hitTest(new Point(this.x,this.y),85,_loc2_[_loc1_],new Point(_loc2_[_loc1_].x,_loc2_[_loc1_].y),1))
                  {
                     return _loc2_[_loc1_];
                  }
               }
            }
         }
         return null;
      }
      
      public function hitRoleAndSkill(param1:int, param2:Boolean = false) : Array
      {
         var _loc3_:* = undefined;
         var _loc4_:* = new Array();
         var _loc5_:* = ComponentResourcesManage.$Ob["SystemWord"]["$skill" + (-this.$troops + 1)];
         if(!param2)
         {
            for(_loc3_ in _loc5_)
            {
               if(Math.abs(_loc5_[_loc3_].$x - this.$x) < param1 && Math.abs(_loc5_[_loc3_].$y - this.$y) < param1)
               {
                  _loc4_.push(_loc5_[_loc3_]);
               }
            }
         }
         _loc5_ = ComponentResourcesManage.$Ob["SystemWord"]["$troops" + (-this.$troops + 1)];
         for(_loc3_ in _loc5_)
         {
            if(Math.abs(_loc5_[_loc3_].$x - this.$x) < param1 && Math.abs(_loc5_[_loc3_].$y - this.$y) < param1)
            {
               if(_loc5_[_loc3_].$god <= 0 && _loc5_[_loc3_].gethp > 0)
               {
                  _loc4_.push(_loc5_[_loc3_]);
               }
            }
         }
         return _loc4_;
      }
      
      public function CG() : void
      {
         var _loc2_:* = undefined;
         if(GameData.ns_select !== "none")
         {
            if(this.name == "role1" || this.name == "role2")
            {
               NSGameData.againRole(this.$hp.value,this.$mp);
            }
            else if(this.$hp.value <= 0)
            {
            }
         }
         if(this.name == "role1" || this.name == "role2")
         {
            stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.Down);
            stage.removeEventListener(KeyboardEvent.KEY_UP,this.Up);
         }
         this.$bitmapData.dispose();
         if(this.$class["CGSkill"] is Function)
         {
            _loc2_ = this.$class;
            _loc2_["CGSkill"](this);
         }
         BitmapClear.Clear(this.$fit);
         this.bitmapData.dispose();
         this.$bit.bitmapData.dispose();
         this.$dit.bitmapData.dispose();
         if(this.$fit.bitmapData !== null)
         {
            this.$fit.bitmapData.dispose();
            this.$fit = null;
         }
         this.$bit = null;
         this.$dit = null;
         this.$fightOB = null;
         if(this.$hpShape != null)
         {
            this.$hpShape.parent.removeChild(this.$hpShape);
            this.$hpShape = null;
         }
         var _loc1_:* = ComponentResourcesManage.$word["$troops" + this.$troops];
         _loc1_.splice(_loc1_.indexOf(this),1);
         ComponentResourcesManage.$Ob["SystemWord"].$elementsOb[this.name] = null;
         delete ComponentResourcesManage.$Ob["SystemWord"].$elementsOb[this.name];
      }
   }
}

