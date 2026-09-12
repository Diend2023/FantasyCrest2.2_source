package SystemComponent.Word.Skill
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import flash.geom.Point;
   
   public class SkillXiaoDi
   {
      
      public static var $rigid:int = 30;
      
      public function SkillXiaoDi()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         if(param2.$skillType == "XD/Cong2" || param2.$skillType == "XD/Cong" || param2.$skillType == "XD/ZiBao")
         {
            return "skill1";
         }
         return "BaoZha2";
      }
      
      public static function Hrut(param1:SkillShow = null) : int
      {
         switch(param1.$skillType)
         {
            case "XD/BaoZha":
               return 30;
            case "XD/Long":
            case "XD/18F":
               return 50;
            case "XD/Zhi":
               return 30;
            case "XD/FenSheng":
               return 50;
            case "XD/DiLei":
               return 30;
            case "XD/DiLei2":
               return 40;
            case "XD/Cong":
            case "XD/Cong2":
               return 0;
            case "XD/Dan":
               return 5;
            default:
               return 25;
         }
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         return 0.5;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param2.bitmapData !== null)
         {
            switch(param2.$skillType)
            {
               case "XD/18F":
                  if(param2.$time > 360)
                  {
                     param2.$goy = -1;
                  }
                  else
                  {
                     ++param2.$goy;
                     if(param2.hitMapBoolean)
                     {
                        param2.CG();
                        _loc4_ = 0;
                        while(_loc4_ < 10)
                        {
                           ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                              "gox":Math.random() * 6 - 3,
                              "goy":-Math.random() * 15,
                              "name":"XD/Zhi",
                              "type":"SkillXiaoDi",
                              "fuck":99,
                              "time":800,
                              "role":param1,
                              "x":param2.$x - (param2.width - Math.random() * param2.width),
                              "y":param2.$y - param2.height,
                              "scaleX":param1.$scaleX * 1
                           });
                           _loc4_++;
                        }
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "name":"XD/BaoZha",
                           "type":"SkillXiaoDi",
                           "fuck":12,
                           "time":0,
                           "role":param1,
                           "x":param2.$x,
                           "y":param2.$y,
                           "scaleX":param1.$scaleX * 2
                        });
                     }
                  }
                  break;
               case "XD/Zhi":
                  if(param2.hitMapBoolean)
                  {
                     param2.$goy = 0;
                     param2.$gox = 0;
                  }
                  else if(param2.$goy < 1)
                  {
                     ++param2.$goy;
                  }
                  break;
               case "XD/FenSheng":
                  if(param2.$frameInt == 16)
                  {
                     _loc4_ = 0;
                     while(_loc4_ < 5)
                     {
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "troops":param1.$troops,
                           "hp":1,
                           "gox":Math.random() * 6 - 3,
                           "goy":-Math.random() * 15,
                           "name":"XD/Zhi",
                           "type":"SkillXiaoDi",
                           "fuck":99,
                           "time":800,
                           "role":param1,
                           "x":param2.$x - (param2.width - Math.random() * param2.width),
                           "y":param2.$y - (param2.height - Math.random() * param2.height),
                           "scaleX":param1.$scaleX * 1
                        });
                        _loc4_++;
                     }
                  }
                  break;
               case "XD/DiLei":
                  if(!param2.hitMapBoolean)
                  {
                     param2.$y += 8;
                  }
                  break;
               case "XD/DiLei2":
                  if(param1.$frameString == "引爆黏土．爆炸" && param1.$frameInt == 3 && param2.$time > 0)
                  {
                     param2.$time = 0;
                     param2.visible = false;
                     param2.CG();
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "name":"XD/CongBao2",
                        "type":"SkillXiaoDi",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param2.$x,
                        "y":param2.$y,
                        "scaleX":param1.$scaleX * 1
                     });
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "name":"XD/CongBao2",
                        "type":"SkillXiaoDi",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param2.$x - 40,
                        "y":param2.$y,
                        "scaleX":param1.$scaleX * 1
                     });
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "name":"XD/CongBao2",
                        "type":"SkillXiaoDi",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param2.$x + 40,
                        "y":param2.$y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  if(!param2.hitMapBoolean)
                  {
                     param2.$y += 8;
                  }
                  break;
               case "XD/Cong":
                  if(param2.$ob is SystemGameRole || param2.$ob is SkillShow)
                  {
                     param2.$gox = 0;
                     param2.$x = param2.$ob.$x;
                     param2.$y = param2.$ob.$y - 20;
                     param2.$frameInt = 4;
                  }
                  else if(!param2.hitMapBoolean)
                  {
                     param2.$y += 8;
                  }
                  if(param1.$frameString == "引爆黏土．爆炸" && param1.$frameInt == 3 && param2.$time > 0)
                  {
                     param2.$time = 0;
                     param2.visible = false;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "name":"BaoZha2",
                        "type":"SkillXiaoDi",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param2.$x,
                        "y":param2.$y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "XD/Cong2":
                  if(param2.$ob is SystemGameRole || param2.$ob is SkillShow)
                  {
                     param2.$frameInt = 13;
                     param2.$ob.$x = param2.$x + 70 * param2.$scaleX;
                     param2.$ob.$y = param2.$y - 5;
                     param2.$ob.$jumpNumMath = 0;
                     param2.$ob.$jumpBoolean = false;
                  }
                  _loc3_ = 0;
                  while(!param2.hitMapBoolean)
                  {
                     param2.y += 2;
                     param2.$y += 2;
                     if(++_loc3_ > 25)
                     {
                        param2.CG();
                        break;
                     }
                  }
                  play(param2,param1,"XD/CongBao2",param2.$x + 60 * param2.$scaleX,param2.$y);
                  break;
               case "XD/Long":
                  if(param2.$ob["BAO"] !== undefined)
                  {
                     param1.$mode = "D";
                     param1.$modeString = "";
                     if(param2.$ob["BAO"] == "OK")
                     {
                        param2.$frameInt = 10;
                        param2.$gox = 8;
                        param2.$goy = 10;
                        if(param2.hitMapBoolean)
                        {
                           ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                              "name":"XD/BaoZha",
                              "type":"SkillXiaoDi",
                              "fuck":12,
                              "time":0,
                              "role":param1,
                              "x":param2.$x,
                              "y":param2.$y,
                              "scaleX":param1.$scaleX * 2
                           });
                           param2.$hp = 0;
                           param2.CG();
                        }
                     }
                  }
                  else
                  {
                     if(param2.$time > 5)
                     {
                        param2.$x = param1.$x;
                        param2.$y = param1.$y + 20;
                        param2.$scaleX = param1.$scaleX;
                        param1.$mode = "K";
                        param1.$modeString = "蹲";
                        param1.$jumpNumMath = 0;
                        param1.stoic = 0.2;
                     }
                     else
                     {
                        param1.$mode = "D";
                        param1.$modeString = "";
                     }
                     if(param1.$down)
                     {
                        param1.$y += 5;
                     }
                     else if(param1.$up)
                     {
                        param1.$y -= 5;
                     }
                     if(param2.hitMapColorBoolean(16711680,new Point(param2.$x,param2.$y + 15)))
                     {
                        param1.$y -= 6;
                     }
                     --param2.$ob["key"];
                     if(param1.$key == param1.$keyArray[4] && param2.$ob["key"] <= 0)
                     {
                        param2.$ob["key"] = 40;
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "gox":Math.random() * 10,
                           "goy":Math.random() * 10,
                           "name":"XD/Dan",
                           "type":"SkillXiaoDi",
                           "fuck":99,
                           "time":400,
                           "role":param1,
                           "x":param2.$x + 80 * param2.$scaleX,
                           "y":param2.$y,
                           "scaleX":param1.$scaleX * 1
                        });
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "gox":Math.random() * 10,
                           "goy":Math.random() * 10,
                           "name":"XD/Dan",
                           "type":"SkillXiaoDi",
                           "fuck":99,
                           "time":400,
                           "role":param1,
                           "x":param2.$x + 80 * param2.$scaleX,
                           "y":param2.$y,
                           "scaleX":param1.$scaleX * 1
                        });
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "gox":Math.random() * 10,
                           "goy":Math.random() * 10,
                           "name":"XD/Dan",
                           "type":"SkillXiaoDi",
                           "fuck":99,
                           "time":400,
                           "role":param1,
                           "x":param2.$x + 80 * param2.$scaleX,
                           "y":param2.$y,
                           "scaleX":param1.$scaleX * 1
                        });
                     }
                  }
                  break;
               case "XD/Dan":
                  if(param2.hitMapBoolean)
                  {
                     param2.$gox = 0;
                     param2.$goy = 0;
                  }
                  play(param2,param1,"BaoZha2",param2.$x,param2.$y);
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
         else if(param1.$time <= 0)
         {
            param1.CG();
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
            case "XD/DiLei":
            case "XD/DiLei2":
               return 0;
            default:
               return 15;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "XD/Cong2":
            case "XD/Cong":
            case "XD/ZiBao":
               return 0;
            case "XD/Dan":
               return 1;
            default:
               return 3;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         if(Y(param3.$frameInt,param1,param3) !== 0 && param2.$stoic <= 0 && param2.$frameString !== "防御")
         {
            param2.$jumpForFuckBoolean = true;
         }
         switch(param3.$skillType)
         {
            case "XD/ShuangYiNiao":
            case "XD/XiaNiao":
            case "XD/Dan":
               param3.$time = 0;
               param3.visible = false;
               break;
            case "XD/DiLei2":
            case "XD/DiLei":
               param3.$time = 0;
               param3.visible = false;
               ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                  "ka":[1,10],
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
            case "XD/Zhi":
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
               param3.$time = 80;
         }
      }
      
      public static function CGSkill(param1:SkillShow) : void
      {
         switch(param1.$skillType)
         {
            case "XD/Long":
               param1.$role.$mode = "D";
         }
      }
   }
}

