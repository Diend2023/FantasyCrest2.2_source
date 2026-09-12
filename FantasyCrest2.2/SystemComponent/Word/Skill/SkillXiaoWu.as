package SystemComponent.Word.Skill
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   
   public class SkillXiaoWu
   {
      
      public static var $rigid:int = 30;
      
      public function SkillXiaoWu()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         return "BaoZha2";
      }
      
      public static function Hrut(param1:SkillShow = null) : int
      {
         switch(param1.$skillType)
         {
            case "XD/Xu":
               return 35;
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
         if(param2.bitmapData !== null)
         {
            var _loc3_:String = param2.$skillType;
            switch(0)
            {
            }
         }
      }
      
      private static function play(param1:SkillShow, param2:SystemGameRole, param3:String, param4:int, param5:int, param6:int = 99) : void
      {
         if(param2.$frameString == "引爆黏土．爆炸" && param2.$frameInt == 3 && param1.$time > 0)
         {
            param1.$time = 0;
            param1.visible = false;
            param1.CG();
            ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
               "name":param3,
               "type":"SkillXiaoDi",
               "fuck":param6,
               "time":0,
               "role":param2,
               "x":param4,
               "y":param5,
               "scaleX":param2.$scaleX * 1
            });
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "XD/Cong2":
            case "XD/Cong":
               return 0;
            case "XD/ZiBao":
               return 10;
            case "XD/Dan":
               return 0;
            default:
               return 10;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "XW/Xu":
               return 3;
            default:
               return 2;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "XD/ShuangYiNiao":
            case "XD/XiaNiao":
            case "XD/Zhi":
            case "XD/Dan":
               param3.$time = 0;
               param3.visible = false;
               break;
            case "XD/DiLei2":
            case "XD/DiLei":
               param3.$time = 0;
               param3.visible = false;
               ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                  "name":"XD/CongBao2",
                  "type":"SkillXiaoDi",
                  "fuck":99,
                  "time":0,
                  "role":param1,
                  "x":param3.$x,
                  "y":param3.$y,
                  "scaleX":param1.$scaleX * 1
               });
               break;
            case "XD/Cong2":
            case "XD/Cong":
               param3.$ob = param2;
         }
      }
      
      public static function CGSkill(param1:SkillShow) : void
      {
      }
   }
}

