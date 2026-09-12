package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.display.BlendMode;
   import flash.ui.Keyboard;
   
   public class ShuangDaoYiHu
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public static var $hei:Array = new Array();
      
      public function ShuangDaoYiHu()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/shuangdaoyihu.png","photo","ShuangDaoYiHu");
         SystemLoading.addTask("File/indexFile/img/role/shuangdaoyihu.xml","text","ShuangDaoYiHu");
         SystemLoadType.loadRoleSkillData("XN/R");
         SystemLoadType.loadRoleSkillData("XN/T");
         SystemLoadType.loadRoleSkillData("XN/K");
         SystemLoadType.loadRoleSkillData("XN/C");
         SystemLoadType.loadRoleSkillData("YH/Y4");
         SystemLoadType.loadRoleSkillData("YH/D");
         SystemLoadType.loadRoleSkillData("YH/Y");
         SystemLoadType.loadRoleSkillData("YH/Z1");
         SystemLoadType.loadRoleSkillData("YH/G");
         SystemLoadType.loadRoleSkillData("YH/Y3");
         SystemLoadType.loadRoleSkillData("XN/C1");
         SystemLoadType.loadRoleSkillData("HF/J");
         SystemLoadType.loadRoleSkillData("XN/Z");
         $mxx = $mxx.concat([0,0,0.1,0.1,0]);
         $mxx = $mxx.concat([0,0.5,0,0,0]);
         $mxx = $mxx.concat([0,1,0,0.7,0]);
         $mxx = $mxx.concat([0.2,0.2,0.2,1,0]);
         $hei = $hei.concat([0,0,0,0,0]);
         $hei = $hei.concat([0,0,0,0,0]);
         $hei = $hei.concat([0,0,0,0,0]);
         $hei = $hei.concat([1,0.8,0.4,0.05,0.05]);
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         RoleMathType.setSpeed(param1,7);
      }
      
      public static function init() : void
      {
         $ob["二刀流"] = {
            "cd":4,
            "w":80,
            "h":80,
            "s":"S",
            "key":Keyboard.J,
            "g":"虚化二刀流灭斩"
         };
         $ob["瞬闪"] = {
            "cd":4,
            "w":120,
            "s":"W",
            "key":Keyboard.U,
            "g":"瞬闪"
         };
         $ob["杀闪"] = {
            "cd":6,
            "w":200,
            "s":"S",
            "key":Keyboard.U,
            "g":"环杀斩"
         };
         $ob["虚斩二段击"] = {
            "cd":6,
            "w":250,
            "s":"SS",
            "key":Keyboard.U,
            "g":"灵压解放.旋风压斩"
         };
         $ob["瞬空"] = {
            "cd":8,
            "w":70,
            "s":"W",
            "key":Keyboard.I,
            "g":"灵压解放.瞬闪"
         };
         $ob["双剑"] = {
            "cd":6,
            "mp":0,
            "w":50,
            "s":"S",
            "key":Keyboard.I,
            "g":"灵压.剑气震荡【黑】"
         };
         $ob["虚化二段击"] = {
            "cd":6,
            "mp":0,
            "w":250,
            "s":"",
            "key":Keyboard.U,
            "g":"虚化二刃刀"
         };
         $ob["双月牙"] = {
            "cd":6,
            "w":220,
            "s":"",
            "key":Keyboard.I,
            "g":"黑月牙.双斩"
         };
         $ob["超月牙天冲"] = {
            "cd":36,
            "mp":300,
            "w":350,
            "s":"",
            "key":Keyboard.O,
            "g":"超【黑】月牙天冲]"
         };
         $ob["月牙天冲二段"] = {
            "cd":6,
            "w":150,
            "h":100,
            "s":"",
            "k":true,
            "key":Keyboard.U,
            "g":"黑月牙.空.双向落斩"
         };
         $ob["双空月牙"] = {
            "cd":6,
            "w":150,
            "h":100,
            "s":"",
            "k":true,
            "key":Keyboard.I,
            "g":"黑月牙.空.双前落斩"
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
                     case "S":
                        return "二刀流";
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
                        return "瞬闪";
                     case "S":
                        return "杀闪";
                     case "SS":
                        return "虚斩二段击";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        return "瞬空";
                     case "S":
                        return "双剑";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "W":
                     case "S":
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
               return "虚化二段击";
            case Keyboard.I:
               return "双月牙";
            case Keyboard.O:
               return "超月牙天冲";
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
               return "月牙天冲二段";
            case Keyboard.I:
               return "双空月牙";
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
         switch(param1.$frameString)
         {
            case "超月牙天冲":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":3,
                     "ka":[3,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/G",
                     "type":"SkillYiHu",
                     "fuck":10,
                     "time":60,
                     "role":param1,
                     "x":param1.$bit.x - 25 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.6
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":4,
                     "ka":[3,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Y",
                     "type":"SkillYiHu",
                     "fuck":10,
                     "time":60,
                     "role":param1,
                     "x":param1.$bit.x + 65 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":4,
                     "ka":[3,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Y",
                     "type":"SkillYiHu",
                     "fuck":10,
                     "time":60,
                     "role":param1,
                     "x":param1.$bit.x + 85 * param1.$scaleX,
                     "y":param1.$bit.y - 40,
                     "scaleX":param1.$scaleX * 1.2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":4,
                     "ka":[3,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Y",
                     "type":"SkillYiHu",
                     "fuck":10,
                     "time":60,
                     "role":param1,
                     "x":param1.$bit.x + 85 * param1.$scaleX,
                     "y":param1.$bit.y - 80,
                     "scaleX":param1.$scaleX * 1.2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":4,
                     "ka":[3,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Y",
                     "type":"SkillYiHu",
                     "fuck":10,
                     "time":60,
                     "role":param1,
                     "x":param1.$bit.x + 65 * param1.$scaleX,
                     "y":param1.$bit.y - 120,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               break;
            case "瞬空":
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,0],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"XN/Z",
                     "type":"SkillYiHu",
                     "fuck":99,
                     "time":3,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$y + 10,
                     "scaleX":param1.$scaleX * 0.9
                  });
               }
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"XN/Z",
                     "type":"SkillYiHu",
                     "fuck":99,
                     "time":3,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$y + 50,
                     "scaleX":param1.$scaleX * 0.9
                  });
               }
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.2;
                  param1.$y -= 100;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"XN/Z",
                     "type":"SkillYiHu",
                     "fuck":99,
                     "time":3,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$y + 90,
                     "scaleX":param1.$scaleX * 0.9
                  });
               }
               break;
            case "瞬闪":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"HF/J",
                     "type":"SkillYiHu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
                  param1.$x += 150 * param1.$scaleX;
                  param1.$y -= 65;
               }
               break;
            case "双空月牙":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "goy":5,
                     "ka":[3,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Y4",
                     "type":"SkillYiHu",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "goy":5,
                     "ka":[3,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Y4",
                     "type":"SkillYiHu",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "二刀流":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,2,4);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,7,6);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,10,12,5);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,16,17,3);
               if(param1.$frameInt == 16 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "ka":[2,10],
                     "name":"YH/G",
                     "type":"SkillYiHu",
                     "fuck":3,
                     "time":10,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               else if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Y3",
                     "type":"SkillYiHu",
                     "fuck":99,
                     "time":3,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               else if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Y3",
                     "type":"SkillYiHu",
                     "fuck":99,
                     "time":3,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * 0.6
                  });
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":1,
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Y4",
                     "type":"SkillYiHu",
                     "fuck":99,
                     "time":0,
                     "fps":1,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               else if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":1,
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Y4",
                     "type":"SkillYiHu",
                     "fuck":99,
                     "time":0,
                     "fps":1,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               else if(param1.$frameInt == 11 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"XN/C1",
                     "type":"SkillYiHu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 12 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":1,
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Z1",
                     "type":"SkillYiHu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "虚斩二段击":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "ka":[3,10],
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Z1",
                     "type":"SkillYiHu",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * -1.2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "ka":[3,10],
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Z1",
                     "type":"SkillYiHu",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               break;
            case "双月牙":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "ka":[3,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Y",
                     "type":"SkillYiHu",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 25 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "ka":[3,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Y",
                     "type":"SkillYiHu",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "月牙天冲二段":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "goy":5,
                     "ka":[3,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Y4",
                     "type":"SkillYiHu",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * -1.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "goy":5,
                     "ka":[3,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"YH/Y4",
                     "type":"SkillYiHu",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "双剑":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "ka":[2,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"XN/C",
                     "type":"SkillYiHu",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * -0.6
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "ka":[2,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"XN/C",
                     "type":"SkillYiHu",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.6
                  });
               }
               break;
            case "杀闪":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"XN/T",
                     "type":"SkillYiHu",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 33 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * -1.2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"XN/K",
                     "type":"SkillYiHu",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 33 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               break;
            case "虚化二段击":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"XN/R",
                     "type":"SkillYiHu",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 33 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               break;
            case "空中攻击":
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,24);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,11,4);
               if(param1.$frameInt == 11 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":$hei,
                     "blendMode":BlendMode.NORMAL,
                     "name":"XN/T",
                     "type":"SkillYiHu",
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
            case "木涟":
         }
      }
   }
}

