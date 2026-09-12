package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.GameData;
   
   public class SkillJianShi extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillJianShi()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         return JianTX;
      }
      
      public static function Hrut(param1:SkillShow = null) : int
      {
         if(param1.$role.$frameString == "奥义光辉")
         {
            return 80;
         }
         if(param1.$role.$frameString == "冰牙刃剑")
         {
            return 20;
         }
         switch(param1.$skillType)
         {
            case "NMF/Z":
            case "HF/V":
               return 50;
            case "GDJ/C":
               return 350;
            case "YH/B":
            case "YH/S":
            case "XN/Y":
               return 40;
            case "GDJ/B":
               return 150;
            case "LongShanQiang":
            case "LongShan":
               return 0;
            case "BaDao":
               return 60;
            case "TuoZhan":
               return 350;
            default:
               return 10;
         }
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         if(param1.$role.$target == "JianShi")
         {
            if(Math.random() * 100 > 75)
            {
               GameData.$KaTime = 5;
               return 3;
            }
         }
         return 1.2;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         switch(param2.$skillType)
         {
            case "LongShanQiang":
               param2.$x = param1.$x + 15 * param1.$scaleX;
               param2.$y = param1.$y;
               break;
            case "YH/Y":
               if(int(param2.$time / 5) == param2.$time / 5 && param2.$time > 5)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"DSL/B",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param2.$x + 20 * param1.$scaleX,
                     "y":param2.$y,
                     "scaleX":param1.$scaleX * 2.3
                  });
               }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "XN/C1":
               return 0;
            case "LongShanQiang":
               return 5;
            case "YueGuang":
            case "XuanJi":
            case "HF/V":
            case "XN/T":
            case "HF/Z":
               return 18;
            default:
               return 8;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         if(param3.$role.$target == "HongJuJian")
         {
            if(param2.gethp > 0 && GameData.$mode != "1PSB")
            {
               if(param1.gethp > param1.$hpMax)
               {
                  param1.$hpMax = param1.gethp + param2.gethp / 100;
               }
               param1.sethp(param1.gethp + param2.gethp / 100);
            }
         }
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
            case "NMF/Z":
               return -18;
            case "XuanJi":
               return 0;
            case "XN/C1":
            case "GDJ/Z":
               return -1;
            default:
               return 3;
         }
      }
   }
}

