package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import flash.geom.Point;
   
   public class SkillXiaNa extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillXiaNa()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         switch(param2.$skillType)
         {
            case "XN/BG":
            case "XN/Y":
            case "XN/S":
               return "AS/huo";
            default:
               return JianTX;
         }
      }
      
      public static function Hrut(param1:SkillShow = null) : int
      {
         switch(param1.$skillType)
         {
            case "XN/BG":
               return 200;
            case "PJ/G":
               if(param1.$role.$frameString == "千鸟")
               {
                  return 160;
               }
               return 25;
               break;
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
               case "XN/C":
                  if(param2.$frameInt == 1)
                  {
                     param1.$x = param2.$x + 250 * param1.$scaleX;
                  }
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "XN/Y":
               return 3;
            case "XN/C1":
            case "XN/Z":
               return 0;
            default:
               return 20;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "XN/C1":
               return -1;
            case "XN/Y":
               return -5;
            case "XN/Z":
               return 5;
            default:
               return 2;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "ZZ/D":
               param2.$x = param1.$x + 40 * param1.$scaleX;
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

