package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class NaZi
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function NaZi()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/nazi.png","photo","NaZi");
         SystemLoading.addTask("File/indexFile/img/role/nazi.xml","text","NaZi");
         SystemLoadType.loadRoleSkillData("NZ/L");
         SystemLoadType.loadRoleSkillData("NZ/H");
         SystemLoadType.loadRoleSkillData("NZ/S");
         SystemLoadType.loadRoleSkillData("NZ/Y");
         SystemLoadType.loadRoleSkillData("NZ/Y1");
         SystemLoadType.loadRoleSkillData("NZ/Z");
         SystemLoadType.loadRoleSkillData("NZ/D1");
         SystemLoadType.loadRoleSkillData("NZ/D2");
         SystemLoadType.loadRoleSkillData("NZ/D3");
         SystemLoadType.loadRoleSkillData("NZ/HBuff");
         SystemLoadType.loadRoleSkillData("AS/X");
         SystemLoadType.loadRoleSkillData("NZ/B");
         SystemLoadType.loadRoleSkillData("AS/huo");
         SystemLoadType.loadRoleSkillData("NZ/Q");
         SystemLoading.addTask("File/indexFile/sound/role/nazi/A1.mp3","sound","nazi_A1");
         SystemLoading.addTask("File/indexFile/sound/role/nazi/H1.mp3","sound","nazi_H1");
         SystemLoading.addTask("File/indexFile/sound/role/nazi/H2.mp3","sound","nazi_H2");
         SystemLoading.addTask("File/indexFile/sound/role/nazi/H3.mp3","sound","nazi_H3");
         SystemLoading.addTask("File/indexFile/sound/role/nazi/H4.mp3","sound","nazi_H4");
         SystemLoading.addTask("File/indexFile/sound/role/nazi/H5.mp3","sound","nazi_H5");
         SystemLoading.addTask("File/indexFile/sound/role/nazi/HUOLONG.mp3","sound","nazi_HUOLONG");
         SystemLoading.addTask("File/indexFile/sound/role/nazi/O.mp3","sound","nazi_O");
         SystemLoading.addTask("File/indexFile/sound/role/nazi/SI.mp3","sound","nazi_SI");
         SystemLoading.addTask("File/indexFile/sound/role/nazi/XO.mp3","sound","nazi_XO");
         SystemLoading.addTask("File/indexFile/sound/role/nazi/Y3.mp3","sound","nazi_Y3");
         $mxx = $mxx.concat([0,0,1.2,1.55,0]);
         $mxx = $mxx.concat([0,0.5,0,0,0]);
         $mxx = $mxx.concat([0,0,0,0,0]);
         $mxx = $mxx.concat([0.2,0.2,0.2,1,0]);
      }
      
      public static function init() : void
      {
         $ob["踢飞"] = {
            "cd":3,
            "w":70,
            "s":"W",
            "key":Keyboard.U,
            "g":"勾爪"
         };
         $ob["火焰拳"] = {
            "cd":6,
            "w":100,
            "s":"S",
            "key":Keyboard.U,
            "g":"火龙的铁拳"
         };
         $ob["升龙拳"] = {
            "cd":6,
            "w":50,
            "s":"W",
            "key":Keyboard.I,
            "g":"灭龙奥义.红莲凤凰剑"
         };
         $ob["龙牙"] = {
            "cd":4,
            "w":200,
            "s":"S",
            "key":Keyboard.I,
            "g":"龙牙"
         };
         $ob["火斩"] = {
            "cd":30,
            "mp":200,
            "w":300,
            "s":"S",
            "key":Keyboard.O,
            "g":"灭龙奥义.红莲爆炎刃"
         };
         $ob["火焰"] = {
            "cd":30,
            "mp":300,
            "w":300,
            "s":"W",
            "key":Keyboard.O,
            "g":"火龙的翼击"
         };
         $ob["吃饭"] = {
            "cd":30,
            "mp":200,
            "w":300,
            "s":"S",
            "key":Keyboard.P,
            "g":"吞焰→回复100hp"
         };
         $ob["吐炎"] = {
            "cd":8,
            "w":200,
            "s":"",
            "key":Keyboard.U,
            "g":"火龙的咆哮"
         };
         $ob["冲击"] = {
            "cd":6,
            "w":200,
            "s":"",
            "key":Keyboard.I,
            "g":"击铁"
         };
         $ob["龙爆"] = {
            "cd":20,
            "mp":200,
            "w":250,
            "s":"",
            "key":Keyboard.O,
            "g":"火龙的轰击"
         };
         $ob["爆身"] = {
            "cd":20,
            "w":1000,
            "s":"",
            "key":Keyboard.P,
            "g":"雷炎龙模式"
         };
         $ob["瞬步"] = {
            "cd":0,
            "w":1000,
            "s":"",
            "key":Keyboard.L
         };
         $ob["普通攻击"] = {
            "cd":0,
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
                     case "S":
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                        return "踢飞";
                     case "S":
                        return "火焰拳";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        return "升龙拳";
                     case "S":
                        return "龙牙";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "S":
                        return "火斩";
                     case "W":
                        return "火焰";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.P:
                  switch(_loc3_)
                  {
                     case "S":
                        return "吃饭";
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
               return "吐炎";
            case Keyboard.I:
               return "冲击";
            case Keyboard.O:
               return "龙爆";
            case Keyboard.P:
               return "爆身";
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
                  return "none";
               case Keyboard.O:
                  return "none";
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
               break;
            case Keyboard.I:
               return "none";
            case Keyboard.O:
               return "none";
            case Keyboard.P:
               return "none";
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
         switch(param1.$frameString)
         {
            case "龙爆":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,5,15);
               if(param1.$frameInt < 5 && param1.hitRoleBoolean && param1.$frameInt >= 3)
               {
                  param1.$frameInt = 6;
               }
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "name":"NZ/Y1",
                     "fps":1,
                     "type":"SkillNaZi",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 40 * param1.$scaleX,
                     "y":param1.$bit.y + 30,
                     "scaleX":param1.$scaleX * 2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"NZ/Q",
                     "ka":[3,10],
                     "type":"SkillNaZi",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y + 20,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "火斩":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,3,15);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "name":"NZ/Y1",
                     "fps":1,
                     "type":"SkillNaZi",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y + 30,
                     "scaleX":param1.$scaleX * 2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"NZ/B",
                     "ka":[3,10],
                     "type":"SkillNaZi",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 80 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "吃饭":
               if(param1.$skillFrameInt !== param1.$frameInt && (param1.$frameInt == 4 || param1.$frameInt == 6))
               {
                  param1.sethp(param1.gethp + 150);
                  if(param1.gethp > param1.$hpMax)
                  {
                     param1.sethp(param1.$hpMax);
                  }
               }
               break;
            case "龙牙":
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,2,3,-15);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,5,6,15);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,6,8);
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt && param1.$ob.lei == true)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"NZ/L",
                     "ka":[1,10],
                     "type":"SkillNaZi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y + 40,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "爆身":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"NZ/HBuff",
                     "type":"SkillNaZi",
                     "fuck":0,
                     "time":400,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"NZ/D1",
                     "type":"SkillNaZi",
                     "fuck":0,
                     "time":400,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               else if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"NZ/D2",
                     "type":"SkillNaZi",
                     "fuck":0,
                     "time":400,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               else if(param1.$frameInt == 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"NZ/D3",
                     "type":"SkillNaZi",
                     "fuck":0,
                     "time":400,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               break;
            case "冲击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,6,8);
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":8,
                     "ka":[1,10],
                     "name":"NZ/Z",
                     "type":"SkillNaZi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "火焰":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,4,20);
               if(param1.$frameInt >= 4)
               {
                  param1.stoic = 0.2;
               }
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "name":"NZ/Y1",
                     "fps":1,
                     "type":"SkillNaZi",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "name":"NZ/Y",
                     "type":"SkillNaZi",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "name":"NZ/Y1",
                     "fps":1,
                     "type":"SkillNaZi",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 60,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "升龙拳":
               if(param1.$frameInt >= 2)
               {
                  param1.stoic = 0.2;
               }
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,2,14,-8);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "goy":-8,
                     "ka":[10,10],
                     "name":"NZ/S",
                     "type":"SkillNaZi",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "吐炎":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[10,10],
                     "name":"NZ/H",
                     "type":"SkillNaZi",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "踢飞":
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,2,5,-8);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,5,8,8);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,8,7);
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt && param1.$ob.lei == true)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"NZ/L",
                     "type":"SkillNaZi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y + 30,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "火焰拳":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,9,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,14,17,12);
               if(param1.$frameInt == 14 && param1.$skillFrameInt !== param1.$frameInt && param1.$ob.lei == true)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"NZ/L",
                     "type":"SkillNaZi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 70 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               if(param1.$frameInt == 16 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"NZ/Z",
                     "type":"SkillNaZi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "空中攻击":
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,param1.$speed * 4);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,2,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,5,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,7,8,4);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,10,13,4);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,10,13,-8);
               if(param1.$frameInt >= 10)
               {
                  param1.$ob.kong = true;
                  param1.$jumpBoolean = true;
               }
               if(param1.$frameInt == 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"AS/X",
                     "type":"SkillNaZi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "龍鳴閃":
               ComponentResourcesManage.$Ob["SystemNaZird"].askElements("skill",{
                  "name":"BoYin",
                  "type":"SkillNaZi",
                  "fuck":0,
                  "time":0,
                  "role":param1,
                  "x":param2.$bit.x,
                  "y":param2.$bit.y - param2.height / 2,
                  "scaleX":param2.$scaleX * 1
               });
         }
      }
   }
}

