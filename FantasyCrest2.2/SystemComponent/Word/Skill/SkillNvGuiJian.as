package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   import SystemEye.GameData;
   import flash.geom.Point;
   
   public class SkillNvGuiJian extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillNvGuiJian()
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
            case "NGJ/B":
               return 60;
            case "NGJ/G":
               return 300;
            case "AS/Boom":
               return 40;
            case "NGJ/F":
               return 10;
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
               case "NGJ/H":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y - 30;
                  param1.$ob.yan = true;
                  if(param2.$time < 10)
                  {
                     param1.$ob.yan = false;
                  }
                  break;
               case "NGJ/F":
                  if(param2.$frameInt == 8)
                  {
                     param2.$gox = 0;
                  }
                  RoleMathType.skillType(param1,param2,"飞镰");
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "NGJ/S":
               if(param3.$frameInt >= 2)
               {
                  return 2;
               }
               return 15;
               break;
            case "NGJ/D":
               if(param3.$frameInt >= 5)
               {
                  return 15;
               }
               return 3;
               break;
            case "NGJ/F":
               if(param3.$frameInt >= 8)
               {
                  return 15;
               }
               return 3;
               break;
            case "NGJ/T":
               if(param3.$frameInt > 4)
               {
                  return 15;
               }
               return 3;
               break;
            case "GJS/C":
            case "NGJ/P":
               return 0;
            default:
               return 15;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "NGJ/S":
               if(param3.$frameInt >= 2)
               {
                  return -5;
               }
               return 5;
               break;
            case "AS/Boom":
               return 0;
            case "NGJ/F":
               if(param3.$frameInt >= 8)
               {
                  return 2;
               }
               return 7;
               break;
            case "NGJ/T":
               if(param3.$frameInt > 4)
               {
                  return -5;
               }
               return 4;
               break;
            case "GJS/C":
               return 10;
            case "NGJ/P":
               return 16;
            default:
               return 2;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "NGJ/F":
               if(param3.$frameInt >= 8)
               {
                  GameData.$KaTime = 20;
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

