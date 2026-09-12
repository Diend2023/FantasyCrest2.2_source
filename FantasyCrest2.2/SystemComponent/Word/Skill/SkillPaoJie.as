package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import flash.geom.Point;
   
   public class SkillPaoJie extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillPaoJie()
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
            case "PJ/PO":
            case "PJ/T":
               return 5;
            case "NZ/B":
               return 130;
            case "NZ/Y":
               return 40;
            case "SuChuan":
               return 350;
            case "NZ/H":
               return 5;
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
               case "GJS/X":
                  if(param2.$frameInt >= 2)
                  {
                     param2.$gox = 5;
                  }
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "PJ/T":
               return -15;
            case "PJ/L":
            case "PJ/S":
               return 2;
            case "PJ/PO":
            case "PJ/C":
               return 0;
            case "PJ/K":
               return 3;
            case "PJ/D":
               return 5;
            default:
               return 15;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "PJ/L":
               return 1;
            case "PJ/Y":
               return 12;
            case "PJ/D":
               return 5;
            default:
               return 2;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "MR/YFSPao":
               param3.$time = 0;
               break;
            case "MR/LuoXuanWan":
               if(param1.$frameInt < 14)
               {
                  param2.$x -= (param2.$x - param3.$x + 20 * param3.$scaleX) * 0.2;
               }
               break;
            case "MR/YFSShouLiJian":
               if(param3.$frameInt < 7)
               {
                  param3.$time = 0;
                  param3.$gox = 3;
                  param3.$goy = -4;
                  param3.$frameInt = 7;
                  param3.$fuck = 3;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/YanWu",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param3.$x,
                     "y":param3.$y,
                     "scaleX":param3.$scaleX
                  });
               }
               else
               {
                  param3.$fuck = 0;
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

