package SystemComponent.Word
{
   import SystemComponent.*;
   import SystemEye.*;
   import eye.Draw.*;
   import flash.display.*;
   import flash.geom.*;
   import flash.utils.*;
   import game2016.*;
   
   public class SkillShow extends Bitmap
   {
      
      public var $target:String = "";
      
      public var $skillType:String = "";
      
      private var $class:Class;
      
      public var $role:SystemGameRole;
      
      public var $di:SystemGameRole;
      
      public var $bitmapData:BitmapData;
      
      public var $xml:XML;
      
      public var $x:int = 0;
      
      public var $y:int = 0;
      
      private var $drawBoolean:Boolean = false;
      
      public var $frameInt:int = 0;
      
      public var $scaleX:Number = 1;
      
      public var $scaleY:Number = 1;
      
      public var $scale:Number = 1;
      
      public var $fuckBoolean:Boolean = false;
      
      private var $head:int = 0;
      
      private var $end:int = 0;
      
      private var $toFuck:int = -1;
      
      public var $time:int = 0;
      
      public var $gox:int = 0;
      
      public var $goy:int = 0;
      
      public var $troops:int = 0;
      
      public var $ob:Object;
      
      public var $pi:int = 0;
      
      private var $pimx:Matrix;
      
      public var $color:Array;
      
      public var findName:String = "";
      
      public var $hit:int = 0;
      
      public var $okHit:int = 0;
      
      public var $katime:int = 0;
      
      public var isBreak:Boolean = false;
      
      public var followPoint:Point = null;
      
      public var lockActionName:String;
      
      public var isCanHit:Boolean = false;
      
      public var $troopsBoolean:int = -1;
      
      public var $hp:int = 1;
      
      public var $mode:String = "skill";
      
      public var skillColor:Array = null;
      
      public var hitY:int = 404;
      
      public var hitX:int = 404;
      
      public var hitEff:String = null;
      
      public var hurt:int = 404;
      
      public var stiff:int = 404;
      
      public var roleFrameString:String;
      
      private var $mx:Boolean = true;
      
      private var _currentFrame:int = -1;
      
      private var hitStop:int = 0;
      
      public var $fuck:int = 0;
      
      private var $fuckMath:int = 0;
      
      public var $Diarray:Array;
      
      public var $fps:int = 2;
      
      private var $fpsMath:int = 0;
      
      public function SkillShow(param1:String, param2:Object, param3:SystemGameRole, param4:SystemGameRole, param5:int = 0, param6:String = "screen")
      {
         super();
         this.$ob = new Object();
         this.$Diarray = new Array();
         this.roleFrameString = param3 ? param3.$frameString : "";
         this.lockActionName = null;
         this.$pimx = this.transform.matrix;
         if(param2 is String)
         {
            this.$target = param2 as String;
         }
         else
         {
            this.$target = param1;
         }
         this.$skillType = param1;
         this.$fuck = param5;
         this.$role = param3;
         this.$di = param4;
         if(param3 !== null)
         {
            this.$troops = param3.$troops;
         }
         this.$bitmapData = DataStorage.readImg(param1);
         this.$xml = XML(DataStorage.readText(param1));
         this.blendMode = param6;
         if(String(this.$xml.@sound) !== "")
         {
            SystemMucisPlay.setMusic = String(this.$xml.@sound);
         }
         if(param5 > 0)
         {
            if(this.$xml.@fuck == undefined)
            {
               this.$fuckBoolean = true;
            }
            else
            {
               this.$toFuck = int(this.$xml.@fuck);
            }
         }
         try
         {
            if(this.$target == "SkillParsing")
            {
               this.$class = SkillParsing;
            }
            else
            {
               this.$class = getDefinitionByName("SystemComponent.Word.Skill." + this.$target) as Class;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public function toFrame(param1:Object = null) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(SystemEvent.getP2PType() == "accept")
         {
            if(Boolean(param1) && (!GameData.$KaBoolean || this.$mode == "tx"))
            {
               this.$frameInt = param1.data.frame;
               this.$drawBoolean = false;
               this.$x = param1.data.x;
               this.$y = param1.data.y;
               this.updateDraw();
               this._currentFrame = this.$frameInt;
            }
         }
         else
         {
            if(this.hitStop > 0)
            {
               _loc2_ = this;
               _loc3_ = this.hitStop - 1;
               _loc2_.hitStop = _loc3_;
               return;
            }
            if(!GameData.$KaBoolean || this.$mode == "tx")
            {
               this.getFuck();
               this.updateXY();
               this.updateFrame();
               if(this.$class !== null)
               {
                  _loc2_ = this.$class;
                  _loc2_["Buff"](this.$role,this);
               }
               this.updateDraw();
               this.time();
               if(this.$fuckBoolean)
               {
                  if(this.$role)
                  {
                     this.hitRole();
                  }
               }
               if(this.$troops !== -1 && this.$hp <= 0)
               {
                  this.$gox = 0;
                  this.$goy = 0;
                  this.alpha -= 0.2;
                  if(this.alpha <= 0)
                  {
                     this.CG();
                     return;
                  }
               }
               if(this.$bitmapData !== null)
               {
                  this.rotation += 5;
                  this.xuanzhuan(this.$pi);
               }
            }
            if(this.$time < 0)
            {
               if(this.$frameInt >= this.$xml.SubTexture.length() - 2 && this.$xml.SubTexture.length() > 5)
               {
                  this.alpha -= 0.25;
               }
               else
               {
                  this.alpha = 1;
               }
            }
         }
         if(this.lockActionName != null)
         {
            if(Boolean(this.$role) && this.$role.$frameString != this.lockActionName)
            {
               this.alpha -= 0.1;
               if(this.alpha < 0)
               {
                  this.CG();
               }
            }
         }
      }
      
      private function xuanzhuan(param1:int) : void
      {
         var _loc2_:* = this.x;
         this.rotation = param1;
         var _loc3_:* = this.y;
         var _loc4_:* = this.getOffsetVector(this.width,this.height,this.rotation);
         this.x = _loc4_.x + _loc2_;
         this.y = _loc4_.y + _loc3_;
      }
      
      public function getOffsetVector(param1:Number, param2:Number, param3:Number) : Point
      {
         var _loc4_:* = new Point();
         var _loc5_:* = Math.sqrt(param1 * param1 + param2 * param2) / 2;
         var _loc6_:* = Math.asin(param2 / 2 / _loc5_) * 180 / Math.PI;
         _loc4_.x = param1 / 2 - _loc5_ * Math.cos((param3 + _loc6_) * Math.PI / 180);
         _loc4_.y = param2 / 2 - _loc5_ * Math.sin((param3 + _loc6_) * Math.PI / 180);
         return _loc4_;
      }
      
      private function toRotate(param1:Bitmap, param2:int, param3:int, param4:int, param5:Matrix) : void
      {
         var _loc6_:* = param1.x + param3;
         var _loc7_:* = param1.y + param4;
         var _loc8_:* = param5.clone();
         _loc8_.translate(-_loc6_,-_loc7_);
         _loc8_.rotate(param2 * 180 / Math.PI);
         _loc8_.translate(_loc6_,_loc7_);
         param1.transform.matrix = _loc8_;
      }
      
      public function get hitMapBoolean() : Boolean
      {
         var _loc1_:* = null;
         if(this.bitmapData !== null)
         {
            _loc1_ = ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["bit"];
            return this.bitmapData.hitTest(new Point(this.x,this.y),85,_loc1_.bitmapData,new Point(_loc1_.x,_loc1_.y),1);
         }
         return true;
      }
      
      public function hitMapColorBoolean(param1:uint, param2:Point) : Boolean
      {
         var _loc3_:* = null;
         if(this.bitmapData !== null)
         {
            _loc3_ = ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["bit"];
            if(Boolean(_loc3_.hitTestPoint(param2.x,param2.y,true)) && _loc3_.bitmapData.getPixel(param2.x,param2.y) == param1)
            {
               return true;
            }
            return false;
         }
         return true;
      }
      
      public function getFuck() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         if(this.$fuck > 0)
         {
            if(this.$fuckMath < this.$fuck && !this.$fuckBoolean)
            {
               _loc1_ = this;
               _loc2_ = this.$fuckMath + 1;
               _loc1_.$fuckMath = _loc2_;
            }
            else
            {
               this.$fuckBoolean = true;
               this.$fuckMath = 0;
            }
            if(this.$frameInt == this.$toFuck && !this.$fuckBoolean)
            {
               this.$toFuck = -1;
               this.$fuckBoolean = true;
            }
         }
         else if(int(this.$xml.SubTexture[this.$frameInt].@fuck) == 1)
         {
            if(this.$frameInt !== this.$toFuck)
            {
               this.$fuckBoolean = true;
               this.$toFuck = this.$frameInt;
            }
         }
      }
      
      public function updateXY() : void
      {
         if(!this.followPoint)
         {
            this.$x += this.$gox * this.$scaleX;
            this.$y += this.$goy;
         }
         else
         {
            this.$x = this.$role.$x + this.followPoint.x;
            this.$y = this.$role.$y + this.followPoint.y;
         }
      }
      
      public function setTime(param1:int) : void
      {
         this.$head = int(this.$xml.@hred);
         this.$end = int(this.$xml.@end);
         this.$time = param1;
      }
      
      private function time() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         if(this.$time > 0)
         {
            _loc1_ = this;
            _loc2_ = this.$time - 1;
            _loc1_.$time = _loc2_;
            if(this.$frameInt >= this.$end)
            {
               this.$frameInt = this.$head;
            }
            if(this.$frameInt > this.$xml.SubTexture.length() - 3 && this.$time < 4)
            {
               this.alpha -= 0.25;
            }
         }
         else if(this.$xml.SubTexture.length() - 1 <= this.$frameInt)
         {
            this.alpha -= 0.2;
            if(this.alpha <= 0)
            {
               this.CG();
               return;
            }
         }
      }
      
      private function hitRole() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = undefined;
         if(this.$di !== null)
         {
            if(this.bitmapData.hitTest(new Point(this.x,this.y),50,this.$di.bitmapData,new Point(this.$di.x,this.$di.y),255))
            {
               this.toHrut(this.$di);
            }
         }
         else
         {
            _loc1_ = ComponentResourcesManage.$Ob["SystemWord"]["$troops" + (-this.$troops + 1)];
            _loc2_ = null;
            _loc3_ = null;
            for(_loc4_ in _loc1_)
            {
               _loc2_ = _loc1_[_loc4_] as SystemGameRole;
               if(Boolean(_loc2_) && Boolean(this.bitmapData !== null) && Boolean(_loc2_.hitTestObject(this)))
               {
                  if(this.bitmapData.hitTest(new Point(this.x,this.y),50,_loc1_[_loc4_].bitmapData,new Point(_loc1_[_loc4_].x,_loc1_[_loc4_].y),255))
                  {
                     this.toHrut(_loc1_[_loc4_] as Object);
                  }
               }
            }
            _loc1_ = ComponentResourcesManage.$word["$skill" + (-this.$troops + 1)];
            for(_loc4_ in _loc1_)
            {
               _loc3_ = _loc1_[_loc4_] as SkillShow;
               if(Boolean(_loc3_ && this.bitmapData !== null && _loc3_ !== this) && Boolean(_loc3_.bitmapData !== null) && Boolean(_loc3_.isCanHit) && Boolean(_loc3_.hitTestObject(this)))
               {
                  if(this.bitmapData.hitTest(new Point(this.x,this.y),50,_loc1_[_loc4_].bitmapData,new Point(_loc1_[_loc4_].x,_loc1_[_loc4_].y),255))
                  {
                     this.hrutSkill(_loc1_[_loc4_]);
                  }
               }
            }
         }
      }
      
      private function hrutSkill(param1:SkillShow) : void
      {
         this.$fuckBoolean = false;
         RoleMathType.setSkillHurtOrAdd(param1,param1.$role.Dam);
      }
      
      private function addHitStop(param1:int = 5) : *
      {
         if(this.$role)
         {
            this.hitStop += param1;
            this.$role.hitStop += param1;
            SystemMap.vibration = 10;
         }
      }
      
      private function toHrut(param1:Object) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         this.$Diarray = [];
         if(param1.$god <= 0)
         {
            this.$fuckBoolean = false;
            _loc2_ = this.getHurt();
            if(this.$class !== null)
            {
               if(param1.$god <= 0 && param1.$frameString !== "起身")
               {
                  param1.beHit();
                  if(this.isBreak)
                  {
                     (param1 as SystemGameRole).stopSkill();
                  }
                  if(this.$role.$hpID !== -1)
                  {
                     ComponentResourcesManage.$word.$hpmpArray[this.$role.$hpID].addNum();
                  }
                  if(param1.$stoic <= 0 || param1.$frameString == "防御")
                  {
                     if(param1.$frameString == "防御" && param1.$actArray.indexOf("防御") !== -1 && param1.$scaleX !== this.$scale)
                     {
                        if(param1.$mode == "K")
                        {
                           param1.$y += 4;
                        }
                        _loc2_ = _loc2_ * (1 - param1.$fang) * 0.3;
                        param1.sethp(param1.gethp - _loc2_);
                        param1.$ob.fangX = 10;
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "mode":"tx",
                           "tx":true,
                           "name":"fangYu",
                           "rotate":Math.random() * 180,
                           "role":param1,
                           "x":param1.$bit.x,
                           "y":param1.$bit.y - Math.random() * 30 - 15,
                           "scaleX":this.$scaleX
                        });
                        if(this.$role)
                        {
                           if(param1.$fangCD < 9 && Math.abs(param1.$x - this.$role.$x) < 120)
                           {
                              param1.$fangCD = 36;
                              param1.stoic = 0.3;
                              ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                                 "mode":"tx",
                                 "name":"SJFang",
                                 "rotate":Math.random() * 180,
                                 "role":param1,
                                 "x":param1.$bit.x + 25 * param1.$scaleX,
                                 "y":param1.$bit.y - 30 + (15 - Math.random() * 30),
                                 "scaleX":this.$scaleX * -1
                              });
                           }
                        }
                     }
                     else
                     {
                        this.$Diarray.push(param1);
                        if(this.$scale == param1.$scaleX)
                        {
                           _loc2_ *= 1.15;
                           ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                              "blendMode":BlendMode.NORMAL,
                              "mode":"tx",
                              "tx":true,
                              "name":"bhit",
                              "time":30,
                              "role":this.$role,
                              "x":param1.$bit.x,
                              "y":param1.$bit.y - 30 + (15 - Math.random() * 30),
                              "scaleX":0.8
                           });
                        }
                        _loc2_ *= 1 - param1.$fang;
                        param1.sethp(param1.gethp - _loc2_);
                        param1.$scaleX = -this.$scale;
                        _loc4_ = this.$class;
                        param1.$tx = _loc4_["X"](this.$frameInt,this.$role,this) * this.$scaleX;
                        _loc4_ = this.$class;
                        _loc3_ = _loc4_["Y"](this.$frameInt,this.$role,this);
                        if(this.$class != RoleParsing && _loc3_ > 0)
                        {
                           _loc3_ += 5;
                        }
                        if(this.hitY != 404)
                        {
                           _loc3_ = this.hitY;
                        }
                        if((param1 as SystemGameRole).fuckFlyCount >= 3 && _loc3_ > 0)
                        {
                           _loc3_ = -1;
                        }
                        else if(this.roleFrameString == "空中攻击" && (param1 as SystemGameRole).$jumpForFuckBoolean)
                        {
                           _loc4_ = param1 as SystemGameRole;
                           _loc5_ = _loc4_.fuckFlyCount + 1;
                           _loc4_.fuckFlyCount = _loc5_;
                        }
                        if(this.hitX != 404)
                        {
                           param1.$tx = this.hitX * this.$scaleX;
                        }
                        if(_loc3_ !== 0)
                        {
                           param1.fuckY = _loc3_ - param1.$fuz;
                           if(param1.name.indexOf("Freak") == -1)
                           {
                              if(_loc3_ >= 5 && param1.$fuz < 15 && param1.$hit_num > 12)
                              {
                                 param1.$fuz + 1;
                              }
                           }
                           if(param1.$fuz > 10 || param1.$mode == "K")
                           {
                              param1.$jumpForFuckBoolean = true;
                              param1.$mode = "D";
                           }
                           param1.$ding = 0;
                        }
                        else if(param1.$jumpBoolean)
                        {
                           param1.$ding = 15;
                           param1.$jumpMath = 0;
                           if(param1.$hit_num > 20)
                           {
                              param1.fuckY = -10;
                           }
                           else if(param1.$hit_num > 15 && (param1.$x < 100 || param1.$y > ComponentResourcesManage.$word.$map.width - 100))
                           {
                              param1.fuckY = -10;
                           }
                        }
                        _loc4_ = this;
                        _loc5_ = this.$hit + 1;
                        _loc4_.$hit = _loc5_;
                        if(this.$okHit == this.$hit)
                        {
                           ComponentResourcesManage.$word.$map.setZhen = 0.3;
                           (param1 as SystemGameRole).hitStop = 6;
                           this.addHitStop();
                           if(_loc3_ !== 0)
                           {
                              param1.$jumpForFuckBoolean = true;
                           }
                           ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                              "mode":"tx",
                              "tx":true,
                              "name":"DDJ1",
                              "role":this.$role,
                              "x":param1.$bit.x,
                              "y":param1.$bit.y - 30 + (15 - Math.random() * 30),
                              "scaleX":this.$scaleX
                           });
                        }
                        else if(this.$class["$fightTarget"] !== "none" || this.hitEff != null)
                        {
                           ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                              "mode":"tx",
                              "tx":true,
                              "name":(this.hitEff != null ? this.hitEff : this.$class["$fightTarget"](this.$role,this)),
                              "role":this.$role,
                              "x":param1.$bit.x,
                              "y":param1.$bit.y - 30 + (15 - Math.random() * 30),
                              "scaleX":this.$scaleX
                           });
                        }
                        if(this.stiff == 404)
                        {
                           param1.rigid = this.$class["$rigid"];
                        }
                        else
                        {
                           param1.rigid = this.stiff;
                        }
                        param1.$txTime += 5;
                        if((this.$role.$frameString == "普通攻击" || this.$role.$frameString == "空中攻击") && param1.$hit_num > 12)
                        {
                           param1.$jumpForFuckBoolean = true;
                           param1.rigid = 0;
                           param1.$y += 3;
                           param1.fuckY = -10;
                        }
                        param1.$shouColor = this.$color;
                     }
                  }
                  else
                  {
                     _loc2_ *= 1 - param1.$fang;
                     param1.sethp(param1.gethp - _loc2_);
                     _loc4_ = this.$class;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "mode":"tx",
                        "tx":true,
                        "name":_loc4_["$fightTarget"](this.$role,this),
                        "role":this.$role,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y - 30 + (15 - Math.random() * 30),
                        "scaleX":this.$scaleX
                     });
                     if(this.$okHit == this.$hit)
                     {
                        this.addHitStop();
                     }
                  }
                  _loc4_ = param1;
                  _loc5_ = _loc4_.$hit_num + 1;
                  _loc4_.$hit_num = _loc5_;
                  if(this.$class["hitFight"] is Function)
                  {
                     _loc4_ = this.$class;
                     _loc4_["hitFight"](this.$role,param1,this);
                  }
                  ComponentResourcesManage.$word.askElements("hurt",{
                     "mode":"tx",
                     "hurt":_loc2_ * (1 - param1.$fang),
                     "point":new Point(param1.$x,param1.$y)
                  });
               }
            }
         }
      }
      
      public function getHurt() : int
      {
         if(this.hurt != 404)
         {
            return this.$role.Dam + this.hurt * 0.7 + Math.random() * (this.hurt * 0.3) * this.$role.hurtThan;
         }
         return this.$role.Dam + RoleMathType.addSkillHurt(this,this.$class);
      }
      
      private function updateFrame() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         if(this.$fps > this.$fpsMath)
         {
            _loc1_ = this;
            _loc2_ = this.$fpsMath + 1;
            _loc1_.$fpsMath = _loc2_;
         }
         else if(this.$xml.SubTexture.length() - 1 > this.$frameInt)
         {
            _loc1_ = this;
            _loc2_ = this.$frameInt + 1;
            _loc1_.$frameInt = _loc2_;
            this.$drawBoolean = false;
            this.$fpsMath = 0;
         }
      }
      
      private function updateDraw() : void
      {
         if(!this.$drawBoolean && this._currentFrame != this.$frameInt)
         {
            if(this.bitmapData !== null)
            {
               this.bitmapData.dispose();
               this.bitmapData = null;
            }
            this.bitmapData = BitmapDataDraw.xmlForBitmapData(this.$bitmapData,this.$xml.SubTexture[this.$frameInt],this.$scaleX,this.$scaleY,this.$skillType);
            this.smoothing = false;
            this.$drawBoolean = true;
         }
         this.x = this.$x + (int(this.$xml.@px) - int(this.$xml.SubTexture[this.$frameInt].@frameX)) * this.$scaleX;
         this.y = this.$y + (int(this.$xml.@py) - int(this.$xml.SubTexture[this.$frameInt].@frameY)) * this.$scaleY;
         if(this.$scaleX < 0)
         {
            this.x -= this.width;
         }
         if(this.$scaleY < 0)
         {
            this.y -= this.height;
         }
         if(int(this.$xml.SubTexture[this.$frameInt].@up) == 1)
         {
            this.parent.addChild(this);
         }
      }
      
      public function CG() : void
      {
         var _loc2_:* = undefined;
         var _loc1_:* = null;
         if(this.$class !== null)
         {
            if(this.$class["CGSkill"] is Function)
            {
               _loc2_ = this.$class;
               _loc2_["CGSkill"](this);
            }
         }
         if(this.bitmapData !== null)
         {
            this.bitmapData.dispose();
         }
         this.bitmapData = null;
         if(this.$bitmapData !== null)
         {
            this.$bitmapData.dispose();
         }
         this.$bitmapData = null;
         this.$di = null;
         this.$role = null;
         this.$Diarray = null;
         this.$ob = null;
         if(this.$troopsBoolean !== -1)
         {
            _loc1_ = ComponentResourcesManage.$word["$skill" + (-this.$troopsBoolean + 1)];
            _loc1_.splice(1,_loc1_.indexOf(this));
         }
         ComponentResourcesManage.$Ob["SystemWord"].delElements(this.name);
      }
   }
}

