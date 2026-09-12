package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class DongShiLang
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function DongShiLang()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/dongshilang.png","photo","DongShiLang");
         SystemLoading.addTask("File/indexFile/img/role/dongshilang.xml","text","DongShiLang");
         SystemLoading.addTask("File/indexFile/img/role/wanjiedongshilang.png","photo","WanJieDongShiLang");
         SystemLoading.addTask("File/indexFile/img/role/wanjiedongshilang.xml","text","WanJieDongShiLang");
         SystemLoadType.loadRoleSkillData("DSL/B");
         SystemLoadType.loadRoleSkillData("SB/C");
         SystemLoadType.loadRoleSkillData("DSL/R");
         SystemLoadType.loadRoleSkillData("DSL/S");
         SystemLoadType.loadRoleSkillData("DSL/Q");
         SystemLoadType.loadRoleSkillData("Bing");
         SystemLoadType.loadRoleSkillData("YH/H");
         SystemLoadType.loadRoleSkillData("DSL/L");
         SystemLoadType.loadRoleSkillData("BingDaJi");
         SystemLoadType.loadRoleSkillData("DSL/F");
         SystemLoadType.loadRoleSkillData("DSL/C");
         SystemLoadType.loadRoleSkillData("HF/D");
         SystemLoadType.loadRoleSkillData("XN/Z");
         SystemLoadType.loadRoleSkillData("YueGuang");
         SystemLoadType.loadRoleSkillData("DSL/Y");
         SystemLoading.addTask("File/indexFile/sound/role/dongshilang/dsl_002.mp3","sound","dongshilang_dsl_002");
         SystemLoading.addTask("File/indexFile/sound/role/dongshilang/dsl_003.mp3","sound","dongshilang_dsl_003");
         SystemLoading.addTask("File/indexFile/sound/role/dongshilang/dsl_010.mp3","sound","dongshilang_dsl_010");
         SystemLoading.addTask("File/indexFile/sound/role/dongshilang/dsl_031.mp3","sound","dongshilang_dsl_031");
         SystemLoading.addTask("File/indexFile/sound/role/dongshilang/dsl_036.mp3","sound","dongshilang_dsl_036");
         SystemLoading.addTask("File/indexFile/sound/role/dongshilang/dsl_038.mp3","sound","dongshilang_dsl_038");
         SystemLoading.addTask("File/indexFile/sound/role/dongshilang/dsl_041.mp3","sound","dongshilang_dsl_041");
         SystemLoading.addTask("File/indexFile/sound/role/dongshilang/dsl_042.mp3","sound","dongshilang_dsl_042");
         SystemLoading.addTask("File/indexFile/sound/role/dongshilang/dsl_044.mp3","sound","dongshilang_dsl_044");
         SystemLoading.addTask("File/indexFile/sound/role/dongshilang/dsl_045.mp3","sound","dongshilang_dsl_045");
         SystemLoading.addTask("File/indexFile/sound/role/dongshilang/dsl_046.mp3","sound","dongshilang_dsl_046");
         SystemLoading.addTask("File/indexFile/sound/role/dongshilang/dsl_052.mp3","sound","dongshilang_dsl_052");
         $mxx = $mxx.concat([0.3,0,0,0,0]);
         $mxx = $mxx.concat([0.5,0.3,0,0,0]);
         $mxx = $mxx.concat([1,0.6,0.5,0.3,0.2]);
         $mxx = $mxx.concat([0.8,0.6,0.5,0.3,0.2]);
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         RoleMathType.setSpeed(param1,7);
      }
      
      public static function init() : void
      {
         $ob["冰波"] = {
            "cd":8,
            "w":270,
            "h":200,
            "s":"W",
            "key":Keyboard.U,
            "g":"冰链击"
         };
         $ob["冰撩"] = {
            "cd":8,
            "w":200,
            "s":"S",
            "key":Keyboard.U,
            "g":"冻结重冰击]"
         };
         $ob["空冰"] = {
            "cd":5,
            "w":200,
            "s":"",
            "k":true,
            "key":Keyboard.U,
            "g":"飞鸟冰柱"
         };
         $ob["飞冰"] = {
            "cd":6,
            "w":80,
            "s":"W",
            "key":Keyboard.I,
            "g":"霜挑"
         };
         $ob["灵压"] = {
            "cd":6,
            "w":70,
            "s":"S",
            "key":Keyboard.I,
            "g":"灵压.寒气绕"
         };
         $ob["冰突"] = {
            "cd":35,
            "mp":200,
            "w":50,
            "s":"A",
            "key":Keyboard.O,
            "g":"龙霰架.连击"
         };
         $ob["冰封"] = {
            "cd":55,
            "mp":450,
            "w":950,
            "s":"SS",
            "key":Keyboard.O,
            "g":"冰龙旋尾.绝空"
         };
         $ob["冰刃"] = {
            "cd":8,
            "w":220,
            "s":"",
            "key":Keyboard.U,
            "g":"群鸟冰柱"
         };
         $ob["破冰"] = {
            "cd":6,
            "w":120,
            "s":"",
            "key":Keyboard.I,
            "g":"冲阵冰柱突"
         };
         $ob["冰龙"] = {
            "cd":35,
            "mp":200,
            "w":550,
            "s":"",
            "key":Keyboard.O,
            "g":"冰轮丸.红莲.冰龙"
         };
         $ob["普通攻击"] = {
            "cd":0,
            "w":50,
            "s":"",
            "key":Keyboard.J
         };
         $ob["空中攻击"] = {
            "cd":0,
            "k":true,
            "w":50,
            "s":"",
            "key":Keyboard.J
         };
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
                     case "S":
                  }
                  break;
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  switch(_loc3_)
                  {
                     case "W":
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                        return "冰波";
                     case "S":
                        return "冰撩";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        param1.qz = 0;
                        return "飞冰";
                     case "S":
                        return "灵压";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "A":
                     case "D":
                        return "冰突";
                     case "SS":
                        return "冰封";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.P:
                  switch(_loc3_)
                  {
                     case "S":
                        return "none";
                  }
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
               return "冰刃";
            case Keyboard.I:
               return "破冰";
            case Keyboard.O:
               return "冰龙";
            case Keyboard.P:
         }
         return "none";
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
                     case "S":
                  }
                  break;
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                  }
                  break;
               case Keyboard.I:
                  break;
               case Keyboard.O:
                  break;
               case Keyboard.P:
                  return "none";
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
               return "none";
            case Keyboard.U:
               return "空冰";
            case Keyboard.I:
            case Keyboard.O:
               break;
            case Keyboard.P:
         }
         return "none";
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         if(!param1.$jumpBoolean)
         {
            param1.$y += param1.Speed;
         }
         if(param1.$frameInt == 0)
         {
            param1.$ob.see = null;
         }
         if(param1.$ob.wanjie)
         {
            wanjie(param1);
         }
         else
         {
            switch(param1.$frameString)
            {
               case "冰突":
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,8,18,23);
                  if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":0,
                        "ka":[5,10],
                        "name":"DSL/C",
                        "type":"SkillDongShiLang",
                        "fuck":6,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y + 22,
                        "scaleX":param1.$scaleX * 2
                     });
                  }
                  break;
               case "冰封":
                  if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":0,
                        "ka":[5,10],
                        "name":"DSL/F",
                        "type":"SkillDongShiLang",
                        "fuck":6,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y + 22,
                        "scaleX":param1.$scaleX * 3.3
                     });
                  }
                  break;
               case "冰龙":
                  if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":7,
                        "ka":[5,10],
                        "name":"DSL/L",
                        "type":"SkillDongShiLang",
                        "fuck":6,
                        "time":30,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y + 22,
                        "scaleX":param1.$scaleX * 1.6
                     });
                  }
                  break;
               case "飞冰":
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,8,3);
                  param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,4,8,12);
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "fps":1,
                        "name":"YH/H",
                        "type":"SkillDongShiLang",
                        "fuck":6,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 33 * param1.$scaleX,
                        "y":param1.$bit.y - 33,
                        "scaleX":param1.$scaleX * 0.6
                     });
                  }
                  break;
               case "冰撩":
                  if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "fps":1,
                        "name":"Bing",
                        "type":"SkillDongShiLang",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 33 * param1.$scaleX,
                        "y":param1.$bit.y - 53,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "灵压":
                  if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[3,5],
                        "fps":1,
                        "name":"DSL/Q",
                        "type":"SkillDongShiLang",
                        "fuck":6,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "空冰":
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":5,
                        "goy":5,
                        "ka":[3,5],
                        "name":"DSL/S",
                        "type":"SkillDongShiLang",
                        "fuck":6,
                        "time":10,
                        "role":param1,
                        "x":param1.$bit.x + 15 * param1.$scaleX,
                        "y":param1.$bit.y - 35,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "冰波":
                  if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":1,
                        "goy":-1,
                        "ka":[3,5],
                        "name":"DSL/R",
                        "type":"SkillDongShiLang",
                        "fuck":6,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "破冰":
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,5,12);
                  if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[2,5],
                        "name":"DSL/B",
                        "type":"SkillDongShiLang",
                        "fuck":4,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 33 * param1.$scaleX,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1.3
                     });
                  }
                  else if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":0,
                        "name":"SB/C",
                        "type":"SkillDongShiLang",
                        "fuck":4,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 0.6
                     });
                  }
                  break;
               case "冰刃":
                  if((param1.$frameInt == 3 || param1.$frameInt == 5 || param1.$frameInt == 7) && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[2,5],
                        "name":"DSL/B",
                        "type":"SkillDongShiLang",
                        "fuck":4,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 33 * param1.$frameInt * param1.$scaleX - 53 * param1.$scaleX,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "瞬步":
                  RoleMathType.alphaFrame(param1);
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,24);
                  break;
               case "普通攻击":
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,2);
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,11,4);
                  if(param1.$frameInt == 15 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                  }
            }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function wanjie(param1:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,28);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,11,4);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"HF/D",
                     "type":"SkillDongShiLang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"XN/Z",
                     "type":"SkillDongShiLang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y - 15,
                     "down":true,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               else if(param1.$frameInt == 12 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,5],
                     "name":"YueGuang",
                     "type":"SkillDongShiLang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y - 15,
                     "down":true,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               if(param1.$frameInt == 12 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"DSL/Y",
                     "setName":param1.name + "k1",
                     "type":"SkillDongShiLang",
                     "fuck":0,
                     "time":300,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"DSL/Y",
                     "setName":param1.name + "k2",
                     "type":"SkillDongShiLang",
                     "fuck":0,
                     "time":300,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"DSL/Y",
                     "setName":param1.name + "k3",
                     "type":"SkillDongShiLang",
                     "fuck":0,
                     "time":300,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "空中攻击":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XN/Z",
                     "type":"SkillDongShiLang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y - 15,
                     "down":true,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
         }
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "木涟":
         }
      }
   }
}

