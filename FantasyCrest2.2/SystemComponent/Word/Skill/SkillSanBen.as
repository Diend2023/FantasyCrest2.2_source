package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import flash.geom.Point;
   
   public class SkillSanBen extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillSanBen()
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
            case "SB/G":
               return 60;
            case "SB/F":
            case "SB/C":
               return -15;
            case "SD/H":
               return 0;
            case "SB/D":
               return 340;
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
               case "BaDao":
                  ++param2.$y;
                  break;
               case "SB/C":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y - 15;
                  break;
               case "Buff1":
               case "SD/H":
                  param2.$x = param1.$x + (param1.$frameString == "跑步" ? 25 * param1.$scaleX : 0);
                  param2.$y = param1.$y;
            }
            if(param2.$skillType == "Buff1" && Math.random() * 10 > 9.5 && !param1.$jumpBoolean && param1.$rigid > 0)
            {
               ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                  "name":"SB/S",
                  "type":"SkillSanBen",
                  "time":0,
                  "fuck":99,
                  "role":param1,
                  "x":param1.$bit.x,
                  "y":param1.$bit.y,
                  "scaleX":param1.$scaleX * 1
               });
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "SB/G":
               return 3;
            case "SB/F":
               return 10;
            case "BaDao":
            case "SD/H":
            case "SB/C":
               return 0;
            default:
               return 20;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "SB/S":
            case "SB/K":
               return 0;
            case "NGJ/P":
            case "SD/H":
               return 12;
            case "SB/C":
               return param3.$frameInt > 4 ? 2 : 9;
            default:
               return 2;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "SD/H":
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

