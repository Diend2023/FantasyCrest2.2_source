package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import flash.geom.Point;
   
   public class SkillDaBai extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillDaBai()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         return JianTX;
      }
      
      public static function Hrut(param1:SkillShow = null) : int
      {
         switch(param1.$skillType)
         {
            case "DB/L":
            case "DB/D":
               return 50;
            default:
               return 25;
         }
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         if(param1.$role.$ob.wanjie)
         {
            return 0;
         }
         return 1;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         var _loc3_:Point = null;
         var _loc4_:Array = null;
         var _loc5_:* = undefined;
         if(param2.bitmapData !== null)
         {
            switch(param2.$skillType)
            {
               case "DB/H":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y - 5 * param2.$frameInt;
                  param2.$time = param1.$ob.wanjie ? 40 : 0;
                  break;
               case "DB/W3":
                  if(param2.$frameInt == 5)
                  {
                     param2.$gox = 0;
                  }
                  break;
               case "DB/K":
                  if(param2.$ob.role is SystemGameRole && param2.$time > 0)
                  {
                     param2.$ob.role.$mode = "K";
                     param2.$ob.role.rigid = 10;
                     param2.$ob.role.$x = param2.$x;
                     param2.$ob.role.$y = param2.$y;
                     param2.$frameInt = 1;
                  }
                  else if(param2.$frameInt == 3)
                  {
                     param2.$time = 0;
                  }
                  break;
               case "DB/G":
                  _loc4_ = ComponentResourcesManage.$Ob["SystemWord"]["$troops" + (0 - param2.$troops + 1)];
                  _loc4_ = _loc4_.concat(ComponentResourcesManage.$word["$skill" + (0 - param2.$troops + 1)]);
                  for(_loc5_ in _loc4_)
                  {
                     if(_loc4_[_loc5_].bitmapData !== null)
                     {
                        if(param2.bitmapData.hitTest(new Point(param2.x,param2.y),85,_loc4_[_loc5_],new Point(_loc4_[_loc5_].x,_loc4_[_loc5_].y),1))
                        {
                           if(_loc4_[_loc5_] is SkillShow)
                           {
                              _loc4_[_loc5_].$hp = 0;
                           }
                           else
                           {
                              _loc4_[_loc5_].$x += 4 * param2.$scaleX;
                           }
                        }
                     }
                  }
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "DB/W5":
               return 20;
            case "DB/W3":
               if(param3.$frameInt >= 8)
               {
                  return 20;
               }
               break;
            case "DB/W4":
               break;
            case "DB/K":
               return 0;
            case "DB/W1":
            case "DB/Y":
               return 5;
            default:
               return 5;
         }
         if(param3.$frameInt >= 4)
         {
            return -15;
         }
         return 20;
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "DB/K":
               return 0;
            case "DB/W1":
            case "AS/HQ":
               return 5;
            case "DB/Y":
            case "DB/W3":
               return 2;
            case "YanDi":
               return 4;
            default:
               return 5;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "DB/Y":
               if(param2.$jumpBoolean)
               {
                  param2.$jumpForFuckBoolean = true;
               }
               break;
            case "DB/K":
               if(param2.$frameString !== "防御")
               {
                  param3.$ob.role = param2;
               }
               else
               {
                  param3.CG();
               }
         }
      }
      
      public static function CGSkill(param1:SkillShow) : void
      {
         switch(param1.$skillType)
         {
            case "DB/K":
               if(param1.$ob.role is SystemGameRole)
               {
                  param1.$ob.role.$mode = "D";
               }
         }
      }
   }
}

