package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   
   public class SkillJinLong extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillJinLong()
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
            case "JL/Z":
               return 600;
            default:
               return 50;
         }
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         return 0.6;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         if(param2.bitmapData !== null)
         {
            switch(param2.$skillType)
            {
               case "JL/Y":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y;
            }
            switch(param2.$skillType)
            {
               case "JL/Y":
                  ++param1.$mp;
                  break;
               case "JL/D":
                  if(param2.$frameInt == 6)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "name":"JL/B",
                        "type":"SkillGuaiYiLong",
                        "fuck":999,
                        "time":0,
                        "role":param1,
                        "x":param2.$x + 50 * param2.$scaleX,
                        "y":param2.$y - 70,
                        "scaleX":param2.$scaleX * 1
                     });
                     param2.CG();
                  }
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "JL/LZ":
            case "JL/L":
               if(param3.$frameInt > 6)
               {
                  return 15;
               }
               return 0;
               break;
            case "JL/A":
               return 20;
            default:
               return 6;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "JL/A":
            case "JL/LZ":
            case "JL/L":
               return 1;
            case "JX/D":
               return 2;
            case "GDJ/Z":
               return -3;
            case "GDJ/B":
            case "GDJ/C":
               return 10;
            default:
               return 5;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "XD/CongBao2":
               param2.$ob.du = 200;
               break;
            case "JL/Q":
               param3.$time = 0;
         }
      }
   }
}

