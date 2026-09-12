package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.SystemMucisPlay;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import eye.Math.FrameMath;
   import flash.display.BlendMode;
   import flash.ui.Keyboard;
   
   public class GangJi
   {
      
      public static var $ob:Object = new Object();
      
      public function GangJi()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["死氣亂擊"] = {
            "cd":8,
            "w":50,
            "s":"S",
            "key":Keyboard.U
         };
         $ob["防護披風"] = {
            "cd":15,
            "w":300,
            "s":"W",
            "key":Keyboard.I
         };
         $ob["死氣滑翔"] = {
            "cd":5,
            "w":50,
            "s":"S",
            "key":Keyboard.J
         };
         $ob["死氣劍角"] = {
            "cd":5,
            "w":100,
            "s":"W",
            "key":Keyboard.J
         };
         $ob["死氣衝擊"] = {
            "cd":10,
            "w":400,
            "s":"",
            "key":Keyboard.U
         };
         $ob["死氣之炎"] = {
            "cd":5,
            "w":100,
            "s":"SS",
            "key":Keyboard.U
         };
         $ob["零地點突破"] = {
            "cd":8,
            "w":200,
            "s":"",
            "key":Keyboard.I
         };
         $ob["零地點突破˙改"] = {
            "cd":15,
            "w":500,
            "s":"S",
            "key":Keyboard.I
         };
         $ob["X˙BURNER"] = {
            "cd":30,
            "mp":300,
            "w":1000,
            "s":"",
            "key":Keyboard.O
         };
         $ob["宇宙超炸裂"] = {
            "cd":30,
            "mp":300,
            "w":200,
            "s":"W",
            "key":Keyboard.O
         };
         $ob["XX˙BURNER"] = {
            "cd":45,
            "mp":300,
            "w":1000,
            "s":"S",
            "key":Keyboard.O
         };
         $ob["彭哥列匣"] = {
            "cd":10,
            "w":10000,
            "s":"",
            "key":Keyboard.P
         };
         $ob["死氣噴射"] = {
            "cd":3,
            "w":200,
            "k":true,
            "s":"",
            "key":Keyboard.U
         };
         $ob["死氣緩衝"] = {
            "cd":3,
            "w":200,
            "k":true,
            "s":"S",
            "key":Keyboard.U
         };
         $ob["X˙BURNER AIR"] = {
            "cd":30,
            "mp":300,
            "w":1000,
            "k":true,
            "s":"S",
            "key":Keyboard.O
         };
         $ob["死氣飛行"] = {
            "cd":2,
            "w":1000,
            "k":true,
            "s":"",
            "key":Keyboard.L
         };
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/gangji.png","photo","GangJi");
         SystemLoading.addTask("File/indexFile/img/role/gangji.xml","text","GangJi");
         SystemLoading.addTask("File/indexFile/img/skill/PiFeng.png","photo","PiFeng");
         SystemLoading.addTask("File/indexFile/img/skill/PiFeng.xml","text","PiFeng");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/SI.mp3","sound","PiFeng");
         SystemLoading.addTask("File/indexFile/img/skill/LuanJi.png","photo","LuanJi");
         SystemLoading.addTask("File/indexFile/img/skill/LuanJi.xml","text","LuanJi");
         SystemLoading.addTask("File/indexFile/img/skill/HuaJi.png","photo","HuaJi");
         SystemLoading.addTask("File/indexFile/img/skill/HuaJi.xml","text","HuaJi");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/XJ.mp3","sound","HuaJi");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/MXJ.mp3","sound","MHuaJi");
         SystemLoading.addTask("File/indexFile/img/skill/LingDian.png","photo","LingDian");
         SystemLoading.addTask("File/indexFile/img/skill/LingDian.xml","text","LingDian");
         SystemLoading.addTask("File/indexFile/img/skill/LingBing.png","photo","LingBing");
         SystemLoading.addTask("File/indexFile/img/skill/LingBing.xml","text","LingBing");
         SystemLoading.addTask("File/indexFile/img/skill/Bing.png","photo","Bing");
         SystemLoading.addTask("File/indexFile/img/skill/Bing.xml","text","Bing");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/BI.mp3","sound","Bing");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/I.mp3","sound","LingBing");
         SystemLoading.addTask("File/indexFile/img/skill/XGuang.png","photo","XGuang");
         SystemLoading.addTask("File/indexFile/img/skill/XGuang.xml","text","XGuang");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/O.mp3","sound","XGuang");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/MO.mp3","sound","MXGuang");
         SystemLoading.addTask("File/indexFile/img/skill/SiQi.png","photo","SiQi");
         SystemLoading.addTask("File/indexFile/img/skill/SiQi.xml","text","SiQi");
         SystemLoading.addTask("File/indexFile/img/skill/XXyan.png","photo","XXYan");
         SystemLoading.addTask("File/indexFile/img/skill/XXyan.xml","text","XXYan");
         SystemLoading.addTask("File/indexFile/img/skill/XXQ.png","photo","XXQ");
         SystemLoading.addTask("File/indexFile/img/skill/XXQ.xml","text","XXQ");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/G1.mp3","sound","GJG1");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/G2.mp3","sound","GJG2");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/XO1.mp3","sound","XO1");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/XO2.mp3","sound","XO2");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/SU.mp3","sound","SiQi");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/U.mp3","sound","BaoPo");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/Yan.mp3","sound","GJYan");
         SystemLoading.addTask("File/indexFile/img/skill/BaoFa.png","photo","BaoFa");
         SystemLoading.addTask("File/indexFile/img/skill/BaoFa.xml","text","BaoFa");
         SystemLoading.addTask("File/indexFile/img/skill/BaoPo.png","photo","BaoPo");
         SystemLoading.addTask("File/indexFile/img/skill/BaoPo.xml","text","BaoPo");
         SystemLoading.addTask("File/indexFile/img/skill/SuChuan.png","photo","SuChuan");
         SystemLoading.addTask("File/indexFile/img/skill/SuChuan.xml","text","SuChuan");
         SystemLoading.addTask("File/indexFile/img/skill/YuanFei.png","photo","YuanFei");
         SystemLoading.addTask("File/indexFile/img/skill/YuanFei.xml","text","YuanFei");
         SystemLoading.addTask("File/indexFile/img/skill/YuanBao.png","photo","YuanBao");
         SystemLoading.addTask("File/indexFile/img/skill/YuanBao.xml","text","YuanBao");
         SystemLoading.addTask("File/indexFile/img/skill/BaoQi.png","photo","BaoQi");
         SystemLoading.addTask("File/indexFile/img/skill/BaoQi.xml","text","BaoQi");
         SystemLoading.addTask("File/indexFile/img/skill/TuiHuo.png","photo","TuiHuo");
         SystemLoading.addTask("File/indexFile/img/skill/TuiHuo.xml","text","TuiHuo");
         SystemLoading.addTask("File/indexFile/img/skill/XXYan2.png","photo","XXYan2");
         SystemLoading.addTask("File/indexFile/img/skill/XXYan2.xml","text","XXYan2");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/KSXJ.mp3","sound","GJKSXJ");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/SO1.mp3","sound","GJSO1");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/SO2.mp3","sound","GJSO2");
         SystemLoading.addTask("File/indexFile/sound/role/GangJi/XI.mp3","sound","GJXI");
         SystemLoading.addTask("File/indexFile/img/skill/NaZi.png","photo","SkillNaZi");
         SystemLoading.addTask("File/indexFile/img/skill/NaZi.xml","text","SkillNaZi");
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
                     case "S":
                        return "死氣滑翔";
                     case "W":
                        return "死氣劍角";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  switch(_loc3_)
                  {
                     case "S":
                        return "快速后移";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "S":
                        return "死氣亂擊";
                     case "SS":
                        return "死氣之炎";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        if(ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["Skill" + param1.name + "SkillNaZi"] is SkillShow)
                        {
                           ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["Skill" + param1.name + "SkillNaZi"].$time = 10;
                           return "防護披風";
                        }
                        break;
                     case "S":
                        return "零地點突破˙改";
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "W":
                        if(ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["Skill" + param1.name + "SkillNaZi"] is SkillShow)
                        {
                           ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["Skill" + param1.name + "SkillNaZi"].$time = 10;
                           return "宇宙超炸裂";
                        }
                        break;
                     case "S":
                        return "XX˙BURNER";
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
               return "死氣衝擊";
            case Keyboard.I:
               return "零地點突破";
            case Keyboard.O:
               return "X˙BURNER";
            case Keyboard.P:
               if(!(ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["Skill" + param1.name + "SkillNaZi"] is SkillShow))
               {
                  return "彭哥列匣";
               }
         }
         return "none";
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc4_:int = 0;
         for(; _loc4_ <= 1; _loc3_ = _loc3_.charAt(1),_loc4_++)
         {
            loop2:
            switch(param2)
            {
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "S":
                        return "死氣緩衝";
                     default:
                        break loop2;
                  }
               case Keyboard.O:
                  break;
               default:
                  continue;
            }
            if(_loc3_ == "S")
            {
               return "X˙BURNER AIR";
            }
         }
         switch(param2)
         {
            case Keyboard.J:
               return "空中攻击";
            case Keyboard.L:
               return "死氣飛行";
            case Keyboard.U:
               return "死氣噴射";
            case Keyboard.O:
               return "X˙BURNER";
            default:
               return "none";
         }
      }
      
      public static function Hurt(param1:SystemGameRole) : int
      {
         switch(param1.$frameString)
         {
            case "死氣亂擊":
               return 10;
            default:
               return 20;
         }
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         if(!param1.$jumpBoolean)
         {
            param1.$y += param1.Speed;
         }
         switch(param1.$frameString)
         {
            case "彭哥列匣":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"SkillNaZi",
                     "type":"SkillGangJi",
                     "target":true,
                     "blendMode":BlendMode.NORMAL,
                     "fuck":0,
                     "time":1000,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "X˙BURNER AIR":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  SystemMucisPlay.setMusic = "XGuang";
                  SystemMucisPlay.setMusic = "MXGuang";
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XXYan2",
                     "type":"SkillGangJi",
                     "fuck":3,
                     "time":40,
                     "role":param1,
                     "x":param1.$x - 60 * param1.$scaleX,
                     "y":param1.$y - 150,
                     "scaleX":-param1.$scaleX * 1,
                     "scaleY":-1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XXYan2",
                     "type":"SkillGangJi",
                     "fuck":3,
                     "time":30,
                     "role":param1,
                     "x":param1.$x + 70 * param1.$scaleX,
                     "y":param1.$y + 50,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].$map.setZhen = 1;
               }
               break;
            case "零地點突破˙改":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"BaoQi",
                     "type":"SkillGangJi",
                     "gox":0,
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"TuiHuo",
                     "type":"SkillGangJi",
                     "gox":10,
                     "fuck":3,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x + 30 * -param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":-param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"TuiHuo",
                     "type":"SkillGangJi",
                     "gox":10,
                     "fuck":3,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "宇宙超炸裂":
               param1.stoic = 0.2;
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,19,22,param1.$speed * 3);
               if(param1.hitRoleBoolean && param1.$frameInt < 22 && param1.$frameInt > 19)
               {
                  param1.$frameInt = 22;
               }
               if(param1.$frameInt == 22 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  SystemMucisPlay.setMusic = "GJSO1";
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"YuanFei",
                     "type":"SkillGangJi",
                     "gox":10,
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y - 25,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "死氣劍角":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,6,param1.$speed * 2);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,0,1,param1.$speed * 2);
               param1.$jumpBoolean = true;
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LuanJi",
                     "type":"SkillGangJi",
                     "target":true,
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "死氣噴射":
               param1.$x -= param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,8,param1.$speed * 2.5 - param1.$frameInt);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,3,9,param1.$speed * 2 - param1.$frameInt);
               break;
            case "死氣緩衝":
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,4,9,param1.$speed * 2.5 - param1.$frameInt);
               break;
            case "死氣衝擊":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,10,16,param1.$speed * 3);
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"BaoFa",
                     "type":"SkillGangJi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX
                  });
               }
               else if(param1.$frameInt == 13 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"SuChuan",
                     "type":"SkillGangJi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX
                  });
               }
               else if(param1.$frameInt == 15 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"BaoPo",
                     "type":"SkillGangJi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].$map.setZhen = 1;
               }
               break;
            case "XX˙BURNER":
               param1.$x -= param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,13,16,param1.$speed);
               if(param1.$frameInt == 13 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 2;
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XXYan",
                     "type":"SkillGangJi",
                     "fuck":3,
                     "time":40,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1,
                     "gox":20
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XXQ",
                     "type":"SkillGangJi",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].$map.setZhen = 1;
               }
               break;
            case "死氣之炎":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"SiQi",
                     "type":"SkillGangJi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "死氣飛行":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,5,param1.$speed * 3);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,4,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,9,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,16,19,4);
               break;
            case "防護披風":
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"PiFeng",
                     "type":"SkillGangJi",
                     "target":true,
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.8
                  });
               }
               break;
            case "死氣亂擊":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,7,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,12,14,5);
               if(param1.$frameInt == 11 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LuanJi",
                     "type":"SkillGangJi",
                     "target":true,
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].$map.setZhen = 1;
               }
               break;
            case "死氣滑翔":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,8,param1.$speed * 2);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  SystemMucisPlay.setMusic = "HuaJi";
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"HuaJi",
                     "type":"SkillGangJi",
                     "target":true,
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "零地點突破":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  SystemMucisPlay.setMusic = "LingBing";
                  param1.stoic = 1;
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LingDian",
                     "type":"SkillGangJi",
                     "target":true,
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LingBing",
                     "type":"SkillGangJi",
                     "target":true,
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "X˙BURNER":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 2;
                  SystemMucisPlay.setMusic = "XGuang";
                  SystemMucisPlay.setMusic = "MXGuang";
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XGuang",
                     "type":"SkillGangJi",
                     "fuck":6,
                     "time":20,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XGuang",
                     "type":"SkillGangJi",
                     "fuck":6,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":-param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].$map.setZhen = 1;
               }
               break;
            case "瞬步":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,5,param1.$speed * 3);
               param1.stoic = 0.2;
         }
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

