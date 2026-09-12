package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   
   public class SkillDongShiLang extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillDongShiLang()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         return "BingDaJi";
      }
      
      public static function Hrut(param1:SkillShow = null) : int
      {
         switch(param1.$skillType)
         {
            case "Bing":
               return 80;
            case "DSL/B":
            case "YH/H":
            case "SB/C":
               return 5;
            case "DSL/L":
            case "DSL/C":
            case "DSL/F":
               return 80;
            default:
               return 5;
         }
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         return 0.7;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param2.bitmapData !== null)
         {
            switch(param2.$skillType)
            {
               case "DSL/Y":
                  if(param2.name.indexOf("k") !== -1 && param2.$fps !== 0)
                  {
                     _loc3_ = param2.name.indexOf("k1") !== -1 ? -55 : (param2.name.indexOf("k2") !== -1 ? 55 : 0);
                     _loc4_ = param2.name.indexOf("k1") !== -1 ? 0 : (param2.name.indexOf("k2") !== -1 ? 0 : 85);
                     param2.$x -= (param2.$x - param1.$x + _loc3_) * 0.2;
                     param2.$y -= (param2.$y - param1.$y + _loc4_) * 0.2;
                     if(param2.$time > 5)
                     {
                        param2.$frameInt = 0;
                     }
                     if(int(param2.$time / 30) == param2.$time / 30 && param2.$time > 30)
                     {
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "fps":0,
                           "gox":Math.random() * 4 - 2,
                           "goy":Math.random() * 4 - 2,
                           "ka":[1,5],
                           "name":"DSL/Y",
                           "type":"SkillDongShiLang",
                           "fuck":0,
                           "time":0,
                           "role":param1,
                           "x":param2.$x,
                           "y":param2.$y,
                           "scaleX":param1.$scaleX * 0.3
                        });
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "fps":0,
                           "gox":Math.random() * 4 - 2,
                           "goy":Math.random() * 4 - 2,
                           "ka":[1,5],
                           "name":"DSL/Y",
                           "type":"SkillDongShiLang",
                           "fuck":0,
                           "time":0,
                           "role":param1,
                           "x":param2.$x,
                           "y":param2.$y,
                           "scaleX":param1.$scaleX * 0.3
                        });
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "fps":0,
                           "gox":Math.random() * 4 - 2,
                           "goy":Math.random() * 4 - 2,
                           "ka":[1,5],
                           "name":"DSL/Y",
                           "type":"SkillDongShiLang",
                           "fuck":0,
                           "time":0,
                           "role":param1,
                           "x":param2.$x,
                           "y":param2.$y,
                           "scaleX":param1.$scaleX * 0.3
                        });
                     }
                  }
                  break;
               case "XN/Z":
                  if(param2.$frameInt == 1)
                  {
                     param2.parent.addChild(param2);
                  }
                  break;
               case "DSL/C":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y - 33;
                  RoleMathType.skillType(param1,param2,"冰突");
                  break;
               case "DSL/B":
                  if(param2.$frameInt >= 7)
                  {
                     param2.alpha -= 0.2;
                  }
                  break;
               case "YH/H":
                  param2.$x = param1.$x + 33 * param1.$scaleX;
                  param2.$y = param1.$y - 33;
                  RoleMathType.skillType(param1,param2,"飞冰");
                  break;
               case "SB/C":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y;
                  RoleMathType.skillType(param1,param2,"破冰");
                  break;
               case "DSL/L":
                  if(int((param2.$time + 1) / 5) == (param2.$time + 1) / 5 && param2.$time > 5)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":7,
                        "ka":[1,10],
                        "fps":1,
                        "name":"Bing",
                        "type":"SkillDongShiLang",
                        "fuck":99,
                        "time":param2.$time - 5,
                        "role":param1,
                        "x":param2.$x + 33 * param1.$scaleX,
                        "y":param2.$y - 53,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  else if(param2.$time < 5)
                  {
                     param2.$gox = 0;
                     param2.alpha -= 0.1;
                  }
                  break;
               case "Bing":
                  param2.$ob.t = param2.$ob.t ? 0 : param2.$ob.t;
                  if(param2.$ob.t < 5)
                  {
                     ++param2.$ob.t;
                  }
                  else
                  {
                     param2.$gox = 0;
                  }
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "XN/Z":
            case "HF/D":
               return 0;
            case "DSL/C":
               return 3;
            case "Bing":
               return 5;
            case "DSL/S":
               return -2;
            case "SB/C":
            case "DSL/L":
               return 0;
            case "DSL/Q":
               return 4;
            case "DSL/R":
            case "DSL/F":
            case "DSL/B":
               return 6;
            default:
               return 20;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "XN/Z":
            case "HF/D":
               return 4;
            case "DSL/C":
               return 5;
            case "DSL/F":
            case "DSL/S":
               return 5;
            case "DSL/L":
               return 7;
            case "SB/C":
               return 10;
            case "DSL/B":
               return 5;
            default:
               return 2;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "DSL/C":
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

