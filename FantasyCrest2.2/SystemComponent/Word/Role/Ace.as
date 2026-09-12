package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class Ace
   {
      
      public static var $ob:Object = new Object();
      
      public function Ace()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["上旋腿"] = {
            "cd":7,
            "w":50,
            "s":"W",
            "key":Keyboard.J,
            "g":"炎旋腿"
         };
         $ob["火焰瞬移"] = {
            "cd":12,
            "w":1000,
            "s":"S",
            "key":Keyboard.L,
            "g":"火焰瞬移"
         };
         $ob["地崩"] = {
            "cd":12,
            "w":150,
            "s":"S",
            "key":Keyboard.U,
            "g":"崩炎"
         };
         $ob["炎舞"] = {
            "cd":12,
            "w":80,
            "s":"W",
            "key":Keyboard.U,
            "g":"破空炎舞"
         };
         $ob["原子"] = {
            "cd":6,
            "w":100,
            "s":"S",
            "key":Keyboard.I,
            "g":"萤火.火达摩"
         };
         $ob["瞬炎"] = {
            "cd":24,
            "mp":200,
            "w":250,
            "s":"AA",
            "key":Keyboard.O,
            "g":"炎上纲"
         };
         $ob["爆发"] = {
            "cd":30,
            "mp":200,
            "w":200,
            "s":"W",
            "key":Keyboard.O,
            "g":"炎戒.火柱"
         };
         $ob["瞬步"] = {
            "cd":0,
            "w":1000,
            "s":"",
            "key":Keyboard.L
         };
         $ob["火拳"] = {
            "cd":10,
            "w":300,
            "s":"",
            "key":Keyboard.U,
            "g":"火拳"
         };
         $ob["手枪"] = {
            "cd":6,
            "w":300,
            "s":"",
            "key":Keyboard.I,
            "g":"火枪"
         };
         $ob["炎帝"] = {
            "cd":40,
            "mp":400,
            "w":500,
            "s":"",
            "key":Keyboard.O,
            "g":"大炎戒.炎帝"
         };
         $ob["火枪"] = {
            "cd":3,
            "k":true,
            "w":200,
            "s":"S",
            "key":Keyboard.U,
            "g":"神火·不知火"
         };
         $ob["落炎"] = {
            "cd":5,
            "k":true,
            "w":50,
            "h":1000,
            "s":"",
            "key":Keyboard.U,
            "g":"落炎"
         };
         $ob["空中攻击"] = {
            "cd":0,
            "k":true,
            "w":50,
            "s":"",
            "key":Keyboard.J
         };
         $ob["普通攻击"] = {
            "cd":0,
            "w":50,
            "s":"",
            "key":Keyboard.J
         };
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/ace.png","photo","Ace");
         SystemLoading.addTask("File/indexFile/img/role/ace.xml","text","Ace");
         SystemLoading.addTask("File/indexFile/img/skill/YanDi.png","photo","YanDi");
         SystemLoading.addTask("File/indexFile/img/skill/YanDi.xml","text","YanDi");
         SystemLoadType.loadRoleSkillData("AS/Q");
         SystemLoadType.loadRoleSkillData("AS/X");
         SystemLoadType.loadRoleSkillData("AS/B");
         SystemLoadType.loadRoleSkillData("AS/D");
         SystemLoadType.loadRoleSkillData("AS/Boom");
         SystemLoadType.loadRoleSkillData("AS/W");
         SystemLoadType.loadRoleSkillData("AS/Y");
         SystemLoadType.loadRoleSkillData("AS/Z");
         SystemLoadType.loadRoleSkillData("AS/H");
         SystemLoadType.loadRoleSkillData("AS/S");
         SystemLoadType.loadRoleSkillData("AS/huo");
         SystemLoadType.loadRoleSkillData("AS/HQ");
         SystemLoadType.loadHredSkillData("ace1");
         SystemLoading.addTask("File/indexFile/sound/role/ace/1.mp3","sound","ace_1");
         SystemLoading.addTask("File/indexFile/sound/role/ace/2.mp3","sound","ace_2");
         SystemLoading.addTask("File/indexFile/sound/role/ace/3.mp3","sound","ace_3");
         SystemLoading.addTask("File/indexFile/sound/role/ace/5.mp3","sound","ace_5");
         SystemLoading.addTask("File/indexFile/sound/role/ace/7.mp3","sound","ace_7");
         SystemLoading.addTask("File/indexFile/sound/role/ace/I.mp3","sound","ace_I");
         SystemLoading.addTask("File/indexFile/sound/role/ace/I2.mp3","sound","ace_I2");
         SystemLoading.addTask("File/indexFile/sound/role/ace/O.mp3","sound","ace_O");
         SystemLoading.addTask("File/indexFile/sound/role/ace/SOorKSJ.mp3","sound","ace_SOorKSJ");
         SystemLoading.addTask("File/indexFile/sound/role/ace/U.mp3","sound","ace_U");
         SystemLoading.addTask("File/indexFile/sound/role/ace/WI1.mp3","sound","ace_WI1");
         SystemLoading.addTask("File/indexFile/sound/role/ace/WO.mp3","sound","ace_WO");
         SystemLoading.addTask("File/indexFile/sound/role/ace/WO2.mp3","sound","ace_WO2");
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
                        return "上旋腿";
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
                        return "火焰瞬移";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "S":
                        return "地崩";
                     case "W":
                        return "炎舞";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "S":
                        return "原子";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "AA":
                     case "DD":
                        return "瞬炎";
                     case "W":
                        return "爆发";
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
               return "火拳";
            case Keyboard.I:
               return "手枪";
            case Keyboard.O:
               return "炎帝";
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
            loop1:
            switch(param2)
            {
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "S":
                        return "火枪";
                     default:
                        break loop1;
                  }
            }
            _loc3_ = _loc3_.charAt(1);
            _loc4_++;
         }
         switch(param2)
         {
            case Keyboard.J:
               return "空中攻击";
            case Keyboard.U:
               return "落炎";
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
            case "火拳":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"AS/HQ",
                     "type":"SkillAce",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬炎":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,5,param1.Speed * 8);
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "name":"AS/S",
                     "type":"SkillAce",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 60 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "火枪":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "troops":param1.$troops,
                     "hp":1,
                     "gox":13,
                     "goy":10,
                     "name":"AS/H",
                     "type":"SkillAce",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "原子":
               if((param1.$frameInt == 2 || param1.$frameInt == 4 || param1.$frameInt == 6 || param1.$frameInt == 8) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "troops":param1.$troops,
                     "hp":1,
                     "gox":Math.random() * 10,
                     "goy":Math.random() * 10 - 5,
                     "name":"AS/Z",
                     "type":"SkillAce",
                     "fuck":12,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 80 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "落炎":
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,2,4,15);
               if(param1.$jumpBoolean && param1.$frameInt == 4)
               {
                  param1.to(2);
               }
               else if(!param1.$jumpBoolean && param1.$frameInt < 5)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 1;
                  param1.to(5);
               }
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"AS/Y",
                     "type":"SkillAce",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "炎舞":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,6,2);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,3,6,-10);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[2,10],
                     "name":"AS/W",
                     "type":"SkillAce",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "爆发":
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 1;
                  param1.stoic = 0.5;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"AS/Boom",
                     "type":"SkillAce",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "手枪":
               if((param1.$frameInt == 4 || param1.$frameInt == 8) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "troops":param1.$troops,
                     "hp":1,
                     "gox":15,
                     "name":"AS/D",
                     "type":"SkillAce",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 40 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "地崩":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 1;
                  param1.stoic = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"AS/B",
                     "type":"SkillAce",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 40 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "上旋腿":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,6,2);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,3,6,-8);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"AS/X",
                     "type":"SkillAce",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "火焰瞬移":
               param1.$god = 5;
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,5,param1.Speed * 8);
               RoleMathType.alphaFrame(param1);
               break;
            case "瞬步":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,6,param1.Speed * 4);
               RoleMathType.alphaFrame(param1);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,4,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,8,11,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,13,15,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,19,21,4);
               break;
            case "炎帝":
               RoleMathType.setPhoto(param1,"HREDace1");
               param1.stoic = 0.1;
               ComponentResourcesManage.$word.$map.$scale = 1;
               if(param1.$frameInt == 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"YanDi",
                     "type":"SkillAce",
                     "target":true,
                     "fuck":3,
                     "time":120,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 70,
                     "scaleX":param1.$scaleX * 2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "down":true,
                     "name":"AS/Q",
                     "type":"SkillAce",
                     "fuck":0,
                     "time":20,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               if(param1.$frameInt == 24 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["Skill" + param1.name + "YanDi"].$gox = 3;
                  ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["Skill" + param1.name + "YanDi"].$goy = 4;
               }
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

