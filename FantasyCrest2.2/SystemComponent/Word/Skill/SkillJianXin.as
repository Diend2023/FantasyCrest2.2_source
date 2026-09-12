package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.Role.QuanYeCha;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   
   public class SkillJianXin extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillJianXin()
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
            case "CiTu":
            case "S/D":
            case "YH/M":
               if(param1.$role.$target == "ZhenTongRen")
               {
                  return 50;
               }
               break;
            case "QYC/F":
               break;
            case "LongShanQiang":
            case "LongShan":
               if(param1.$role.$target == "ZhenTongRen")
               {
                  return 30;
               }
               return 0;
               break;
            case "BaDao":
               return 60;
            case "TuoZhan":
               return 350;
            default:
               return 10;
         }
         return 60;
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         if(param1.$role.$target == "ZhenTongRen")
         {
            return 0.5;
         }
         if(param1.$role.$target == "QuanYeCha")
         {
            return 0.5;
         }
         if(param1.$role.$target == "MoHuaJianXin")
         {
            return 1;
         }
         return 1.2;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         switch(param2.$skillType)
         {
            case "XuanJi":
            case "Xuan":
            case "JiuLongShan":
            case "TuoZhan":
            case "ShangZhan":
               param2.$x = param1.$x;
               param2.$y = param1.$y - param2.height * (1 - param2.$scaleY);
         }
         switch(param2.$skillType)
         {
            case "DSL/S":
               if(Math.abs(param2.$scaleX) <= 0.4)
               {
                  break;
               }
            case "YH/Y":
            case "YH/Y2":
            case "YH/Y4":
               if(param2.$fuckBoolean == false)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":QuanYeCha.$mxx,
                     "ka":[2,10],
                     "name":"YH/M",
                     "type":"SkillJianXin",
                     "fuck":8,
                     "time":0,
                     "role":param2.$role,
                     "x":param2.$x,
                     "y":param2.$y - 35,
                     "scaleX":param2.$scaleX * 0.5
                  });
                  param2.CG();
               }
               break;
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
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "LD/Boom":
               return 20;
            case "XN/K":
               return -15;
            case "BaDao":
               if(param2.$frameInt >= 12)
               {
                  return 15;
               }
               return 0;
               break;
            case "Dao1":
               if(param2.$frameString !== "双龙闪")
               {
                  return 10;
               }
               return 0;
               break;
            case "BaoFa2":
               return 10;
            case "YueGuang":
            case "ShangZhan":
               return 15;
            case "XieZhan":
            case "TuoZhan":
               return 5;
            case "JiuLongShan":
               return 0;
            case "JX/L":
               return 1;
            case "LongShanQiang":
            case "LongShan":
               return 3;
            case "XuanJi":
            case "TuLongShan":
            case "LongZhanYi":
               return 0;
            case "JX/L":
               if(param3.$frameInt > 5)
               {
                  return 15;
               }
               return 0;
               break;
            case "Xuan":
               return -10;
            case "JX/D":
               return 20;
            default:
               return 10;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "LongZhanYi":
               param1.$ob.di = param2;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "LD/Boom":
               return 2;
            case "YH/Z1":
               return -5;
            case "AS/H":
               return 1;
            case "YH/Y":
            case "BaDao":
               return 1;
            case "JX/D":
               return 2;
            case "LongZhanYi":
               return -5;
            case "Dao1":
               if(param2.$frameString !== "双龙闪")
               {
                  return 10;
               }
               return 3;
               break;
            case "BaoFa2":
               return 10;
            case "XieZhan":
            case "XuanJi":
            case "LongZhanYi":
               return 12;
            case "Xuan":
            case "JX/L":
            case "TuoZhan":
            case "TuLongShan":
               return 8;
            case "YueGuang":
            case "LongShanQiang":
            case "LongShan":
            case "ShangZhan":
               return 3;
            default:
               return 5;
         }
      }
   }
}

