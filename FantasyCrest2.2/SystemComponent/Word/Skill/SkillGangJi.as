package SystemComponent.Word.Skill
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   
   public class SkillGangJi
   {
      
      public static var $rigid:int = 30;
      
      public function SkillGangJi()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         switch(param2.$skillType)
         {
            case "LingBing":
               return "Bing";
            default:
               return "TXDao1";
         }
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         switch(param2.$skillType)
         {
            case "SkillNaZi":
               param2.$x -= (param2.$x - param1.$x) * 0.2;
               param2.$y -= (param2.$y - param1.$y) * 0.2;
               if(param1.$x > param2.$x)
               {
                  param2.$scaleX = 1;
               }
               else
               {
                  param2.$scaleX = -1;
               }
               if(param2.$time < 10)
               {
                  param2.alpha -= 0.1;
               }
               break;
            case "HuaJi":
               param2.$x = param1.$x;
               param2.$y = param1.$y;
         }
         switch(param2.$skillType)
         {
            case "YuanFei":
               if(param2.$frameInt == 7)
               {
                  param2.$frameInt = 8;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"YuanBao",
                     "type":"SkillGangJi",
                     "gox":0,
                     "fuck":999,
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
            case "BaoPo":
            case "SiQi":
            case "PiFeng":
            case "HuaJi":
               return 15;
            case "XXYan2":
            case "TuiHuo":
            case "LuanJi":
            case "SuChuan":
            case "XGuang":
               return 5;
            case "BaoFa":
            case "XXYan":
            case "LingDian":
            case "LingBing":
            case "YuanFei":
               return 0;
            default:
               return 10;
         }
      }
      
      public static function Hrut(param1:SkillShow = null) : int
      {
         switch(param1.$skillType)
         {
            case "TuiHuo":
               return -15;
            case "YuanBao":
               return 300;
            case "LingBing":
               return 70;
            case "SkillGangJi":
               return 5;
            default:
               return 25;
         }
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         return 1;
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "TuiHuo":
            case "XXYan":
               return 10;
            case "XXYan2":
            case "BaoQi":
            case "BaoFa":
            case "SiQi":
            case "PiFeng":
            case "HuaJi":
            case "LingDian":
            case "LingBing":
            case "XGuang":
               return 3;
            case "LuanJi":
            case "YuanFei":
            case "SuChuan":
            case "BaoPo":
               return 7;
            default:
               return 5;
         }
      }
   }
}

