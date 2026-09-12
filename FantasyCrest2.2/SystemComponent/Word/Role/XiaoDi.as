package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.Freak.Freak_WuGong;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.display.BlendMode;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class XiaoDi
   {
      
      public static var $ob:Object = new Object();
      
      private static var $YString:String = "引爆黏土．飛鳥,C3．十八番,風魔手里劍";
      
      public function XiaoDi()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["普攻攻击"] = {
            "cd":0,
            "w":50,
            "s":"",
            "key":Keyboard.J
         };
         $ob["瞬步"] = {
            "cd":0,
            "w":150,
            "s":"",
            "key":Keyboard.L
         };
         $ob["引爆黏土．雙翼鳥"] = {
            "cd":6,
            "w":50,
            "s":"W",
            "key":Keyboard.J
         };
         $ob["引爆黏土．地雷"] = {
            "cd":6,
            "w":50,
            "s":"S",
            "key":Keyboard.J
         };
         $ob["引爆黏土．螞蟻"] = {
            "cd":6,
            "w":1050,
            "s":"S",
            "key":Keyboard.U
         };
         $ob["引爆捏土˙巨型蜈蚣"] = {
            "cd":25,
            "mp":100,
            "w":50,
            "s":"W",
            "key":Keyboard.U
         };
         $ob["C2．巨龍．放"] = {
            "cd":0,
            "w":200,
            "s":"WW",
            "key":Keyboard.U
         };
         $ob["引爆黏土．蜈蚣"] = {
            "cd":15,
            "w":200,
            "s":"S",
            "key":Keyboard.I
         };
         $ob["C2．巨龍"] = {
            "cd":60,
            "w":500,
            "mp":200,
            "s":"W",
            "key":Keyboard.O
         };
         $ob["自爆"] = {
            "cd":45,
            "w":200,
            "mp":400,
            "s":"WW",
            "key":Keyboard.O
         };
         $ob["迦樓羅"] = {
            "cd":45,
            "w":200,
            "mp":300,
            "s":"S",
            "key":Keyboard.O
         };
         $ob["引爆黏土．爆炸"] = {
            "cd":0,
            "w":200,
            "s":"",
            "key":Keyboard.U
         };
         $ob["引爆黏土．地雷陷阱"] = {
            "cd":10,
            "w":300,
            "s":"",
            "key":Keyboard.I
         };
         $ob["集体爆炸"] = {
            "cd":45,
            "mp":200,
            "w":1000,
            "s":"",
            "key":Keyboard.O
         };
         $ob["引爆黏土．飛鳥"] = {
            "cd":10,
            "w":200,
            "k":true,
            "s":"",
            "key":Keyboard.U
         };
         $ob["C3．十八番"] = {
            "cd":45,
            "w":200,
            "k":true,
            "mp":200,
            "s":"",
            "key":Keyboard.O
         };
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/xiaodi.png","photo","XiaoDi");
         SystemLoading.addTask("File/indexFile/img/role/xiaodi.xml","text","XiaoDi");
         Freak_WuGong.loadData();
         SystemLoadType.loadRoleSkillData("BaoZha");
         SystemLoadType.loadRoleSkillData("BaoZha2");
         SystemLoadType.loadRoleSkillData("XD/ShuangYiNiao");
         SystemLoadType.loadRoleSkillData("XD/DiLei");
         SystemLoadType.loadRoleSkillData("XD/DiLei2");
         SystemLoadType.loadRoleSkillData("XD/Cong");
         SystemLoadType.loadRoleSkillData("XD/Cong2");
         SystemLoadType.loadRoleSkillData("XD/He");
         SystemLoadType.loadRoleSkillData("XD/CongBao2");
         SystemLoadType.loadRoleSkillData("XD/Long");
         SystemLoadType.loadRoleSkillData("XD/BaoZha");
         SystemLoadType.loadRoleSkillData("XD/Dan");
         SystemLoadType.loadRoleSkillData("XD/XiaNiao");
         SystemLoadType.loadRoleSkillData("XD/YuanWu");
         SystemLoadType.loadRoleSkillData("XD/FenSheng");
         SystemLoadType.loadRoleSkillData("XD/Zhi");
         SystemLoadType.loadRoleSkillData("XD/Bao");
         SystemLoadType.loadRoleSkillData("XD/18F");
         SystemLoadType.loadRoleSkillData("XD/ZiBao");
         SystemLoadType.loadHredSkillData("xiaodi1");
         SystemLoadType.loadHredSkillData("xiaodi2");
         SystemLoadType.loadHredSkillData("xiaodi3");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/11.mp3","sound","xiaodi_11");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/12.mp3","sound","xiaodi_12");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/16.mp3","sound","xiaodi_16");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/17.mp3","sound","xiaodi_17");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/HAN2.mp3","sound","xiaodi_HAN2");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/HAN3.mp3","sound","xiaodi_HAN3");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/HAN4.mp3","sound","xiaodi_HAN4");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/HAN6.mp3","sound","xiaodi_HAN6");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/KO.mp3","sound","xiaodi_KO");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/KU.mp3","sound","xiaodi_KU");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/O.mp3","sound","xiaodi_O");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/SO.mp3","sound","xiaodi_SO");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/UI.mp3","sound","xiaodi_UI");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/UI2.mp3","sound","xiaodi_UI2");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/UI3.mp3","sound","xiaodi_UI3");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/XI.mp3","sound","xiaodi_XI");
         SystemLoading.addTask("File/indexFile/sound/role/xiaodi/XO1.mp3","sound","xiaodi_XO1");
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc4_:int = 0;
         while(_loc4_ <= 1)
         {
            loop2:
            switch(param2)
            {
               case Keyboard.J:
                  switch(_loc3_)
                  {
                     case "W":
                        return "引爆黏土．雙翼鳥";
                     case "S":
                        return "引爆黏土．地雷";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "S":
                        return "引爆黏土．螞蟻";
                     case "W":
                        if(!(ComponentResourcesManage.$word.$elementsOb["Freak" + param1.name + "wugong"] is SystemGameRole))
                        {
                           return "引爆捏土˙巨型蜈蚣";
                        }
                        break;
                     case "WW":
                        if(ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "XD/Long"] is SkillShow)
                        {
                           return "C2．巨龍．放";
                        }
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "S":
                        return "引爆黏土．蜈蚣";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "W":
                        return "C2．巨龍";
                     case "WW":
                        return "自爆";
                     case "S":
                        return "迦樓羅";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.P:
            }
            _loc3_ = _loc3_.charAt(1);
            _loc4_++;
         }
         switch(param2)
         {
            case Keyboard.J:
               return "普通攻击";
            case Keyboard.K:
               return "none";
            case Keyboard.L:
               return "瞬步";
            case Keyboard.U:
               return "引爆黏土．爆炸";
            case Keyboard.I:
               return "引爆黏土．地雷陷阱";
            case Keyboard.O:
               return "集体爆炸";
            default:
               return "none";
         }
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc4_:int = 0;
         while(_loc4_ <= 1)
         {
            switch(param2)
            {
               case Keyboard.J:
                  switch(_loc3_)
                  {
                     case "W":
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "AA":
                     case "DD":
                     case "S":
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "S":
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "S":
                     case "SS":
                  }
                  break;
               case Keyboard.P:
            }
            _loc3_ = _loc3_.charAt(1);
            _loc4_++;
         }
         switch(param2)
         {
            case Keyboard.J:
               return "空中攻击";
            case Keyboard.K:
               return "none";
            case Keyboard.L:
               break;
            case Keyboard.U:
               return "引爆黏土．飛鳥";
            case Keyboard.I:
               break;
            case Keyboard.O:
               return "C3．十八番";
         }
         return "none";
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "自爆":
               param1.stoic = 0.1;
               RoleMathType.setPhoto(param1,"HREDxiaodi1");
               if(param1.$frameInt == 23 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XD/ZiBao",
                     "type":"SkillXiaoDi",
                     "fuck":8,
                     "time":0,
                     "role":param1,
                     "x":param1.$x - 10 * param1.$scaleX,
                     "y":param1.$y - 40,
                     "scaleX":param1.$scaleX * 5
                  });
               }
               break;
            case "C3．十八番":
               RoleMathType.setPhoto(param1,"HREDxiaodi3");
               RoleMathType.stoicType(param1,0,9);
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"XD/18F",
                     "type":"SkillXiaoDi",
                     "fuck":12,
                     "time":400,
                     "role":param1,
                     "x":param1.$x + 100 * param1.$scaleX,
                     "y":param1.$y - 100,
                     "scaleX":param1.$scaleX * 0.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XD/YuanWu",
                     "type":"SkillXiaoDi",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x + 100 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "集体爆炸":
               RoleMathType.setPhoto(param1,"HREDxiaodi3");
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XD/Bao",
                     "type":"SkillXiaoDi",
                     "fuck":12,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XD/BaoZha",
                     "type":"SkillXiaoDi",
                     "fuck":12,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 5
                  });
               }
               break;
            case "迦樓羅":
               RoleMathType.setPhoto(param1,"HREDxiaodi3");
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"XD/FenSheng",
                     "type":"SkillXiaoDi",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x + 45 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               break;
            case "引爆黏土．地雷陷阱":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"XD/DiLei2",
                     "type":"SkillXiaoDi",
                     "fuck":0,
                     "time":400,
                     "role":param1,
                     "x":param1.$x + 45 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "引爆黏土．飛鳥":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "blendMode":BlendMode.NORMAL,
                     "gox":8,
                     "goy":8,
                     "name":"XD/XiaNiao",
                     "type":"SkillXiaoDi",
                     "fuck":99,
                     "time":40,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "引爆捏土˙巨型蜈蚣":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.askElements("role",{
                     "hp":40 * 15,
                     "point":new Point(param1.$x,param1.$y),
                     "name":"Freak" + param1.name + "wugong",
                     "troops":param1.$troops,
                     "target":"Freak_WuGong",
                     "id":-1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XD/YuanWu",
                     "type":"SkillXiaoDi",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "C2．巨龍．放":
               if(param1.$frameInt == 0 && ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "XD/Long"] is SkillShow)
               {
                  ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "XD/Long"].$ob["BAO"] = "YB";
                  ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "XD/Long"].$fuckBoolean = true;
               }
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  if(ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "XD/Long"] is SkillShow)
                  {
                     ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "XD/Long"].$ob["BAO"] = "OK";
                  }
               }
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,0,2,-4);
               break;
            case "C2．巨龍":
               RoleMathType.setPhoto(param1,"HREDxiaodi2");
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  if(!(ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "XD/Long"] is SkillShow))
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "name":"XD/YuanWu",
                        "type":"SkillXiaoDi",
                        "fuck":0,
                        "time":0,
                        "role":param1,
                        "x":param1.$x,
                        "y":param1.$y,
                        "scaleX":param1.$scaleX * 1
                     });
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "troops":param1.$troops,
                        "hp":100,
                        "down":true,
                        "blendMode":BlendMode.NORMAL,
                        "target":true,
                        "name":"XD/Long",
                        "type":"SkillXiaoDi",
                        "fuck":0,
                        "time":400,
                        "role":param1,
                        "x":param1.$x + 30 * param1.$scaleX,
                        "y":param1.$y,
                        "scaleX":param1.$scaleX * 1
                     });
                     ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "XD/Long"].$ob["key"] = 0;
                  }
               }
               break;
            case "引爆黏土．蜈蚣":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "troops":param1.$troops,
                     "hp":1,
                     "blendMode":BlendMode.NORMAL,
                     "name":"XD/Cong2",
                     "type":"SkillXiaoDi",
                     "fuck":9999,
                     "time":800,
                     "role":param1,
                     "x":param1.$x + 30 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "引爆黏土．爆炸":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"XD/He",
                     "type":"SkillXiaoDi",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "引爆黏土．螞蟻":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "troops":param1.$troops,
                     "hp":1,
                     "blendMode":BlendMode.NORMAL,
                     "gox":3,
                     "name":"XD/Cong",
                     "type":"SkillXiaoDi",
                     "fuck":9999,
                     "time":800,
                     "role":param1,
                     "x":param1.$x + 30 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "引爆黏土．地雷":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"XD/DiLei",
                     "type":"SkillXiaoDi",
                     "fuck":99,
                     "time":400,
                     "role":param1,
                     "x":param1.$x + 45 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "引爆黏土．雙翼鳥":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "blendMode":BlendMode.NORMAL,
                     "gox":8,
                     "goy":-8,
                     "name":"XD/ShuangYiNiao",
                     "type":"SkillXiaoDi",
                     "fuck":99,
                     "time":40,
                     "role":param1,
                     "x":param1.$x + 30 * param1.$scaleX,
                     "y":param1.$y - 45,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "空中攻击":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"BaoZha2",
                     "type":"SkillXiaoDi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$x + 30 * param1.$scaleX,
                     "y":param1.$y + 15,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,4,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,8,11,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,13,15,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,19,21,4);
               if(param1.$frameInt == 18 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"BaoZha2",
                     "type":"SkillXiaoDi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$x + 45 * param1.$scaleX,
                     "y":param1.$y - 45,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬步":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,6,param1.$speed * 4);
               RoleMathType.alphaFrame(param1);
               RoleMathType.stoicType(param1,2,4);
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "查克拉˙伸手擊":
         }
      }
   }
}

