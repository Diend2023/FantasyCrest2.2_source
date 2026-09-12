package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   
   public class SkillGuaiYiLong extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillGuaiYiLong()
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
            case "TuoZhan":
               return 200;
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
            case "JX/D":
            case "QPL/D":
               return 20;
            default:
               return 10;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "LanGuang":
               return 15;
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
            case "JiuLongShan":
            case "TuoZhan":
            case "TuLongShan":
               return 8;
            case "YueGuang":
            case "LongShanQiang":
            case "LongShan":
            case "ShangZhan":
            case "BaDao":
               return 3;
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

