package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import flash.geom.Point;
   
   public class SkillNaZi extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillNaZi()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         return "AS/huo";
      }
      
      public static function Hrut(param1:SkillShow = null) : int
      {
         switch(param1.$skillType)
         {
            case "NZ/B":
               return 130;
            case "NZ/Y":
               return 40;
            case "SuChuan":
               return 350;
            case "NZ/H":
               return -15;
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
               case "NZ/H":
                  RoleMathType.skillType(param1,param2,"吐炎");
                  break;
               case "NZ/L":
                  if(param2.$frameInt == 0)
                  {
                     ComponentResourcesManage.$word.allColor(16776960,0.2);
                  }
                  break;
               case "NZ/HBuff":
                  param2.$role.$ob.lei = true;
                  if(param2.$frameInt == 17)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "fps":1,
                        "name":"NZ/HBuff",
                        "type":"",
                        "fuck":0,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + Math.random() * 40 - 20,
                        "y":param1.$bit.y + Math.random() * 40 - 20,
                        "scaleX":param1.$scaleX * 0.5
                     });
                  }
                  if(Math.random() * 10 > 9)
                  {
                     param1.stoic = 0.2;
                  }
               case "NZ/D1":
               case "NZ/D2":
               case "NZ/D3":
                  if(param2.$frameInt == 0)
                  {
                     param2.$ob.y = Math.random() * 30;
                  }
                  param2.$x = param1.$x;
                  param2.$y = param1.$y - param2.$ob.y;
                  break;
               case "NZ/Z":
                  if(param1.$frameInt == 6)
                  {
                     param2.$gox = 0;
                  }
                  break;
               case "BJR/A":
                  if(!(ComponentResourcesManage.$word.$elementsOb[param2.$role.name] is SystemGameRole))
                  {
                     param2.CG();
                  }
                  else
                  {
                     param2.$x = ComponentResourcesManage.$word.$elementsOb[param2.$role.name].$x;
                     param2.$y = ComponentResourcesManage.$word.$elementsOb[param2.$role.name].$y;
                  }
                  break;
               case "BJR/N":
                  if(param2.$frameInt == 7)
                  {
                     param2.$goy = 5;
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
            case "NZ/S":
               return 20;
            case "BJR/X":
            case "NZ/H":
               return 0;
            case "BJR/D":
               return 5;
            default:
               return 15;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "DiBao":
            case "NZ/Y":
            case "NZ/Y1":
               return 3;
            case "NZ/L":
               if(param2.$frameString == "踢飞")
               {
                  return 4;
               }
               return 12;
               break;
            case "NZ/Z":
               return 12;
            case "NZ/S":
            case "NZ/H":
               return 1;
            case "BJR/F":
               return -5;
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
            case "NZ/HBuff":
               param1.$role.$ob.lei = false;
         }
      }
   }
}

