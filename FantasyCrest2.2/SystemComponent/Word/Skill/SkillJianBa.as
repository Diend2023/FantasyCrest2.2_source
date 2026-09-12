package SystemComponent.Word.Skill
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   
   public class SkillJianBa
   {
      
      public static var $rigid:int = 30;
      
      public function SkillJianBa()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         return "TXDao1";
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
         var _loc3_:SystemGameRole = null;
         switch(param2.$skillType)
         {
            case "LingYa":
            case "JianZhang":
               param1.stoic = 0.5;
               break;
            case "ShangZhan":
               param2.$x = param1.$x + 15 * param1.$scaleX;
               param2.$y = param1.$y - 30;
               break;
            case "Buff2":
               param2.$x = param1.$x;
               param2.$y = param1.$y;
               if(param2.$time > 3)
               {
                  _loc3_ = param1.hitGameRole;
                  if(_loc3_ is SystemGameRole)
                  {
                     param1.$ob["BUFFFuck"] += _loc3_.Dam;
                  }
                  param1.$ob["BUFFSpeed"] += 3;
                  param1.$fps = 1;
               }
               else
               {
                  param1.$fps = 2;
               }
               break;
            case "Buff1":
               param2.$x = param1.$x;
               param2.$y = param1.$y;
               if(param2.$time > 3)
               {
                  param1.$ob["BUFFFuck"] += Math.random() * 15;
               }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "YueGuang":
               return 20;
            case "JianZhang":
            case "YiDaoZhan":
               return 12;
            case "LingYa":
               return 15;
            default:
               return 10;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "YiDaoZhan":
               return 8;
            case "LingYa":
               return 2;
            default:
               return 2;
         }
      }
   }
}

