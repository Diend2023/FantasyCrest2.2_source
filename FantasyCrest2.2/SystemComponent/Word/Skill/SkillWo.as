package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import flash.geom.Point;
   
   public class SkillWo extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillWo()
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
            case "BJR/D":
               return -param1.$role.Dam / 2;
            case "SuChuan":
               return 350;
            case "BJR/X":
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
               case "BJR/D":
                  RoleMathType.skillType(param1,param2,"连环刃");
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
            case "JL/A":
               return 20;
            case "BJR/X":
            case "BJR/F":
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
            case "BJR/X":
               return 10;
            case "SiQi":
            case "BJR/D":
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
            case "BJR/B":
               param3.CG();
               break;
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
            case "BJR/N":
               ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                  "color":param1.$role.$class["$mxx"],
                  "ka":[1,10],
                  "name":"XD/Bao",
                  "type":"SkillXuanWoMingRen",
                  "fuck":99,
                  "time":0,
                  "role":param1.$role,
                  "x":param1.$x + 80 * param1.$scaleX,
                  "y":param1.$y - 40,
                  "scaleX":param1.$scaleX * 3
               });
         }
      }
   }
}

