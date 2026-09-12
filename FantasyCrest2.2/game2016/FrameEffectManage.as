package game2016
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.HPMP;
   import SystemEye.ComponentResourcesManage;
   
   public class FrameEffectManage
   {
      
      public function FrameEffectManage()
      {
         super();
      }
      
      public static function parsing(param1:SystemGameRole, param2:XML) : void
      {
         var _loc3_:* = int(param2.@stotic);
         if(param1.$stoic < _loc3_)
         {
            param1.$stoic = _loc3_;
         }
         event(param1,String(param2.@eventTag));
      }
      
      public static function event(param1:SystemGameRole, param2:String) : void
      {
         var _loc4_:* = undefined;
         var _loc3_:* = null;
         if(!param1.roleData)
         {
            return;
         }
         if(param2 != "" && param2 != "无")
         {
            _loc4_ = param1.roleData.eventData.getEvent(param2);
         }
         if(_loc4_)
         {
            for(_loc3_ in _loc4_)
            {
               doEvent(param1,_loc4_[_loc3_]);
            }
         }
      }
      
      public static function doEvent(param1:SystemGameRole, param2:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:* = 0;
         var _loc5_:SystemGameRole = null;
         var _loc6_:Object = null;
         var _loc7_:* = 0;
         var _loc8_:Array = [];
         var _loc9_:SystemGameRole = null;
         var _loc10_:SystemGameRole = null;
         if(param2["if"].length != 0)
         {
            _loc3_ = param2["if"];
            for(_loc4_ in _loc3_)
            {
               switch(_loc3_[_loc4_].data.tag)
               {
                  case "EffectIf":
                     if(!ComponentResourcesManage.$word.getSkillEffectFormFindName(param1.name + "_" + _loc3_[_loc4_].data.effectName))
                     {
                        return;
                     }
                     break;
                  case "UnCDIf":
                     if(Boolean(param1.$skillCD[String(_loc3_[_loc4_].data.skillName)]) && param1.$skillCD[String(_loc3_[_loc4_].data.skillName)] > 0)
                     {
                        return;
                     }
                     break;
                  case "CDIf":
                     if(!param1.$skillCD[String(_loc3_[_loc4_].data.skillName)] || param1.$skillCD[String(_loc3_[_loc4_].data.skillName)] <= 0)
                     {
                        return;
                     }
                     break;
                  case "KeyIf":
                     if(!param1["$" + String(_loc3_[_loc4_].data["if"])])
                     {
                        return;
                     }
                     break;
                  case "isJump":
                     if(Boolean(_loc3_[_loc4_].data.target) && _loc3_[_loc4_].data.target == "敌人")
                     {
                        if(Boolean(_loc10_) && !_loc10_.$jumpBoolean)
                        {
                           return;
                        }
                     }
                     else if(!param1.$jumpBoolean)
                     {
                        return;
                     }
                     break;
                  case "unJump":
                     if(Boolean(_loc3_[_loc4_].data.target) && _loc3_[_loc4_].data.target == "敌人")
                     {
                        if(Boolean(_loc10_) && _loc10_.$jumpBoolean)
                        {
                           return;
                        }
                     }
                     else if(param1.$jumpBoolean)
                     {
                        return;
                     }
                     break;
                  case "EffectIf":
                     return;
                  case "FrameNameNoIs":
                     if(param1.$frameString == _loc3_[_loc4_].data.skillName)
                     {
                        return;
                     }
                     break;
                  case "FrameNameIs":
                     if(Boolean(_loc3_[_loc4_].data.target) && _loc3_[_loc4_].data.target == "敌人")
                     {
                        _loc5_ = getDiRole(_loc8_,_loc9_);
                        if((Boolean(_loc5_)) && _loc5_.$frameString != _loc3_[_loc4_].data.skillName)
                        {
                           return;
                        }
                     }
                     else if(param1.$frameString != _loc3_[_loc4_].data.skillName)
                     {
                        return;
                     }
                     break;
                  case "MPIf":
                     if(!mathIf(param1.$mp,int(_loc3_[_loc4_].data.value),_loc3_[_loc4_].data["if"]))
                     {
                        return;
                     }
                     break;
                  case "HPIf":
                     if(!mathIf(param1.gethp,int(_loc3_[_loc4_].data.value),_loc3_[_loc4_].data["if"]))
                     {
                        return;
                     }
                     break;
                  case "RandomIf":
                     if(!mathIf(Math.random() * 100,int(_loc3_[_loc4_].data.value),_loc3_[_loc4_].data["if"]))
                     {
                        return;
                     }
                     break;
                  case "FrameIf":
                     if(!mathIf(param1.$frameInt,int(_loc3_[_loc4_].data.value),_loc3_[_loc4_].data["if"]))
                     {
                        return;
                     }
                     break;
                  case "hitEnemy":
                     _loc9_ = param1.hitGameRole;
                     if(_loc9_ == null)
                     {
                        return;
                     }
                     break;
                  case "hitEnemyRect":
                     _loc8_ = param1.hitRoleAndSkill(_loc3_[_loc4_].data.width);
                     if(!_loc8_ || _loc8_.length == 0)
                     {
                        return;
                     }
                     break;
                  case "ifData":
                     if(!allIf(param1.$ob[_loc3_[_loc4_].data.name],_loc3_[_loc4_].data.data,_loc3_[_loc4_].data["if"]))
                     {
                        return;
                     }
                     break;
                  case "ifHits":
                     if(!mathIf((ComponentResourcesManage.$word.$hpmpArray[param1.$hpID] as HPMP).getNum(),_loc3_[_loc4_].data.hits,_loc3_[_loc4_].data["if"]))
                     {
                        return;
                     }
               }
            }
         }
         _loc10_ = getDiRole(_loc8_,_loc9_);
         if(param2["do"].length != 0)
         {
            _loc6_ = param2["do"];
            for(_loc7_ in _loc6_)
            {
               switch(_loc6_[_loc7_].data.tag)
               {
                  case "stopCD":
                     param1.$ob["StopCD"] = int(_loc6_[_loc7_].data.time);
                     break;
                  case "fps":
                     param1.$ob["fps"] = int(_loc6_[_loc7_].data.fps);
                     break;
                  case "jump":
                     if(param1.$ob["BUFFJump"] == null)
                     {
                        param1.$ob["BUFFJump"] = param1.$jump;
                     }
                     param1.$jump = int(_loc6_[_loc7_].data.jump);
                     break;
                  case "fang":
                     if(param1.$ob["BUFFFang"] == null)
                     {
                        param1.$ob["BUFFFang"] = param1.$fang;
                     }
                     if(int(_loc6_[_loc7_].data.fang) <= 100)
                     {
                        param1.$fang = int(_loc6_[_loc7_].data.fang) / 100;
                     }
                     break;
                  case "moveSpeed":
                     param1.$ob["BUFFSpeed"] = int(_loc6_[_loc7_].data.speed);
                     break;
                  case "dmg":
                     param1.$ob["BUFFFuck"] = int(_loc6_[_loc7_].data.dmg);
                     break;
                  case "showRoleSkill":
                     ComponentResourcesManage.$word.$setPhoto.setPhoto(param1.roleTarget + "_effect/" + _loc6_[_loc7_].data.target,20);
                     break;
                  case "changeRole":
                     param1.chanageRoleTarget(_loc6_[_loc7_].data.targetRole);
                     break;
                  case "scaleX":
                     if(_loc6_[_loc7_].data.target == "自已")
                     {
                        param1.$scaleX = _loc6_[_loc7_].data.fx == "左" ? -1 : 1;
                     }
                     else if(_loc10_)
                     {
                        _loc10_.$scaleX = _loc6_[_loc7_].data.fx == "左" ? -1 : 1;
                     }
                     break;
                  case "hitString":
                     param1.stopSkill();
                     param1.hitString = String(_loc6_[_loc7_].data.skillName);
                     break;
                  case "goTips":
                     param1.toTips(String(_loc6_[_loc7_].data.value));
                     break;
                  case "go":
                     param1.to(int(_loc6_[_loc7_].data.value));
                     break;
                  case "stopSkill":
                     if(_loc6_[_loc7_].data.target == "自已")
                     {
                        param1.stopSkill();
                     }
                     else if(_loc10_)
                     {
                        _loc10_.stopSkill();
                     }
                     break;
                  case "stChange":
                     if(_loc6_[_loc7_].data.target == "自已")
                     {
                        param1.$stoic += int(_loc6_[_loc7_].data.value);
                     }
                     else if(_loc10_)
                     {
                        _loc10_.$stoic += int(_loc6_[_loc7_].data.value);
                     }
                     break;
                  case "mpChange":
                     if(_loc6_[_loc7_].data.target == "自已")
                     {
                        if(String(_loc6_[_loc7_].data.type) == "百分比")
                        {
                           param1.$mp += param1.$mp * int(_loc6_[_loc7_].data.value) / 100;
                        }
                        else
                        {
                           param1.$mp += int(_loc6_[_loc7_].data.value);
                        }
                     }
                     else if(_loc10_)
                     {
                        if(String(_loc6_[_loc7_].data.type) == "百分比")
                        {
                           _loc10_.$mp += _loc10_.$mp * int(_loc6_[_loc7_].data.value) / 100;
                        }
                        else
                        {
                           _loc10_.$mp += int(_loc6_[_loc7_].data.value);
                        }
                     }
                     break;
                  case "hpChange":
                     if(_loc6_[_loc7_].data.target == "自已")
                     {
                        if(String(_loc6_[_loc7_].data.type) == "百分比")
                        {
                           param1.sethp(param1.gethp + param1.gethp * int(_loc6_[_loc7_].data.value) / 100);
                        }
                        else
                        {
                           param1.sethp(param1.gethp + int(_loc6_[_loc7_].data.value));
                        }
                     }
                     else if(_loc10_)
                     {
                        if(String(_loc6_[_loc7_].data.type) == "百分比")
                        {
                           _loc10_.sethp(_loc10_.gethp + _loc10_.gethp * int(_loc6_[_loc7_].data.value) / 100);
                        }
                        else
                        {
                           _loc10_.sethp(_loc10_.gethp + int(_loc6_[_loc7_].data.value));
                        }
                     }
                     break;
                  case "move":
                     if(_loc6_[_loc7_].data.target == "相对敌X自Y")
                     {
                        if(_loc10_)
                        {
                           param1.$x = _loc10_.$x + int(_loc6_[_loc7_].data.x) * param1.$scaleX;
                        }
                        param1.$y += int(_loc6_[_loc7_].data.y);
                     }
                     else if(_loc6_[_loc7_].data.target == "相对敌Y自X")
                     {
                        param1.$x += int(_loc6_[_loc7_].data.x);
                        if(_loc10_)
                        {
                           param1.$y = _loc10_.$y + int(_loc6_[_loc7_].data.y);
                        }
                     }
                     else if(_loc6_[_loc7_].data.target == "相对自已")
                     {
                        param1.$x += int(_loc6_[_loc7_].data.x);
                        param1.$y += int(_loc6_[_loc7_].data.y);
                     }
                     else if(_loc6_[_loc7_].data.target == "相对敌人")
                     {
                        if(_loc10_)
                        {
                           param1.$x = _loc10_.$x + int(_loc6_[_loc7_].data.x) * param1.$scaleX;
                           param1.$y = _loc10_.$y + int(_loc6_[_loc7_].data.y);
                        }
                     }
                     break;
                  case "setData":
                     if(_loc6_[_loc7_].data.type == "赋值")
                     {
                        param1.$ob[_loc6_[_loc7_].data.name] = _loc6_[_loc7_].data.cname == "数字" ? int(_loc6_[_loc7_].data.data) : _loc6_[_loc7_].data.data;
                     }
                     else
                     {
                        param1.$ob[_loc6_[_loc7_].data.name] += int(_loc6_[_loc7_].data.data);
                     }
               }
            }
         }
      }
      
      private static function mathIf(param1:int, param2:int, param3:String) : Boolean
      {
         switch(param3)
         {
            case ">=":
               return param1 >= param2;
            case "==":
               return param1 == param2;
            case "<=":
               return param1 <= param2;
            case ">":
               return param1 > param2;
            case "<":
               return param1 < param2;
            case "!=":
               return param1 != param2;
            default:
               return false;
         }
      }
      
      private static function allIf(param1:Object, param2:Object, param3:String) : Boolean
      {
         if(param1 != null)
         {
            if(param3 == "==" && param1 == param2)
            {
               return true;
            }
            if(Boolean(param1 as int) && Boolean(param2 as int))
            {
               return mathIf(int(param1),int(param2),param3);
            }
            return false;
         }
         switch(param3)
         {
            case "!=":
               return String(param1) != param2;
            case "==":
               return String(param1) == param2;
            default:
               return false;
         }
      }
      
      private static function getDiRole(param1:Array, param2:SystemGameRole) : SystemGameRole
      {
         if(param2)
         {
            return param2;
         }
         if(param1.length > 0)
         {
            return param1[int(Math.random() * param1.length)];
         }
         return null;
      }
   }
}

