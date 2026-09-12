package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   
   public class SkillGeDouJia extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillGeDouJia()
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
            case "GDJ/C":
               return 80;
            case "GDJ/B":
               return 300;
            case "GDJ/S":
               return 20;
            case "GDJ/D":
               if(param1.$fps == 1)
               {
                  return 80;
               }
               return 300;
               break;
            default:
               return 50;
         }
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         return 1.3;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         if(param2.bitmapData !== null)
         {
            switch(param2.$skillType)
            {
               case "XuanJi":
               case "Xuan":
               case "JiuLongShan":
               case "TuoZhan":
               case "ShangZhan":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y;
            }
            switch(param2.$skillType)
            {
               case "GDJ/D":
                  if(!param1.$hitBoolean)
                  {
                     param2.$fuckBoolean = false;
                  }
               case "BaoFa1":
                  param2.$fps = 1;
                  break;
               case "XuanJi":
                  if(param2.$frameInt == 6 && param1.$frameInt < 7)
                  {
                     param2.$frameInt = 4;
                  }
                  RoleMathType.skillType(param1,param2,"龍卷閃．旋");
                  break;
               case "Xuan":
                  if(param2.$frameInt == 6 && param1.$frameInt < 7)
                  {
                     param2.$frameInt = 4;
                  }
                  RoleMathType.skillType(param1,param2,"龍卷閃．嵐");
                  break;
               case "QPL/W":
                  if(!param2.hitMapBoolean)
                  {
                     param2.CG();
                  }
                  else if(param2.$frameInt == 8)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "color":param1.$class["matrix"],
                        "ka":[1,10],
                        "name":"XD/CongBao2",
                        "type":"SkillGuaiYiLong",
                        "fuck":999,
                        "time":0,
                        "role":param1,
                        "x":param2.$x + 15 * param2.$scaleX,
                        "y":param2.$y + 50,
                        "scaleX":param1.$scaleX * 1
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
            case "GDJ/Z":
            case "GDJ/A":
               return 0;
            case "JX/D":
            case "QPL/D":
            case "GDJ/S":
               return 20;
            default:
               return 10;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "GDJ/A":
            case "GDJ/S":
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
         }
      }
   }
}

