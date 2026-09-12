package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.GameData;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.display.BlendMode;
   import flash.ui.Keyboard;
   
   public class LuFei
   {
      
      public static var $ob:Object = new Object();
      
      public function LuFei()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/lufei.png","photo","LuFei");
         SystemLoading.addTask("File/indexFile/img/role/lufei.xml","text","LuFei");
         SystemLoadType.loadRoleSkillData("LF/Q");
         SystemLoadType.loadRoleSkillData("LF/H");
         SystemLoadType.loadRoleSkillData("LD/B");
         SystemLoadType.loadRoleSkillData("YH/F");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/BAOFENG.mp3","sound","lufei_BAOFENG");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/BIANZI.mp3","sound","lufei_BIANZI");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/C1.mp3","sound","lufei_C1");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/C3.mp3","sound","lufei_C3");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/GANGMOGANGMO.mp3","sound","lufei_GANGMOGANGMO");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/GO.mp3","sound","lufei_GO");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/GONGCHENGPAO.mp3","sound","lufei_GONGCHENGPAO");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/H1.mp3","sound","lufei_H1");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/H2.mp3","sound","lufei_H2");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/H3.mp3","sound","lufei_H3");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/H7.mp3","sound","lufei_H7");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/HUANGJIN.mp3","sound","lufei_HUANGJIN");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/HUOJIANPAO.mp3","sound","lufei_HUOJIANPAO");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/LUANDA.mp3","sound","lufei_LUANDA");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/LUANDA2.mp3","sound","lufei_LUANDA2");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/LUOXUAN.mp3","sound","lufei_LUOXUAN");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/MUDAN.mp3","sound","lufei_MUDAN");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/SHOUQIANG.mp3","sound","lufei_SHOUQIANG");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/SP.mp3","sound","lufei_SP");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/XL.mp3","sound","lufei_XL");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/XP1.mp3","sound","lufei_XP1");
         SystemLoading.addTask("File/indexFile/sound/role/lufei/XP3.mp3","sound","lufei_XP3");
      }
      
      public static function init() : void
      {
         $ob["橡皮弹"] = {
            "cd":6,
            "w":250,
            "s":"A",
            "key":Keyboard.U,
            "g":"橡胶火箭炮"
         };
         $ob["橡皮乱"] = {
            "cd":8,
            "w":100,
            "h":200,
            "s":"W",
            "key":Keyboard.U,
            "g":"橡胶暴风雨"
         };
         $ob["橡皮连"] = {
            "cd":8,
            "w":60,
            "s":"S",
            "key":Keyboard.U,
            "g":"橡胶机关枪"
         };
         $ob["橡皮踢"] = {
            "cd":4,
            "w":50,
            "h":100,
            "k":true,
            "s":"W",
            "key":Keyboard.I,
            "g":"橡胶火山"
         };
         $ob["橡皮火箭炮"] = {
            "cd":4,
            "w":100,
            "s":"A",
            "key":Keyboard.I,
            "g":"橡胶炮弹"
         };
         $ob["橡皮抽"] = {
            "cd":3,
            "w":300,
            "s":"S",
            "key":Keyboard.I,
            "g":"橡胶蛇枪"
         };
         $ob["霸王色"] = {
            "cd":30,
            "mp":250,
            "mp":200,
            "w":200,
            "s":"S",
            "key":Keyboard.O,
            "g":"霸王色激荡"
         };
         $ob["普通攻击"] = {
            "cd":0,
            "w":30,
            "s":"",
            "key":Keyboard.J
         };
         $ob["瞬步"] = {
            "cd":0,
            "w":200,
            "s":"",
            "key":Keyboard.L
         };
         $ob["橡皮旋"] = {
            "cd":6,
            "w":150,
            "s":"",
            "key":Keyboard.U,
            "g":"橡胶Jet猎枪"
         };
         $ob["橡皮搓"] = {
            "cd":6,
            "w":150,
            "s":"",
            "key":Keyboard.I,
            "g":"橡胶子弹"
         };
         $ob["橡皮黄金轮"] = {
            "cd":30,
            "mp":200,
            "w":250,
            "s":"",
            "key":Keyboard.O,
            "g":"橡胶巨人回转弹"
         };
         $ob["橡皮拉"] = {
            "cd":6,
            "w":200,
            "k":true,
            "s":"W",
            "key":Keyboard.U,
            "g":"橡胶UFO"
         };
         $ob["橡皮腿"] = {
            "cd":6,
            "w":100,
            "k":true,
            "s":"S",
            "key":Keyboard.U,
            "g":"橡胶鞭"
         };
         $ob["橡皮摔"] = {
            "cd":6,
            "w":150,
            "k":true,
            "s":"S",
            "key":Keyboard.I,
            "g":"橡皮战斧"
         };
         $ob["空中攻击"] = {
            "cd":0,
            "w":30,
            "k":true,
            "s":"",
            "key":Keyboard.U
         };
         $ob["橡皮轮"] = {
            "cd":6,
            "w":200,
            "s":"",
            "key":Keyboard.U,
            "g":"橡胶车轮"
         };
         $ob["橡皮枪"] = {
            "cd":6,
            "w":150,
            "k":true,
            "s":"",
            "key":Keyboard.I,
            "g":"橡胶火箭空炮"
         };
         $ob["黄金"] = {
            "cd":35,
            "mp":250,
            "w":100,
            "s":"",
            "k":true,
            "key":Keyboard.O,
            "g":"橡胶大烟花"
         };
         $ob["见闻色"] = {
            "cd":8,
            "w":300,
            "s":"S",
            "key":Keyboard.P,
            "g":"见闻色霸气"
         };
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            if(_loc4_ <= 1)
            {
               switch(param2)
               {
                  case Keyboard.J:
                     break loop0;
                  case Keyboard.K:
                     return "none";
                  case Keyboard.L:
                     switch(_loc3_)
                     {
                        case "S":
                     }
                     continue;
                  case Keyboard.U:
                     switch(_loc3_)
                     {
                        case "A":
                        case "D":
                           return "橡皮弹";
                        case "W":
                           param1.qz = 0;
                           return "橡皮乱";
                        case "S":
                           return "橡皮连";
                        default:
                           continue;
                     }
                     break;
                  case Keyboard.I:
                     switch(_loc3_)
                     {
                        case "W":
                           return "橡皮踢";
                        case "A":
                        case "D":
                           return "橡皮火箭炮";
                        case "S":
                           return "橡皮抽";
                        default:
                           continue;
                     }
                     break;
                  case Keyboard.O:
                     switch(_loc3_)
                     {
                        case "S":
                           return "霸王色";
                        default:
                           continue;
                     }
                     break;
                  case Keyboard.P:
                     return "见闻色";
                  default:
                     continue;
               }
            }
            addr0299:
            switch(param2)
            {
               case Keyboard.J:
                  return "普通攻击";
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  return "瞬步";
               case Keyboard.U:
                  return "橡皮旋";
               case Keyboard.I:
                  return "橡皮搓";
               case Keyboard.O:
                  return "橡皮黄金轮";
               case Keyboard.P:
                  return "none";
               default:
                  return "none";
            }
            _loc3_ = _loc3_.charAt(1);
            _loc4_++;
         }
         var _loc5_:String = _loc3_;
         switch(0)
         {
         }
         §§goto(addr0299);
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
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
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                        return "橡皮拉";
                     case "S":
                        return "橡皮腿";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "S":
                        return "橡皮摔";
                     default:
                        break loop2;
                  }
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
               return "橡皮轮";
            case Keyboard.I:
               return "橡皮枪";
            case Keyboard.O:
               return "黄金";
            case Keyboard.P:
               return "none";
            default:
               return "none";
         }
      }
      
      public static function Hrut(param1:SystemGameRole) : int
      {
         switch(param1.$frameString)
         {
            case "橡皮乱":
               return 5;
            case "橡皮黄金轮":
               return 30;
            case "橡皮拉":
               return 5;
            case "橡皮枪":
            case "橡皮火箭炮":
            case "橡皮摔":
            case "橡皮踢":
            case "橡皮弹":
               return 100;
            default:
               if(param1.$frameString !== "普通攻击")
               {
                  return 10;
               }
               return 0;
         }
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         if(param1.$stoic > 0 && Boolean(param1.$ob.bawangse))
         {
            if(param1.$hit_num >= 1)
            {
               param1.$stoic = 0;
               param1.$god = 40;
               param1.$ob.bawangse = false;
            }
         }
         else if(param1.$stoic <= 0 && Boolean(param1.$ob.bawangse))
         {
            param1.$ob.bawangse = false;
         }
         if(param1.$ob.bawangse)
         {
            param1.goQZ(2.55,0,0);
         }
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
         switch(param1.$frameString)
         {
            case "见闻色":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$hit_num = 0;
                  param1.$ob.bawangse = true;
                  param1.stoic = 1.5;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"YH/F",
                     "type":"SkillLuFei",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"YH/F",
                     "type":"SkillLuFei",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * -1
                  });
               }
               break;
            case "霸王色":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 1;
                  ComponentResourcesManage.$word.allColor(16777215,0.2);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "name":"LD/B",
                     "type":"SkillLuFei",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 2.5
                  });
               }
               break;
            case "黄金":
               param1.stoic = 0.2;
               if(param1.$frameInt >= 3 && param1.$frameInt <= 15 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "gox":Math.random() * 20 - 10,
                     "goy":Math.random() * 20 - 10,
                     "ka":[1,0],
                     "name":"LF/H",
                     "type":"SkillLuFei",
                     "fuck":49,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "gox":Math.random() * 20 - 10,
                     "goy":Math.random() * 20 - 10,
                     "ka":[1,0],
                     "name":"LF/H",
                     "type":"SkillLuFei",
                     "fuck":49,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "橡皮黄金轮":
               param1.stoic = 0.2;
               if(param1.$frameInt >= 6 && param1.$frameInt <= 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"LF/Q",
                     "type":"SkillLuFei",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + (param1.$frameInt - 6) * 50 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "橡皮弹":
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,3,4,-5) * param1.$scaleX;
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,8,16,15) * param1.$scaleX;
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,8,12,-3);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,11,16,3);
               if(param1.$frameInt >= 8 && param1.$frameInt <= 14)
               {
                  param1.$jumpBoolean = true;
               }
               break;
            case "橡皮拉":
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,2,9,-3);
               break;
            case "橡皮火箭炮":
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,8,9,-5) * param1.$scaleX;
               break;
            case "橡皮摔":
               if(param1.$jumpBoolean)
               {
                  if(param1.$frameInt == 5)
                  {
                     param1.$frameInt = 4;
                  }
                  param1.$y += FrameMath.mathFrameToX(param1.$frameInt,0,3,-3);
                  param1.$y += FrameMath.mathFrameToX(param1.$frameInt,4,5,15);
               }
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,4,5,10) * param1.$scaleX;
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LF/Q",
                     "type":"SkillLuFei",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 80 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "橡皮枪":
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,4,6,-5);
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,4,6,-4) * param1.$scaleX;
               break;
            case "橡皮轮":
               if(param1.$frameInt >= 3)
               {
                  param1.stoic = 0.2;
               }
               if(param1.$jumpBoolean)
               {
                  if(param1.$frameInt == 6)
                  {
                     param1.$frameInt = 3;
                  }
                  param1.$y += FrameMath.mathFrameToX(param1.$frameInt,3,6,15);
               }
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,3,8,10) * param1.$scaleX;
               break;
            case "橡皮乱":
               if(param1.$frameInt >= 8)
               {
                  param1.stoic = 0.2;
                  param1.$jumpBoolean = true;
               }
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,8,20,-5);
               break;
            case "橡皮连":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,8,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,9,10,5);
               break;
            case "橡皮搓":
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "fps":1,
                     "name":"LF/Q",
                     "type":"SkillLuFei",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + (param1.$frameInt - 6) * 50 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "橡皮旋":
               if((param1.$frameInt == 6 || param1.$frameInt == 7 || param1.$frameInt == 8 || param1.$frameInt == 9) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "fps":1,
                     "name":"LF/Q",
                     "type":"SkillLuFei",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + (param1.$frameInt - 6) * 50 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,param1.$speed * 4);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,4,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,10,12,8);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,16,20,10);
               if(param1.$frameInt == 19 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LD/D1",
                     "type":"SkillLuFei",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "橡皮弹":
               param1.$frameInt = 15;
               if(param1.$frameInt >= 5)
               {
                  GameData.$KaTime = 10 * 2;
                  param2.$jumpForFuckBoolean = true;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "mode":"tx",
                     "tx":true,
                     "name":"skill1",
                     "role":param1,
                     "x":param2.$bit.x,
                     "y":param2.$bit.y - 30 + (15 - Math.random() * 30),
                     "scaleX":param1.$scaleX
                  });
               }
               break;
            case "橡皮踢":
               if(param1.$frameInt >= 5)
               {
                  GameData.$KaTime = 10 * 2;
                  param2.$jumpForFuckBoolean = true;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "mode":"tx",
                     "tx":true,
                     "name":"skill1",
                     "role":param1,
                     "x":param2.$bit.x,
                     "y":param2.$bit.y - 30 + (15 - Math.random() * 30),
                     "scaleX":param1.$scaleX
                  });
               }
               break;
            case "橡皮腿":
               if(param1.$frameInt >= 6)
               {
                  GameData.$KaTime = 10 * 2;
                  param2.$jumpForFuckBoolean = true;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "mode":"tx",
                     "tx":true,
                     "name":"skill1",
                     "role":param1,
                     "x":param2.$bit.x,
                     "y":param2.$bit.y - 30 + (15 - Math.random() * 30),
                     "scaleX":param1.$scaleX
                  });
               }
               break;
            case "橡皮火箭炮":
               if(param1.$frameInt >= 8)
               {
                  GameData.$KaTime = 10 * 2;
                  param2.$jumpForFuckBoolean = true;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "mode":"tx",
                     "tx":true,
                     "name":"skill1",
                     "role":param1,
                     "x":param2.$bit.x,
                     "y":param2.$bit.y - 30 + (15 - Math.random() * 30),
                     "scaleX":param1.$scaleX
                  });
               }
               break;
            case "橡皮连":
               if(param1.$frameInt >= 10)
               {
                  GameData.$KaTime = 10 * 2;
                  param2.$jumpForFuckBoolean = true;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "mode":"tx",
                     "tx":true,
                     "name":"skill1",
                     "role":param1,
                     "x":param2.$bit.x,
                     "y":param2.$bit.y - 30 + (15 - Math.random() * 30),
                     "scaleX":param1.$scaleX
                  });
               }
               break;
            case "橡皮抽":
               param1.$frameInt = 11;
               param2.$stoic = 0;
               param2.$frameString = "受伤";
         }
      }
   }
}

