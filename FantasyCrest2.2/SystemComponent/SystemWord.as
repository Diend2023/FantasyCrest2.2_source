package SystemComponent
{
   import SystemComponent.CardClass.CradBox;
   import SystemComponent.Word.HPMP;
   import SystemComponent.Word.HurtMath;
   import SystemComponent.Word.QZ;
   import SystemComponent.Word.SkillShow;
   import SystemComponent.Word.SlayPhoto;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.DataStorage;
   import SystemEye.GameData;
   import SystemEye.GameScore;
   import SystemEye.NSGameData;
   import SystemEye.SystemEvent;
   import SystemEye.SystemState;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import org.superkaka.kakalib.debug.Fps;
   import p2p2016.P2PData;
   import person.animation.easyShow.apps.EasyGIF;
   import person.darw.bitmap.BitmapDarw;
   import person.fight.time.Times;
   
   public class SystemWord extends Sprite
   {
      
      private var _time:int = 0;
      
      public var $map:SystemMap;
      
      public var $elements:SystemElements;
      
      public var $elementsOb:Object;
      
      public var $stop:Boolean = false;
      
      public var $setPhoto:SlayPhoto;
      
      public var $QHei:Bitmap;
      
      public var $GOFightFrame:int = 0;
      
      public var $fight:Bitmap;
      
      public var $time:Times;
      
      public var $text:TextField;
      
      public var $hpmpArray:Array;
      
      public var $troops0:Array;
      
      public var $troops1:Array;
      
      public var $skill0:Array;
      
      public var $skill1:Array;
      
      private var _drawBitmapData:BitmapData;
      
      public var drawBitmap:Bitmap;
      
      public var $fightArray:Array;
      
      private var m_duihuakuang:CradBox;
      
      private var $fightData:BitmapData;
      
      private var $fightXML:XML;
      
      public var $fightOpenTime:int = 40;
      
      public var $1P2P:BitmapData;
      
      public var $1P2Pxml:XML;
      
      public var $1P:Bitmap;
      
      public var $2P:Bitmap;
      
      public var $3P:Bitmap;
      
      public var $4P:Bitmap;
      
      public var $OVER:int = 160;
      
      public var KO:EasyGIF;
      
      public var $TimeOver:Bitmap;
      
      private var $redColor:Array;
      
      private var $PD:String = "none";
      
      private var $Color:Bitmap;
      
      private var $ColorSpeed:Number = 0;
      
      private var _systemFPS:int = 32;
      
      private var _systemFPSMath:int = 0;
      
      public function SystemWord()
      {
         super();
         this.$elementsOb = new Object();
         this.$QHei = new Bitmap(new BitmapData(700,500,false,0));
         this.$fight = new Bitmap();
         this.$text = new TextField();
         this.$hpmpArray = new Array();
         this.$troops0 = new Array();
         this.$troops1 = new Array();
         this.$skill0 = new Array();
         this.$skill1 = new Array();
         this.$fightArray = new Array();
         this.$1P = new Bitmap();
         this.$2P = new Bitmap();
         this.$3P = new Bitmap();
         this.$4P = new Bitmap();
         this.$TimeOver = new Bitmap();
         this.$redColor = new Array([1,1,1,1,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,1,0]);
         this.$Color = new Bitmap(new BitmapData(100,10,true));
      }
      
      public function initSystemWord() : *
      {
         this.parent.addChild(this.$Color);
         this.$Color.alpha = 0;
         this.$map = new SystemMap(DataStorage.readImg(GameData.$mapTarget),DataStorage.readImg("bj" + GameData.$mapTarget));
         this.addChild(this.$map);
         this.$elements = new SystemElements();
         this.addChild(this.$elements);
         var _loc1_:* = new Bitmap(DataStorage.readImg("bit" + GameData.$mapTarget));
         this.$elements.addChild(_loc1_);
         this.$elementsOb["bit"] = _loc1_;
         _loc1_.visible = false;
         this.$setPhoto = new SlayPhoto(this);
         this.parent.addChild(this.$setPhoto);
         this.$hpmpArray[0] = new HPMP(0);
         this.parent.addChild(this.$hpmpArray[0]);
         this.$hpmpArray[1] = new HPMP(1);
         this.parent.addChild(this.$hpmpArray[1]);
         if(GameData.$mode == "TwoAll")
         {
            this.$hpmpArray[2] = new HPMP(0);
            this.parent.addChild(this.$hpmpArray[2]);
            this.$hpmpArray[2].y += 430;
            this.$hpmpArray[2].CDBoolean = false;
            this.$hpmpArray[3] = new HPMP(1);
            this.$hpmpArray[3].CDBoolean = false;
            this.parent.addChild(this.$hpmpArray[3]);
            this.$hpmpArray[3].y += 430;
            this.$hpmpArray[2].pointinit();
            this.$hpmpArray[3].pointinit();
         }
         this.$hpmpArray[0].pointinit();
         this.$hpmpArray[1].pointinit();
         this.$time = new Times(DataStorage.readImg("System_TIME"));
         this.parent.addChild(this.$time);
         this.addEventListener(Event.ENTER_FRAME,this.systemFrame);
         P2PData.clearVideo();
         this.newRole();
         this.drawBitmap = new Bitmap();
         this.parent.addChild(this.drawBitmap);
         this.mouseEnabled = false;
      }
      
      public function mapRedPoint(param1:int) : int
      {
         var _loc2_:* = 0;
         var _loc3_:* = this.$elementsOb["bit"]["bitmapData"];
         while(_loc3_.getPixel(param1,_loc2_) !== 16711680)
         {
            _loc2_++;
         }
         return _loc2_;
      }
      
      public function newRole() : void
      {
         if(!SystemState.$socketBoolean)
         {
            SystemState.$map = "role1";
            switch(GameData.$mode)
            {
               case "TwoAll":
                  this.askElements("role",{
                     "name":"role1",
                     "troops":0,
                     "target":GameData.$roleSelectArray[0],
                     "id":0
                  });
                  this.askElements("role",{
                     "name":"role2",
                     "troops":0,
                     "point":new Point(this.$map.width / 2 - 150 + 300 * 0 - 50,0),
                     "target":GameData.$roleSelectArray[1],
                     "id":1
                  });
                  if(SystemEvent._playVideoArray)
                  {
                     this.askElements("role",{
                        "name":"role3",
                        "troops":1,
                        "point":new Point(this.$map.width / 2 - 150 + 300 * 1,0),
                        "target":GameData.$roleSelectArray[2],
                        "id":2
                     });
                     this.askElements("role",{
                        "name":"role4",
                        "troops":1,
                        "point":new Point(this.$map.width / 2 - 150 + 300 * 1 + 50,0),
                        "target":GameData.$roleSelectArray[3],
                        "id":3
                     });
                  }
                  else
                  {
                     this.askElements("role",{
                        "name":"role3",
                        "troops":1,
                        "point":new Point(this.$map.width / 2 - 150 + 300 * 1,0),
                        "target":GameData.$fightArray[GameData.$fightTo],
                        "id":2
                     });
                     this.askElements("role",{
                        "name":"role4",
                        "troops":1,
                        "point":new Point(this.$map.width / 2 - 150 + 300 * 1 + 50,0),
                        "target":GameData.$fightArray[GameData.$fightTo + 1],
                        "id":3
                     });
                  }
                  this.$elementsOb["role3"].$scaleX = -1;
                  this.$elementsOb["role4"].$scaleX = -1;
                  break;
               case "SZ":
               case "1PALL":
                  if(GameData.ns_select == "none")
                  {
                     this.askElements("role",{
                        "name":"role1",
                        "troops":0,
                        "target":GameData.$roleSelectArray[0],
                        "id":0
                     });
                     this.askElements("role",{
                        "name":"role3",
                        "troops":1,
                        "target":GameData.$roleSelectArray[1],
                        "id":1
                     });
                  }
                  break;
               case "P2P":
               case "1P2P":
                  this.askElements("role",{
                     "name":"role1",
                     "troops":0,
                     "target":GameData.$roleSelectArray[0],
                     "id":0
                  });
                  this.askElements("role",{
                     "name":"role2",
                     "troops":1,
                     "target":GameData.$roleSelectArray[1],
                     "id":1
                  });
                  break;
               case "1PCOM":
                  this.askElements("role",{
                     "name":"role1",
                     "troops":0,
                     "target":GameData.$roleSelectArray[0],
                     "id":0
                  });
                  this.askElements("role",{
                     "name":"role3",
                     "troops":1,
                     "target":GameData.$roleSelectArray[1],
                     "id":1
                  });
                  break;
               case "COMCOM":
                  this.askElements("role",{
                     "name":"role4",
                     "troops":0,
                     "target":GameData.$roleSelectArray[0],
                     "id":0
                  });
                  this.askElements("role",{
                     "name":"role3",
                     "troops":1,
                     "target":GameData.$roleSelectArray[1],
                     "id":1
                  });
                  break;
               case "1PSB":
                  this.askElements("role",{
                     "name":"role1",
                     "troops":0,
                     "target":GameData.$roleSelectArray[0],
                     "id":0
                  });
                  this.askElements("role",{
                     "name":"role2",
                     "troops":1,
                     "target":GameData.$roleSelectArray[1],
                     "id":1
                  });
                  break;
               case "ONE_GROUP":
                  this.askElements("role",{
                     "name":"role1",
                     "troops":0,
                     "target":GameData.$roleSelectArray[0],
                     "id":0
                  });
                  this.askElements("role",{
                     "name":"role2",
                     "troops":1,
                     "target":GameData.$roleSelectArray[1],
                     "id":1
                  });
            }
         }
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onDown);
      }
      
      private function onDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.Q)
         {
         }
      }
      
      public function again() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         this._time = 0;
         var _loc1_:Object = {};
         for(_loc2_ in this.$elementsOb)
         {
            if(this.$elementsOb[_loc2_] is SystemGameRole || this.$elementsOb[_loc2_] is SkillShow)
            {
               if(_loc2_.indexOf("role") != -1 && this.$elementsOb[_loc2_] is SystemGameRole)
               {
                  _loc1_[_loc2_] = {
                     "data":this.$elementsOb[_loc2_].$ob,
                     "target":this.$elementsOb[_loc2_].roleTarget
                  };
               }
               this.$elementsOb[_loc2_].CG();
               this.$elementsOb[_loc2_] = null;
            }
         }
         this.$troops0 = [];
         this.$troops1 = [];
         this.$skill0 = [];
         this.$skill1 = [];
         this.newRole();
         this.Hei();
         for(_loc3_ in _loc1_)
         {
            if(this.$elementsOb[_loc3_] != null)
            {
               this.$elementsOb[_loc3_].$ob = _loc1_[_loc3_].data;
               this.$elementsOb[_loc3_].chanageRoleTarget(_loc1_[_loc3_].target);
            }
         }
      }
      
      public function Hei() : void
      {
         GameData.$1PALLSelect = false;
         this.$PD = "none";
         this.$OVER = 80;
         ComponentResourcesManage.$word.filters = [];
         ComponentResourcesManage.$word.$stop = false;
         if(this.$fightData == null)
         {
            this.$fightData = DataStorage.readImg("System_FIGHT");
            this.$fightXML = XML(DataStorage.readText("System_FIGHT"));
         }
         this.parent.addChild(this.$fight);
         this.$fight.bitmapData = BitmapDarw.xmlForBitmapData(this.$fightData,this.$fightXML.SubTexture[this.$GOFightFrame]);
         this.parent.addChild(this.$QHei);
         this.$QHei.alpha = 1;
         this.$fight.alpha = 0;
         this.$fight.visible = true;
         this.$GOFightFrame = 0;
         this.$fight.scaleX = 1;
         this.$fight.scaleY = 1;
         this.$fightOpenTime = 40;
         SystemMucisPlay.setMusic = "System_FIGHT1";
         if(this.$1P2P == null)
         {
            this.$1P2P = DataStorage.readImg("1P2P3P4P");
            this.$1P2Pxml = XML(DataStorage.readText("1P2P3P4P"));
         }
         this.$1P.bitmapData = BitmapDarw.xmlForBitmapData(this.$1P2P,this.$1P2Pxml.SubTexture[0]);
         this.$2P.bitmapData = BitmapDarw.xmlForBitmapData(this.$1P2P,this.$1P2Pxml.SubTexture[1]);
         if(GameData.$mode == "TwoAll")
         {
            this.$3P.bitmapData = BitmapDarw.xmlForBitmapData(this.$1P2P,this.$1P2Pxml.SubTexture[2]);
            this.$4P.bitmapData = BitmapDarw.xmlForBitmapData(this.$1P2P,this.$1P2Pxml.SubTexture[3]);
         }
      }
      
      public function allColor(param1:uint, param2:Number = 0) : void
      {
         this.$ColorSpeed = param2;
         if(this.$Color.bitmapData is BitmapData)
         {
            this.$Color.bitmapData.dispose();
            this.$Color.bitmapData = null;
         }
         this.$Color.bitmapData = new BitmapData(stage.stageWidth,stage.stageHeight,false,param1);
         this.parent.addChild(this.$Color);
         this.$Color.alpha = 1;
      }
      
      private function systemFrame(param1:Event) : void
      {
         var _loc20_:* = undefined;
         var _loc21_:* = undefined;
         var _loc22_:Object = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = false;
         var _loc15_:* = null;
         var _loc16_:* = false;
         var _loc17_:* = false;
         var _loc18_:* = null;
         var _loc19_:* = null;
         if(Main.IS_PREVIEW)
         {
            Fps.visible = true;
         }
         if(!this.$stop && GameData.$stageBoolean)
         {
            if(SystemEvent.getP2PType() == "fight")
            {
               P2PData.p2p.send("onMapData",P2PData.conversionWorldData(this));
            }
            else if(SystemEvent.getP2PType() == "" && Main.IS_PHONE == false)
            {
               P2PData.conversionWorldData(this);
            }
            if(GameData.$fightBoolean)
            {
               _loc20_ = this;
               _loc21_ = this._time + 1;
               _loc20_._time = _loc21_;
            }
            SystemMucisPlay.$atTimeArray = [];
            if(SystemEvent.getP2PType() == "accept")
            {
               _loc4_ = SystemEvent.getMapData();
               if(_loc4_)
               {
                  _loc5_ = 0;
                  while(_loc5_ < this.$hpmpArray.length)
                  {
                     (this.$hpmpArray[_loc5_].$role as SystemGameRole).sethp(_loc4_["p" + (_loc5_ + 1)].hp);
                     (this.$hpmpArray[_loc5_].$role as SystemGameRole).$mp = _loc4_["p" + (_loc5_ + 1)].mp;
                     (this.$hpmpArray[_loc5_].$role as SystemGameRole).$skillCD = _loc4_["p" + (_loc5_ + 1)].cd;
                     if(_loc4_["p" + (_loc5_ + 1)].hit)
                     {
                        (this.$hpmpArray[_loc5_] as HPMP).addNum(_loc4_["p" + (_loc5_ + 1)].hit);
                     }
                     _loc5_++;
                  }
                  this.$time.$fightTime = _loc4_.time;
                  if(this.$time.$fightTime == 0 && Boolean(SystemEvent._playVideoArray))
                  {
                     this.$time.$fightTime = 99;
                  }
                  this.$map.$zhen = _loc4_.zhen;
                  for(_loc6_ in _loc4_.world)
                  {
                     _loc10_ = _loc4_.world[_loc6_].name;
                     _loc11_ = _loc4_.world[_loc6_].data ? _loc4_.world[_loc6_].data.type : null;
                     if(this.$elementsOb[_loc10_] is SystemGameRole || this.$elementsOb[_loc10_] is SkillShow || this.$elementsOb[_loc10_] is HurtMath || this.$elementsOb[_loc10_] is QZ)
                     {
                        if(_loc4_.world[_loc6_].data.type == "role")
                        {
                           this.$elementsOb[_loc10_].$x = _loc4_.world[_loc6_].data.x ? _loc4_.world[_loc6_].data.x : _loc4_.world[_loc6_].x;
                           this.$elementsOb[_loc10_].$y = _loc4_.world[_loc6_].data.y ? _loc4_.world[_loc6_].data.y : _loc4_.world[_loc6_].y;
                        }
                        if(_loc4_.world[_loc6_].data.type == "role")
                        {
                           this.$elementsOb[_loc10_].toFrame(_loc4_.world[_loc6_]);
                        }
                        else if(_loc4_.world[_loc6_].data.type == "skill")
                        {
                           this.$elementsOb[_loc10_].toFrame(_loc4_.world[_loc6_]);
                        }
                        else
                        {
                           this.$elementsOb[_loc10_].toFrame();
                        }
                     }
                     else if(_loc11_ == "skill")
                     {
                        _loc12_ = _loc4_.world[_loc6_].data;
                        this.askElements("skill",{
                           "name":_loc12_.target,
                           "scaleX":_loc12_.scaleX,
                           "scaleY":_loc12_.scaleY,
                           "blendMode":_loc12_.blendMode,
                           "color":_loc12_.color
                        },_loc10_);
                        this.$elementsOb[_loc10_].$x = _loc12_.x ? _loc12_.x : _loc4_.world[_loc6_].x;
                        this.$elementsOb[_loc10_].$y = _loc12_.y ? _loc12_.y : _loc4_.world[_loc6_].y;
                     }
                     else if(_loc11_ == "role")
                     {
                        _loc13_ = _loc4_.world[_loc6_].data;
                        this.askElements("role",{
                           "name":_loc10_,
                           "target":_loc13_.target,
                           "troops":0,
                           "id":-1
                        },_loc10_);
                        this.$elementsOb[_loc10_].$x = _loc13_.x ? _loc13_.x : _loc4_.world[_loc6_].x;
                        this.$elementsOb[_loc10_].$y = _loc13_.y ? _loc13_.y : _loc4_.world[_loc6_].y;
                     }
                     else if(_loc11_ == "hurt")
                     {
                        this.askElements("hurt",{
                           "hurt":_loc4_.world[_loc6_].data.hurt,
                           "point":new Point(_loc4_.world[_loc6_].x,_loc4_.world[_loc6_].y)
                        },_loc10_);
                     }
                  }
                  _loc7_ = [];
                  for(_loc8_ in this.$elementsOb)
                  {
                     _loc14_ = true;
                     for(_loc15_ in _loc4_.world)
                     {
                        if(_loc4_.world[_loc15_].name == _loc8_)
                        {
                           _loc14_ = false;
                           break;
                        }
                     }
                     if(_loc14_)
                     {
                        _loc7_.push(_loc8_);
                     }
                  }
                  for(_loc9_ in _loc7_)
                  {
                     this.delElements(_loc7_[_loc9_] as String);
                  }
               }
               else if(SystemEvent._playVideoArray)
               {
                  this.CG();
                  ComponentResourcesManage.$stage.init2();
                  return;
               }
            }
            else
            {
               for(_loc22_ in this.$elementsOb)
               {
                  if(this.$elementsOb[_loc22_] is SystemGameRole || this.$elementsOb[_loc22_] is SkillShow || this.$elementsOb[_loc22_] is HurtMath || this.$elementsOb[_loc22_] is QZ)
                  {
                     this.$elementsOb[_loc22_].toFrame();
                  }
               }
            }
            for(_loc2_ in this.$hpmpArray)
            {
               if(this.$hpmpArray[_loc2_])
               {
                  (this.$hpmpArray[_loc2_] as HPMP).onFrame();
               }
            }
            if(this.$Color.alpha > 0)
            {
               this.$Color.alpha -= this.$ColorSpeed;
            }
            this.addChild(this.$1P);
            this.$1P.x -= (this.$1P.x - (this.$hpmpArray[0].$role.$x - this.$1P.width / 2)) * 0.2;
            this.$1P.y = this.$hpmpArray[0].$role.$y;
            this.addChild(this.$2P);
            if(this.$hpmpArray[1].$role)
            {
               this.$2P.x -= (this.$2P.x - (this.$hpmpArray[1].$role.$x - this.$2P.width / 2)) * 0.2;
               this.$2P.y = this.$hpmpArray[1].$role.$y;
            }
            else
            {
               this.$2P.visible = false;
            }
            if(GameData.$mode == "TwoAll")
            {
               this.addChild(this.$3P);
               this.addChild(this.$4P);
               this.$3P.x -= (this.$3P.x - (this.$hpmpArray[2].$role.$x - this.$3P.width / 2)) * 0.2;
               this.$3P.y = this.$hpmpArray[2].$role.$y;
               this.$4P.x -= (this.$4P.x - (this.$hpmpArray[3].$role.$x - this.$4P.width / 2)) * 0.2;
               this.$4P.y = this.$hpmpArray[3].$role.$y;
            }
            _loc3_ = this.midpoint();
            this.$map.toFrame(_loc3_.x,_loc3_.y,_loc3_.w,_loc3_.h);
            if(this.$QHei.alpha > 0)
            {
               this.$QHei.alpha -= 0.1;
            }
            else if(GameData.ns_select == "none")
            {
               if(this.$fight.visible)
               {
                  if(this.$fight.alpha < 1 && this.$fightOpenTime > 0)
                  {
                     this.$fight.alpha += 0.2;
                  }
                  else if(this.$fightOpenTime > 0)
                  {
                     _loc20_ = this;
                     _loc21_ = this.$fightOpenTime - 1;
                     _loc20_.$fightOpenTime = _loc21_;
                  }
                  else if(this.$fight.scaleX < 3)
                  {
                     if(this.$fight.scaleX == 1 && this.$GOFightFrame == 1)
                     {
                        SystemMucisPlay.setMusic = "System_FIGHT2";
                     }
                     this.$fight.scaleX += 0.25;
                     this.$fight.scaleY += 0.25;
                     this.$fight.alpha -= 0.1;
                  }
                  else if(this.$GOFightFrame < 1)
                  {
                     this.$fight.scaleX = 1;
                     this.$fight.scaleY = 1;
                     this.$fightOpenTime = 30;
                     _loc20_ = this;
                     _loc21_ = this.$GOFightFrame + 1;
                     _loc20_.$GOFightFrame = _loc21_;
                     this.$fight.alpha = 0;
                     this.$fight.bitmapData.dispose();
                     this.$fight.bitmapData = BitmapDarw.xmlForBitmapData(this.$fightData,this.$fightXML.SubTexture[this.$GOFightFrame]);
                  }
                  else
                  {
                     this.$fight.visible = false;
                     GameData.$fightBoolean = true;
                     this.$time.$fightTime = GameData.$game_time;
                  }
                  this.$fight.x = stage.stageWidth / 2 - this.$fight.width / 2;
                  this.$fight.y = stage.stageHeight / 2 - this.$fight.height / 2;
               }
               else if(GameData.$fightBoolean && GameData.$mode !== "1PSB")
               {
                  _loc16_ = false;
                  _loc17_ = false;
                  if(GameData.$mode == "TwoAll")
                  {
                     if(this.$hpmpArray[0].$role.gethp <= 0 && this.$hpmpArray[1].$role.gethp <= 0)
                     {
                        _loc17_ = true;
                     }
                     if(this.$hpmpArray[2].$role.gethp <= 0 && this.$hpmpArray[3].$role.gethp <= 0)
                     {
                        _loc16_ = true;
                     }
                  }
                  else
                  {
                     if(this.$hpmpArray[0].$role.gethp <= 0)
                     {
                        _loc17_ = true;
                     }
                     if(this.$hpmpArray[1].$role.gethp <= 0)
                     {
                        _loc16_ = true;
                     }
                  }
                  if(!(Boolean(_loc16_) && Boolean(_loc17_)))
                  {
                     if(_loc16_)
                     {
                        this.$hpmpArray[0].addWin();
                        this.addScore();
                        if(GameData.$mode == "TwoAll" || GameData.$mode == "SZ")
                        {
                           this.$hpmpArray[0].addWin();
                        }
                     }
                     else if(_loc17_)
                     {
                        this.$hpmpArray[1].addWin();
                        if(GameData.$mode == "TwoAll" || GameData.$mode == "SZ")
                        {
                           this.$hpmpArray[1].addWin();
                        }
                     }
                  }
                  this.$time.toFrame();
                  if(Boolean(_loc16_) || Boolean(_loc17_))
                  {
                     this.$PD = "KO";
                     SystemMucisPlay.setMusic = "KO";
                     this.KO = new EasyGIF(DataStorage.readImg("KO"),XML(DataStorage.readText("KO")),"NORMAL",true);
                     this.parent.addChild(this.KO);
                     this.KO.scaleX = 3;
                     this.KO.scaleY = 3;
                     GameData.$fightBoolean = false;
                  }
                  else if(this.$time.$fightTime <= 0 && GameData.$game_time !== 0)
                  {
                     this.$PD = "TimeOver";
                     GameData.$fightBoolean = false;
                     if(this.$hpmpArray[0].$role.gethp > this.$hpmpArray[1].$role.gethp)
                     {
                        this.$hpmpArray[0].addWin();
                        if(GameData.$mode == "TwoAll" || GameData.$mode == "SZ")
                        {
                           this.$hpmpArray[0].addWin();
                        }
                        this.addScore();
                     }
                     else if(this.$hpmpArray[0].$role.gethp < this.$hpmpArray[1].$role.gethp)
                     {
                        this.$hpmpArray[1].addWin();
                        if(GameData.$mode == "TwoAll" || GameData.$mode == "SZ")
                        {
                           this.$hpmpArray[1].addWin();
                        }
                     }
                     if(this.$TimeOver.bitmapData == null)
                     {
                        this.$TimeOver.bitmapData = DataStorage.readImg("Fight_TIMEOVER");
                     }
                     this.$TimeOver.alpha = 1;
                     this.parent.addChild(this.$TimeOver);
                     this.$TimeOver.scaleX = 3;
                     this.$TimeOver.scaleY = 3;
                  }
               }
               else if(!GameData.$fightBoolean)
               {
                  if(this.$OVER <= 0)
                  {
                     if((GameData.$mode == "1PALL" || GameData.$mode == "SZ" || GameData.$mode == "TwoAll") && this.$hpmpArray[0].$win >= 2)
                     {
                        GameScore.flush();
                        if(GameData.$mode == "SZ")
                        {
                           _loc19_ = this.$hpmpArray[0].$role as SystemGameRole;
                           GameData.SZRoleObject.hp = _loc19_.gethp;
                           if(GameData.SZRoleObject.hp <= 0)
                           {
                              GameData.SZRoleObject.hp = 1;
                           }
                           R4399Main.setLayer(GameData.$fightTo,_loc19_.gethp,GameData.$roleSelectArray[0]);
                           R4399Main.saveData();
                        }
                        else if(GameData.$mode == "1PALL")
                        {
                           R4399Main.setCGLayer(GameData.$fightTo,GameData.$roleSelectArray[0]);
                           R4399Main.saveData();
                        }
                        _loc18_ = new GameWinLayer();
                        _loc18_.setTips(GameData.getTips());
                        this.parent.addChild(_loc18_);
                        if(GameData.$fightTo == 1)
                        {
                           _loc18_.initFightAndPro(0,0);
                        }
                        _loc18_.setFight(GameScore.getScore());
                        _loc18_.setFightPro(GameData.$fightTo / GameData.$fightArray.length);
                        _loc18_.setND(Main.NDString());
                        _loc18_.mc.addChild(new Bitmap(DataStorage.readImg("FightVS" + GameData.$roleSelectArray[0])));
                        _loc18_.addEventListener(GameWinEvent.GAME_CONNECT,SystemEvent.continueGame);
                        if(GameData.$mode == "SZ")
                        {
                           R4399Main.setSZScore(GameData.$roleSelectArray[0],GameScore.getScore());
                        }
                        else if(GameData.$mode == "TwoAll")
                        {
                           R4399Main.setSRScore(GameData.$roleSelectArray[0],GameScore.getScore());
                           R4399Main.setSRScore(GameData.$roleSelectArray[1],GameScore.getScore());
                        }
                        else if(GameData.$mode == "1PALL")
                        {
                           R4399Main.setCGScore(GameData.$roleSelectArray[0],GameScore.getScore());
                        }
                        this.CG(false);
                     }
                     else if(this.$hpmpArray[0].$win < 2 && this.$hpmpArray[1].$win < 2)
                     {
                        this.again();
                     }
                     else if(!GameData.$1PALLSelect)
                     {
                        if(GameData.$mode == "1PALL" || GameData.$mode == "SZ" || GameData.$mode == "TwoAll")
                        {
                           GameData.$1PALLSelect = true;
                        }
                        else
                        {
                           this.CG(true);
                        }
                     }
                     else if(!ComponentResourcesManage.$stage.$box.visible)
                     {
                        ComponentResourcesManage.$stage.$box.$api.addShow("是否继续挑战","是(Y)   否(N)",true);
                     }
                  }
                  else
                  {
                     _loc20_ = this;
                     _loc21_ = this.$OVER - 1;
                     _loc20_.$OVER = _loc21_;
                     if(this.$PD == "KO")
                     {
                        if(this.KO.scaleX > 2)
                        {
                           this.KO.scaleX -= 0.1;
                           this.KO.scaleY -= 0.1;
                        }
                        this.KO.x = stage.stageWidth / 2 - this.KO.width / 2;
                        this.KO.y = stage.stageHeight / 2 - this.KO.height / 2;
                     }
                     else if(this.$PD == "TimeOver")
                     {
                        if(this.$TimeOver.scaleX > 1)
                        {
                           this.$TimeOver.scaleX -= 0.1;
                           this.$TimeOver.scaleY -= 0.1;
                        }
                        else if(this.$TimeOver.alpha > 0 && this.$OVER < 30)
                        {
                           this.$TimeOver.alpha -= 0.1;
                        }
                        this.$TimeOver.x = stage.stageWidth / 2 - this.$TimeOver.width / 2;
                        this.$TimeOver.y = stage.stageHeight / 2 - this.$TimeOver.height / 2;
                     }
                  }
               }
            }
            else if(!GameData.$fightBoolean)
            {
               this.m_duihuakuang.frame();
            }
            else if(this.$troops1.length == 0 && !GameData.ns_end)
            {
               GameData.$fightBoolean = false;
            }
         }
      }
      
      public function addScore() : void
      {
         var _loc1_:* = NaN;
         var _loc2_:* = null;
         if(this._time / 36 < 99)
         {
            _loc1_ = (99 - this._time / 36) / 99;
            GameScore.addScore(_loc1_ * 100);
            _loc2_ = this.$hpmpArray[0].$role;
            GameScore.addScore(_loc2_.gethp / _loc2_.$hpMax * 300 * _loc1_);
            if(_loc2_.$hpMax == _loc2_.gethp)
            {
               GameScore.addScore(50);
            }
            if(this.$hpmpArray[1].$win == 0 && this.$hpmpArray[0].$win == 2)
            {
               GameScore.addScore(100);
            }
         }
      }
      
      public function midpoint() : Object
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = undefined;
         if(GameData.ns_select == "none")
         {
            _loc1_ = int(this.$troops0[0].$x);
            _loc2_ = int(this.$troops1[0].$x);
            _loc3_ = int(this.$troops0[0].$y);
            _loc4_ = int(this.$troops1[0].$y);
            for(_loc5_ in this.$troops0)
            {
               if(this.$troops0[_loc5_].gethp > 0)
               {
                  if(this.$troops0[_loc5_].$x > _loc1_)
                  {
                     _loc1_ = int(this.$troops0[_loc5_].$x);
                  }
                  if(this.$troops0[_loc5_].$x < _loc2_)
                  {
                     _loc2_ = int(this.$troops0[_loc5_].$x);
                  }
                  if(this.$troops0[_loc5_].$y > _loc3_)
                  {
                     _loc3_ = int(this.$troops0[_loc5_].$y);
                  }
                  if(this.$troops0[_loc5_].$y < _loc4_)
                  {
                     _loc4_ = int(this.$troops0[_loc5_].$y);
                  }
               }
            }
            for(_loc5_ in this.$troops1)
            {
               if(this.$troops1[_loc5_].gethp > 0)
               {
                  if(this.$troops1[_loc5_].$x > _loc1_)
                  {
                     _loc1_ = int(this.$troops1[_loc5_].$x);
                  }
                  if(this.$troops1[_loc5_].$x < _loc2_)
                  {
                     _loc2_ = int(this.$troops1[_loc5_].$x);
                  }
                  if(this.$troops1[_loc5_].$y > _loc3_)
                  {
                     _loc3_ = int(this.$troops1[_loc5_].$y);
                  }
                  if(this.$troops1[_loc5_].$y < _loc4_)
                  {
                     _loc4_ = int(this.$troops1[_loc5_].$y);
                  }
               }
            }
            return {
               "x":(_loc1_ + _loc2_) / 2,
               "y":(_loc3_ + _loc4_) / 2,
               "w":Math.abs(_loc1_ - _loc2_),
               "h":Math.abs(_loc3_ - _loc4_)
            };
         }
         return {
            "x":this.$elementsOb["role1"].$x,
            "y":this.$elementsOb["role1"].$y,
            "w":0,
            "h":0
         };
      }
      
      public function fordata(param1:Array) : String
      {
         var _loc3_:* = undefined;
         var _loc2_:String = "";
         for(_loc3_ in param1)
         {
            _loc2_ += param1[_loc3_].name + " ";
         }
         return _loc2_;
      }
      
      public function askElements(param1:String, param2:Object = null, param3:String = null) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         switch(param1)
         {
            case "hurt":
               _loc4_ = new HurtMath(param2.hurt,param2.point);
               _loc4_.name = param3 ? param3 : "hurt" + Math.random();
               this.$elementsOb[_loc4_.name] = _loc4_;
               this.$elements.addChild(_loc4_);
               break;
            case "role":
               _loc5_ = new SystemGameRole(param2.target);
               this.$elements.addChild(_loc5_);
               _loc5_.name = param3 ? param3 : param2.name;
               _loc5_.init();
               if(param2.point == undefined)
               {
                  _loc5_.$x = this.$map.width / 2 - 150 + 300 * param2.id;
                  _loc5_.$y = 300;
                  _loc5_.$scaleX = 1 - 2 * param2.id;
                  _loc5_.DZ();
               }
               else
               {
                  _loc5_.$x = param2.point.x;
                  _loc5_.$y = param2.point.y;
                  if(param2.point.y == 0)
                  {
                     _loc5_.DZ();
                  }
               }
               if(param2.hp !== undefined)
               {
                  _loc5_.$hpMax = param2.hp;
                  _loc5_.sethp(param2.hp);
               }
               if(param2.scaleX)
               {
                  _loc5_.$scaleX = param2.scaleX;
               }
               this.$elementsOb[param2.name] = _loc5_;
               this.$elementsOb.setPropertyIsEnumerable(param2.name,true);
               _loc5_.$troops = param2.troops;
               this["$troops" + param2.troops].push(_loc5_);
               if(param2.id !== -1)
               {
                  this.$elementsOb[param2.name].$hpID = param2.id;
                  this.$hpmpArray[param2.id].role = _loc5_;
               }
               if(Boolean(GameData.$mode == "SZ" && GameData.$fightTo > 1) && Boolean(GameData.SZRoleObject.hp) && param2.name == "role1")
               {
                  _loc5_.$hpMax = GameData.SZRoleObject.hp * 1.05;
                  if(_loc5_.$hpMax > 2500)
                  {
                     _loc5_.$hpMax = 2500;
                  }
                  _loc5_.sethp(_loc5_.$hpMax);
               }
               break;
            case "skill":
               if(param2.scaleX == 0 || param2.scaleY == 0)
               {
                  return;
               }
               if(param2.target == true)
               {
                  _loc6_ = "Skill" + param2.role.name + param2.name;
               }
               else
               {
                  _loc6_ = "Skill" + Math.random() * 9999;
               }
               if(param2.setName)
               {
                  _loc6_ = param2.setName;
               }
               if(param3)
               {
                  _loc6_ = param3;
               }
               if(param2.blendMode !== undefined && param2.blendMode != null)
               {
                  this.$elementsOb[_loc6_] = new SkillShow(param2.name,param2.type,param2.role,param2.di,param2.fuck,param2.blendMode);
               }
               else
               {
                  this.$elementsOb[_loc6_] = new SkillShow(param2.name,param2.type,param2.role,param2.di,param2.fuck);
               }
               if(param2.mode !== undefined)
               {
                  this.$elementsOb[_loc6_].$mode = param2.mode;
               }
               if(param2.ka !== undefined)
               {
                  this.$elementsOb[_loc6_].$katime = param2.ka[1];
                  this.$elementsOb[_loc6_].$okHit = param2.ka[0];
               }
               if(param2.color !== undefined && param2.color != null)
               {
                  this.$elementsOb[_loc6_].skillColor = param2.color;
                  _loc7_ = new ColorMatrixFilter(param2.color);
                  this.$elementsOb[_loc6_].filters = [_loc7_];
               }
               else if(param2.tx == true && param2.role.$class["$mx"] !== undefined)
               {
                  _loc7_ = new ColorMatrixFilter(param2.role.$class["$mx"]);
                  this.$elementsOb[_loc6_].filters = [_loc7_];
               }
               if(param2.colorBoolean !== undefined)
               {
                  this.$elementsOb[_loc6_].$color = param2.colorBoolean;
               }
               if(param2.hitY !== undefined)
               {
                  this.$elementsOb[_loc6_].hitY = param2.hitY;
               }
               if(param2.hitX !== undefined)
               {
                  this.$elementsOb[_loc6_].hitX = param2.hitX;
               }
               if(param2.hitEff !== undefined)
               {
                  this.$elementsOb[_loc6_].hitEff = param2.hitEff;
               }
               if(param2.hurt !== undefined)
               {
                  this.$elementsOb[_loc6_].hurt = param2.hurt;
               }
               if(param2.stiff != undefined)
               {
                  this.$elementsOb[_loc6_].stiff = param2.stiff;
               }
               if(param2.isBreak != undefined)
               {
                  this.$elementsOb[_loc6_].isBreak = param2.isBreak;
               }
               if(param2.isFollow != undefined && Boolean(param2.isFollow))
               {
                  this.$elementsOb[_loc6_].followPoint = new Point(param2.x - param2.role.$x,param2.y - param2.role.$y);
               }
               if(Boolean(param2.isLock != undefined) && Boolean(param2.isLock) && Boolean(param2.role))
               {
                  this.$elementsOb[_loc6_].lockActionName = (param2.role as SystemGameRole).$frameString;
               }
               if(param2.down !== undefined)
               {
                  this.$elements.addChildAt(this.$elementsOb[_loc6_],0);
               }
               else
               {
                  this.$elements.addChild(this.$elementsOb[_loc6_]);
               }
               if(param2.findName != undefined)
               {
                  this.$elementsOb[_loc6_].findName = param2.role.name + "_" + param2.findName;
               }
               this.$elementsOb.setPropertyIsEnumerable(_loc6_,true);
               this.$elementsOb[_loc6_].name = _loc6_;
               this.$elementsOb[_loc6_].$gox = param2.gox;
               this.$elementsOb[_loc6_].$goy = param2.goy;
               this.$elementsOb[_loc6_].$scaleX = param2.scaleX;
               if(param2.scaleY !== undefined)
               {
                  this.$elementsOb[_loc6_].$scaleY = param2.scaleY;
               }
               else
               {
                  this.$elementsOb[_loc6_].$scaleY = Math.abs(param2.scaleX);
               }
               if(param2.scaleX > 0)
               {
                  this.$elementsOb[_loc6_].$scale = 1;
               }
               else
               {
                  this.$elementsOb[_loc6_].$scale = -1;
               }
               if(param2.troops !== undefined)
               {
                  this.$elementsOb[_loc6_].$troopsBoolean = param2.troops;
                  this["$skill" + param2.troops].push(this.$elementsOb[_loc6_]);
                  if(param2.hp !== undefined)
                  {
                     this.$elementsOb[_loc6_].$hp = param2.hp;
                     this.$elementsOb[_loc6_].isCanHit = true;
                  }
               }
               if(param2.fps !== undefined)
               {
                  this.$elementsOb[_loc6_].$fps = param2.fps;
               }
               this.$elementsOb[_loc6_].$x = param2.x;
               this.$elementsOb[_loc6_].$y = param2.y;
               this.$elementsOb[_loc6_].setTime(param2.time);
               this.$elementsOb[this.$elementsOb[_loc6_].name] = this.$elementsOb[_loc6_];
         }
      }
      
      public function delElements(param1:String) : void
      {
         var _loc2_:* = param1;
         if(this.$elementsOb[_loc2_] !== null)
         {
            try
            {
               this.$elements.removeChild(this.$elementsOb[_loc2_]);
               delete this.$elementsOb[_loc2_];
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function getSkillEffectFormFindName(param1:String) : SkillShow
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1 == null || param1 == "")
         {
            return null;
         }
         for(_loc2_ in this.$elementsOb)
         {
            _loc3_ = this.$elementsOb[_loc2_] as SkillShow;
            if(Boolean(_loc3_) && _loc3_.findName == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function CG(param1:Boolean = false) : void
      {
         var i:* = undefined;
         var q:* = undefined;
         var video:VideoSaveLayer = null;
         var _loc_3:* = undefined;
         var _loc_4:* = undefined;
         var bool:* = param1;
         if(bool)
         {
            GameData.ns_select = "cg";
         }
         if(this.$TimeOver.bitmapData !== null)
         {
            this.$TimeOver.bitmapData.dispose();
            this.parent.removeChild(this.$TimeOver);
            this.$TimeOver = null;
         }
         this.$1P.bitmapData.dispose();
         this.removeChild(this.$1P);
         this.$1P = null;
         this.$2P.bitmapData.dispose();
         this.removeChild(this.$2P);
         this.$2P = null;
         this.$hpmpArray[1].CG();
         this.$fightData.dispose();
         this.$fightArray = null;
         this.$fightXML = null;
         this.$QHei.bitmapData.dispose();
         this.removeEventListener(Event.ENTER_FRAME,this.systemFrame);
         this.parent.removeChild(this.$fight);
         this.$map.CG();
         _loc_3 = 0;
         _loc_4 = this.$elementsOb;
         while(_loc_4 in _loc_3)
         {
            i = _loc_4[_loc_3];
            if(_loc_4[i] is SystemGameRole || _loc_4[i] is SkillShow)
            {
               _loc_4[i].CG();
            }
         }
         this.$elementsOb = null;
         _loc_3 = 0;
         _loc_4 = this.$elements;
         while(_loc_4 in _loc_3)
         {
            q = _loc_4[_loc_3];
            _loc_4[q].removeChild(_loc_4[q]);
         }
         this.removeChild(this.$elements);
         this.parent.removeChild(this.$QHei);
         this.parent.removeChild(this.$Color);
         this.$Color.bitmapData.dispose();
         this.$Color = null;
         this.$hpmpArray[0].CG();
         if(GameData.$mode == "TwoAll")
         {
            this.$hpmpArray[2].CG();
            this.$hpmpArray[3].CG();
            this.$3P.bitmapData.dispose();
            this.$4P.bitmapData.dispose();
            this.removeChild(this.$3P);
            this.removeChild(this.$4P);
            this.$3P = null;
            this.$4P = null;
         }
         this.$hpmpArray = null;
         this.$time.CG();
         this.$time = null;
         this.$setPhoto.CG();
         this.$setPhoto = null;
         ComponentResourcesManage.$word = null;
         ComponentResourcesManage.$Ob["SystemWord"] = null;
         this.parent.removeChild(this);
         if(NSGameData.ns)
         {
            SystemEvent.case_NS_Save();
         }
         if(GameData.ns_select == "cg" || GameData.ns_select == "over")
         {
            if(SystemEvent._playVideoArray != null)
            {
               ComponentResourcesManage.$stage.init2();
               return;
            }
            if(ComponentResourcesManage.$stage.$lvexp)
            {
               ComponentResourcesManage.$stage.$lvexp.vis = false;
            }
            if(GameData.$mode == "1PALL" || GameData.$mode == "TwoAll" || GameData.$mode == "SZ")
            {
               if(GameData.ns_select == "over")
               {
                  SystemEvent.case_NS();
               }
               else
               {
                  ComponentResourcesManage.$stage.init2();
               }
            }
            else
            {
               GameData.ns_select = "none";
               switch(GameData.$mode)
               {
                  case "P2P":
                     ComponentResourcesManage.askResources("SelectRole","SelectRole",{"mode":"P2P"},true);
                     break;
                  case "1P2P":
                     SystemEvent.case_1P_VS_2P();
                     break;
                  case "1PCOM":
                     SystemEvent.case_1P_VS_COM();
                     break;
                  case "COMCOM":
                     SystemEvent.case_COM_VS_COM();
                     break;
                  case "1PSB":
                     SystemEvent.case_1P_VS_SB();
                     break;
                  case "NS":
               }
            }
            this.$troops0 = [];
            this.$troops1 = [];
         }
         if(this.m_duihuakuang)
         {
            this.m_duihuakuang.parent.removeChild(this.m_duihuakuang);
            this.m_duihuakuang = null;
         }
         GameData.ns_end = null;
         if(P2PData._isVideo)
         {
            video = new VideoSaveLayer();
            video["txt"].text = "未压缩大小：" + int(P2PData.videoData.length / 1024) + "kb";
            ComponentResourcesManage.$stage.addChild(video);
            video.save().addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               P2PData.saveVideo();
               param1.target.parent.parent.removeChild(param1.target.parent);
            });
         }
         ComponentResourcesManage.$word = null;
         try
         {
            this.removeChildren();
         }
         catch(e:Error)
         {
         }
      }
   }
}

