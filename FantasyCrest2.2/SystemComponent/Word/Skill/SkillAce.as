package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import flash.geom.Point;
   
   public class SkillAce extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillAce()
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
            case "AS/Z":
               return -param1.$role.Dam / 2;
            default:
               return 20;
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
               case "AS/Z":
                  if(param2.$frameInt >= 7)
                  {
                     param2.$gox = 0;
                     param2.$goy = 0;
                  }
                  break;
               case "YanDi":
                  if(param2.$frameInt >= 13)
                  {
                     param2.$gox = 0;
                     param2.$goy = 0;
                  }
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "AS/HQ":
            case "AS/D":
               return 0;
            case "AS/B":
            case "AS/Y":
               return 25;
            case "AS/X":
            case "AS/W":
               return 18;
            case "AS/Z":
            case "AS/S":
               return 5;
            case "YanDi":
               if(param3.$frameInt < 10)
               {
                  return 2;
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
            case "AS/HQ":
               return 5;
            case "AS/Boom":
            case "AS/D":
            case "AS/B":
            case "AS/X":
            case "AS/W":
            case "AS/Y":
            case "AS/Z":
               return 2;
            case "YanDi":
               return 4;
            default:
               return 8;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "AS/D":
               param3.CG();
         }
      }
      
      public static function CGSkill(param1:SkillShow) : void
      {
         var _loc2_:String = param1.$skillType;
         switch(0)
         {
         }
      }
   }
}

