package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import flash.display.BlendMode;
   import flash.geom.Point;
   
   public class SkillZuoZhu extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillZuoZhu()
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
            case "GJS/B":
            case "XN/T":
               return 80;
            case "JM/W":
               return 5;
            case "ZZ/HD":
               return 15;
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
         if(param1.$role.$target == "JinMing")
         {
            return 0.7;
         }
         return 1;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         var _loc3_:Point = null;
         var _loc4_:int = 0;
         if(param2.bitmapData !== null)
         {
            switch(param2.$skillType)
            {
               case "MR/JuJi2":
                  if(param2.$time == 1)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[3,10],
                        "name":"MR/Xuan",
                        "type":"SkillZuoZhu",
                        "fuck":3,
                        "role":param1,
                        "x":param2.$x,
                        "y":param2.$y - 0,
                        "scaleX":param1.$scaleX * 2
                     });
                  }
                  RoleMathType.skillType(param1,param2,"金手里剑");
                  break;
               case "JM/S":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y;
                  RoleMathType.skillType(param1,param2,"六仙珠");
                  break;
               case "JM/W":
                  if(param1.$frameString == "空螺旋")
                  {
                     if(param2.$time > 30)
                     {
                        param2.$y = param1.$y - 40;
                        param2.$x = param1.$x - 16 * param1.$scaleX;
                        if(param1.$frameInt >= 7)
                        {
                           ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                              "blendMode":BlendMode.NORMAL,
                              "name":"JM/W",
                              "type":"SkillZuoZhu",
                              "fuck":6,
                              "time":15,
                              "role":param1,
                              "x":param1.$x,
                              "y":param1.$y + 60,
                              "scaleX":param1.$scaleX * 1.5
                           });
                           param2.CG();
                        }
                     }
                     else if(param2.$time == 5)
                     {
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "ka":[1,3],
                           "name":"YuanBao",
                           "type":"SkillZuoZhu",
                           "fuck":99,
                           "role":param1,
                           "x":param2.$x,
                           "y":param2.$y,
                           "scaleX":param1.$scaleX * 0.6
                        });
                     }
                  }
                  else
                  {
                     if(param1.$frameString == "六仙珠" && param1.$frameInt > 3 && param1.$frameInt < 15)
                     {
                        if(!param2.$ob.y)
                        {
                           param2.$ob.y = param1.$y;
                           param2.$ob.x = param2.$x - param1.$x;
                        }
                        param2.$x = param1.$x + param2.$ob.x;
                        if(param2.$ob.y != param1.$y)
                        {
                           _loc4_ = param2.$ob.y - param1.$y;
                           param2.$y -= _loc4_;
                           param2.$ob.y = param1.$y;
                        }
                     }
                     else if(param1.$frameInt == 15 && param1.$frameString == "六仙珠")
                     {
                        param2.$gox = 20 * 4;
                        param2.$time = Math.random() * 20 + 10;
                     }
                     if(param2.$time == 5)
                     {
                        if(param1.$frameString == "六仙珠" && param2.$fuck == 99)
                        {
                           ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                              "blendMode":BlendMode.NORMAL,
                              "name":"JM/W",
                              "type":"SkillZuoZhu",
                              "fuck":9,
                              "time":15,
                              "role":param1,
                              "x":param2.$x,
                              "y":param2.$y,
                              "scaleX":param1.$scaleX * (Math.random() * 0.5 + 1.5)
                           });
                        }
                        else
                        {
                           ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                              "ka":[1,3],
                              "name":"YuanBao",
                              "type":"SkillZuoZhu",
                              "fuck":49,
                              "role":param1,
                              "x":param2.$x,
                              "y":param2.$y,
                              "scaleX":param1.$scaleX * 0.6
                           });
                        }
                     }
                     if(Math.abs(param2.$scaleX) < 1)
                     {
                        RoleMathType.skillType(param1,param2,"六仙珠");
                     }
                  }
                  break;
               case "ZZ/B":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y;
                  if(Math.random() * 10 > 8 && param1.$god <= 0)
                  {
                     param1.$god = Math.random() * 5;
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
            case "XN/C2":
               return 8;
            case "XN/R":
            case "YuanBan":
            case "MR/Xuan":
               return 5;
            case "MR/JuJi2":
            case "JM/W":
               return 0;
            case "B/F":
               return 0;
            case "ZZ/Y":
               return -15;
            case "ZZ/HD":
               return 4;
            case "ZZ/D":
            case "ZZ/L":
            case "ZZ/Q":
               return 2;
            case "PJ/D":
               return 5;
            default:
               return 20;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "JM/W":
               if(param2.$frameString == "六仙珠")
               {
                  return 3;
               }
               return 0;
               break;
            case "MR/JuJi2":
               return 9;
            case "PJ/G":
               if(param3.$role.$frameString == "千鸟")
               {
                  return 12;
               }
               return 2;
               break;
            case "ZZ/D":
               return 12;
            case "PJ/D":
               return 10;
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

