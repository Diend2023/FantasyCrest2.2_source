package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import flash.geom.Point;
   
   public class SkillXuanWoMingRen extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillXuanWoMingRen()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         return "dj1";
      }
      
      public static function Hrut(param1:SkillShow = null) : int
      {
         switch(param1.$skillType)
         {
            case "":
               return 5;
            default:
               return 25;
         }
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         return 1;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         var _loc3_:Point = null;
         if(param2.bitmapData !== null)
         {
            switch(param2.$skillType)
            {
               case "SuChuan":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y;
                  break;
               case "MR/JuJiGo":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y;
                  if(param1.$frameInt == 20)
                  {
                     param2.CG();
                  }
                  RoleMathType.skillType(param1,param2,"螺旋手里剑");
                  break;
               case "MR/JuJi2":
                  if(param1.$frameInt == 13)
                  {
                     param2.CG();
                  }
                  RoleMathType.skillType(param1,param2,"螺旋手里剑");
                  break;
               case "MR/JuJi":
                  if(param1.$frameInt == 6)
                  {
                     param2.CG();
                  }
                  RoleMathType.skillType(param1,param2,"螺旋手里剑");
                  break;
               case "MR/YFSPao":
                  if(param2.hitMapBoolean)
                  {
                     param2.$time = 0;
                  }
                  break;
               case "MR/YFSQianNianSha":
                  if(param2.$frameInt == 3)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "name":"MR/QianNianSha",
                        "type":"SkillXuanWoMingRen",
                        "fuck":999,
                        "time":0,
                        "role":param1,
                        "x":param2.$x,
                        "y":param2.$y,
                        "scaleX":param2.$scaleX * -1
                     });
                  }
                  break;
               case "MR/Feng":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y;
                  RoleMathType.skillType(param1,param2,"螺旋丸,螺旋连丸,大玉螺旋丸");
                  break;
               case "MR/LuoXuanWan":
                  if(param1.$frameString == "螺旋丸")
                  {
                     if(param2.$ob.boolean !== true)
                     {
                        param2.$x = param1.$x - 10 * param1.$scaleX;
                        param2.$y = param1.$y - 30;
                     }
                     else
                     {
                        param2.$x = param1.$x + 55 * param1.$scaleX;
                        param2.$y = param1.$y - 35;
                        param2.$fuck = 3;
                     }
                  }
                  else if(param1.$frameString == "螺旋连丸" && param1.$frameInt > 5)
                  {
                     param2.$x = param1.$x + 75 * param1.$scaleX;
                     param2.$y = param1.$y - 35;
                     param2.$fuck = 3;
                  }
                  else if(param1.$frameString == "大玉螺旋丸" && param1.$frameInt > 5)
                  {
                     param2.$x = param1.$x + 5 * param1.$scaleX;
                     param2.$y = param1.$y - 45;
                     if(param1.$frameInt == 12)
                     {
                        param2.CG();
                     }
                  }
                  RoleMathType.skillType(param1,param2,"螺旋丸,螺旋连丸,大玉螺旋丸");
                  break;
               case "MR/BaoBiao":
                  if(param2.$time > 0 && param2.hitMapBoolean)
                  {
                     param2.$gox = 0;
                     param2.$goy = 0;
                     param2.$time = 0;
                  }
                  else if(param2.$frameInt == 5)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "name":"MR/Boom",
                        "type":"SkillXuanWoMingRen",
                        "fuck":999,
                        "time":0,
                        "role":param1,
                        "x":param2.$x,
                        "y":param2.$y,
                        "scaleX":param2.$scaleX
                     });
                  }
                  break;
               case "MR/YFSShouLiJian":
                  if(param1.$frameInt == 3 && param2.$time > 110)
                  {
                     _loc3_ = MoveDirection(param1,15);
                     param2.$ob.x = _loc3_.x;
                     param2.$ob.y = _loc3_.y;
                     param2.$gox = _loc3_.x;
                     param2.$goy = _loc3_.y;
                     param2.$fuck = 6;
                     param2.$fuckBoolean = true;
                  }
                  if(param2.$time < 20 && param2.$frameInt < 7)
                  {
                     param2.$hp = 0;
                  }
                  break;
               case "MR/ShouLiJian":
                  if(param1.$frameInt == 3 && param2.$time > 110)
                  {
                     _loc3_ = MoveDirection(param1,15);
                     param2.$ob.x = _loc3_.x;
                     param2.$ob.y = _loc3_.y;
                     param2.$gox = _loc3_.x;
                     param2.$goy = _loc3_.y;
                     param2.$fuck = 6;
                     param2.$fuckBoolean = true;
                  }
                  else if(param2.$time <= 80)
                  {
                     if(param2.$x > param1.$x)
                     {
                        param2.$scaleX = -1;
                     }
                     else
                     {
                        param2.$scaleX = 1;
                     }
                     _loc3_ = RoleMathType.getGoXY(param2,param1,15);
                  }
                  else
                  {
                     param2.$ob.x -= param2.$ob.x * 1 / 35;
                     param2.$ob.y -= param2.$ob.y * 1 / 35;
                  }
                  if(_loc3_ !== null)
                  {
                     param2.$ob.x = _loc3_.x;
                     param2.$ob.y = _loc3_.y;
                  }
                  param2.$gox -= (param2.$gox - param2.$ob.x) * 0.2;
                  param2.$goy -= (param2.$goy - param2.$ob.y) * 0.2;
                  if(param2.$time < 80 && Math.abs(param1.y - param2.y) < 60 && Math.abs(param1.x - param2.x) < 60)
                  {
                     param2.$hp = 0;
                  }
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "MR/YFSShouLiJian":
               if(param3.$frameInt < 7)
               {
                  return 0;
               }
               return 15;
               break;
            case "MR/BaoBiao":
            case "MR/ShouLiJian":
               return 0;
            case "MR/Xuan":
            case "MR/LuoXuanWan":
               if(param2.$frameInt < 13)
               {
                  return 0;
               }
               return 10;
               break;
            case "MR/DaYu":
               if(param3.$frameInt < 11)
               {
                  return 0;
               }
               return 10;
               break;
            default:
               return 15;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "MR/Xuan":
               return 1;
            case "MR/DaYu":
               if(param3.$frameInt < 11)
               {
                  return 2;
               }
               return 10;
               break;
            case "MR/BaoBaio":
            case "MR/YFSShouLiJian":
               return 1;
            case "MR/LuoXuanWan":
               return param2.Speed * 3;
            default:
               return 5;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "MR/YFSPao":
               param3.$time = 0;
               break;
            case "MR/LuoXuanWan":
               if(param1.$frameInt < 14)
               {
                  param2.$x -= (param2.$x - param3.$x + 20 * param3.$scaleX) * 0.2;
               }
               break;
            case "MR/YFSShouLiJian":
               if(param3.$frameInt < 7)
               {
                  param3.$time = 0;
                  param3.$gox = 3;
                  param3.$goy = -4;
                  param3.$frameInt = 7;
                  param3.$fuck = 3;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"MR/YanWu",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param3.$x,
                     "y":param3.$y,
                     "scaleX":param3.$scaleX
                  });
               }
               else
               {
                  param3.$fuck = 0;
               }
         }
      }
      
      public static function CGSkill(param1:SkillShow) : void
      {
         switch(param1.$skillType)
         {
            case "MR/JuJiGo":
               param1.$role.to(20);
               param1.visible = false;
               break;
            case "MR/YFSPao":
               ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                  "name":"MR/YanWu",
                  "type":"SkillXuanWoMingRen",
                  "fuck":0,
                  "time":0,
                  "role":param1.$role,
                  "x":param1.$x + 30 * param1.$scaleX,
                  "y":param1.$y + 80,
                  "scaleX":param1.$scaleX
               });
         }
      }
   }
}

