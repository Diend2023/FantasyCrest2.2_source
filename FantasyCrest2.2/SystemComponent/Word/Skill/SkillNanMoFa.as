package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import flash.geom.Point;
   
   public class SkillNanMoFa extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillNanMoFa()
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
            case "NMF/L":
            case "NMF/P":
               return -param1.$role.Dam * 0.65;
            case "LD/Q":
               return 70;
            case "NGJ/B":
               return 60;
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
               case "NMF/B":
                  if(param2.$ob.frame == null)
                  {
                     param2.$ob.frame = int(Math.random() * 4);
                  }
                  param2.$frameInt = param2.$ob.frame;
                  if(!param2.hitMapBoolean && param2.$time > 10)
                  {
                     param2.$goy = 12;
                  }
                  else if(param2.$time < 60)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "name":"NMF/BB",
                        "type":"SkillNanMoFa",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param2.$x,
                        "y":param2.$y,
                        "scaleX":param1.$scaleX * 2
                     });
                     param2.CG();
                  }
                  break;
               case "LD/Q":
                  if(param2.$frameInt == 5)
                  {
                     param2.$gox = 0;
                  }
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "GJS/Z":
               return 20;
            case "NMF/L":
            case "NMF/F":
               return 0;
            case "NMF/Z":
               return 15;
            case "NMF/B":
               return -15;
            case "NMF/BB":
            case "NGJ/B":
            case "JL/Q":
               return 16;
            case "LD/Q":
               return 2;
            default:
               return 6;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "JL/Qi":
               return 0;
            case "NMF/F":
               return 5;
            case "NMF/Z":
               return -5;
            case "NMF/B":
            case "NMF/BB":
               return 1;
            default:
               return 3;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "NMF/D":
               param3.$gox = 0;
               param3.$goy = 0;
         }
      }
      
      public static function CGSkill(param1:SkillShow) : void
      {
         switch(param1.$skillType)
         {
            case "NMF/D":
               param1.$gox = 0;
               param1.$goy = 0;
         }
      }
   }
}

