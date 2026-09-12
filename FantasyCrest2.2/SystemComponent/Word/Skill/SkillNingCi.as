package SystemComponent.Word.Skill
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   
   public class SkillNingCi
   {
      
      public static var $rigid:int = 30;
      
      public function SkillNingCi()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         switch(param2.$skillType)
         {
            case "BaGua":
               return "skill1";
            default:
               return "skill1";
         }
      }
      
      public static function Hrut(param1:SkillShow = null) : int
      {
         switch(param1.$skillType)
         {
            case "ShangZhan":
            case "YiDaoZhan":
            case "YueGuang":
               return 60;
            case "DiBao":
            case "DiLie":
            case "JianZhang":
            case "LingYa":
               return 45;
            default:
               return 30;
         }
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         return 1;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         switch(param2.$skillType)
         {
            case "Buff2":
               param2.$x = param1.$x;
               param2.$y = param1.$y + 15;
               if(param1.$frameString == "跑步")
               {
                  param2.$x = param1.$x + 15 * param1.$scaleX;
               }
               if(Math.random() * 10 > 9)
               {
                  param1.stoic = 0.2;
               }
               param1.$ob["BUFFFuck"] = param1.$fuck * 0.35;
         }
         switch(param2.$skillType)
         {
            case "YuanFei":
               if(param2.$frameInt == 7)
               {
                  param2.$frameInt = 8;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"YuanBao",
                     "type":"SkillGangJi",
                     "gox":0,
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param2.$x,
                     "y":param2.$y,
                     "scaleX":param2.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].$map.setZhen = 1;
               }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "JuanFeng":
               if(param3.$frameInt >= 12)
               {
                  return 15;
               }
               return 0;
               break;
            case "KongZhang":
               if(param3.$frameInt > 4)
               {
                  return 10;
               }
               return 0;
               break;
            case "BaGua":
               return 0;
            default:
               return 18;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "BaGua":
               param2.$ob["BG"] = param3.$Diarray[0];
               return 0;
            default:
               return 3;
         }
      }
   }
}

