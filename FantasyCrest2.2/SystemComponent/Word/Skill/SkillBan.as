package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import flash.geom.Point;
   
   public class SkillBan extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillBan()
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
            case "ZZ/HD":
               return 0;
            case "MR/S":
               return 250;
            case "ZZ/Y":
               return 400;
            case "PJ/G":
               if(param1.$role.$frameString == "千鸟")
               {
                  return 160;
               }
               return 25;
               break;
            default:
               return 25;
         }
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         if(param1.$role.$target == "NiuTou")
         {
            return 0.7;
         }
         switch(param1.$skillType)
         {
            case "SB/D":
            case "DiBao":
               return 1.5;
            default:
               return 0.8;
         }
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         var _loc3_:Point = null;
         if(param2.bitmapData !== null)
         {
            switch(param2.$skillType)
            {
               case "S/Z":
                  if(param2.$time % 10 == 0)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "name":"SB/D",
                        "type":"SkillBan",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param2.$x + 135 * param2.$scaleX,
                        "y":param2.$y,
                        "scaleX":param1.$scaleX * 3
                     });
                  }
                  break;
               case "TuLongShan":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y;
                  break;
               case "ZZ/HD":
                  RoleMathType.skillType(param1,param2,"大微火");
                  break;
               case "NZ/H":
                  RoleMathType.skillType(param1,param2,"微火,大爆炎");
                  break;
               case "B/G":
                  if(param2.hitMapColorBoolean(16711680,new Point(param2.$x,param2.$y)) || param2.$y > ComponentResourcesManage.$word.$map.height - 100)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "name":"YanDi",
                        "type":"SkillBan",
                        "fuck":12,
                        "time":0,
                        "role":param1,
                        "x":param2.$x,
                        "y":param2.$y + 250,
                        "scaleX":param1.$scaleX * 3
                     });
                     param2.$time = 0;
                  }
                  break;
               case "ZZ/B":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y;
                  if(Math.random() * 10 > 9)
                  {
                     param1.$god = Math.random() * 5;
                  }
                  else
                  {
                     param1.$god = 0;
                  }
                  break;
               case "ZZ/D":
                  param2.$x = param1.$x + 35 * param1.$scaleX;
                  param2.$y = param1.$y - 10;
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "SB/D":
               return 6;
            case "LongShan":
               return 3;
            case "TuoZhan":
            case "DiBao":
               return 18;
            case "B/L":
               return 3;
            case "B/L":
            case "ZZ/HD":
               return 5;
            case "GDJ/A":
               return -12;
            case "LingDian":
            case "NMF/P":
               return 20;
            case "TuLongShan":
            case "NZ/HBuff":
            case "NZ/H":
            case "B/F":
               return 0;
            default:
               return 10;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "SB/D":
               return 6;
            case "TuoZhan":
               return -10;
            case "B/L":
            case "GDJ/A":
            case "GDJ/C":
               return 12;
            default:
               return 2;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "ZZ/D":
               param2.$x = param1.$x + 40 * param1.$scaleX;
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

