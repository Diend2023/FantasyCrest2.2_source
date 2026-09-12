package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import flash.geom.Point;
   
   public class SkillTongRen extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillTongRen()
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
            case "BJR/D":
               return -5;
            case "GJS/Z":
               return 200;
            case "HF/O":
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
         if(param1.$role.$target == "ZhenTongRen")
         {
            return 0.3;
         }
         return 1;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         var _loc3_:Point = null;
         if(param2.bitmapData !== null)
         {
            switch(param2.$skillType)
            {
               case "BJR/D":
                  RoleMathType.skillType(param1,param2,"二刀流");
                  break;
               case "TR/Z":
                  RoleMathType.skillType(param1,param2,"幻影乱斩");
                  break;
               case "SB/P":
                  if(param1.$frameInt / 2 == int(param1.$frameInt / 2))
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "gox":0,
                        "name":"XD/Bao",
                        "type":"SkillTongRen",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param2.$x,
                        "y":param2.$y + (50 - Math.random() * 100),
                        "scaleX":param1.$scaleX * 1
                     });
                  }
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "BJR/D":
               return 3;
            case "QPL/D":
            case "SD/F":
            case "XN/T":
               return 20;
            case "JiuTouLong":
            case "TR/Z":
               return 0;
            case "CiTu":
            case "YH/G":
               return 12;
            default:
               return 6;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "SD/F":
               return 0;
            case "GJS/Z":
               return 20;
            case "JiuTouLong":
            case "TR/Z":
               return 1;
            case "Dao1":
               return -5;
            default:
               return 3;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "JiuTouLong":
            case "TR/Z":
               if(param1.$hpID !== -1)
               {
                  ComponentResourcesManage.$word.$hpmpArray[param1.$hpID].addNum();
               }
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

