package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class JinFa
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function JinFa()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/jinfa.png","photo","JinFa");
         SystemLoading.addTask("File/indexFile/img/role/jinfa.xml","text","JinFa");
         SystemLoadType.loadRoleSkillData("YueGuang");
         SystemLoadType.loadRoleSkillData("PJ/D");
         SystemLoadType.loadRoleSkillData("GJS/T");
         SystemLoadType.loadRoleSkillData("ZZ/Q");
         SystemLoadType.loadRoleSkillData("PJ/G");
         SystemLoadType.loadRoleSkillData("YH/D");
         SystemLoadType.loadRoleSkillData("ZZ/D");
         SystemLoadType.loadRoleSkillData("ZZ/L");
         SystemLoadType.loadRoleSkillData("LingDian");
         SystemLoadType.loadRoleSkillData("ZZ/Y");
         SystemLoadType.loadRoleSkillData("ZZ/B");
         SystemLoadType.loadRoleSkillData("ZZ/HD");
         $mxx = $mxx.concat([0,0,0.1,0.1,0]);
         $mxx = $mxx.concat([0,0.5,0,0,0]);
         $mxx = $mxx.concat([0,1,0,0.7,0]);
         $mxx = $mxx.concat([0.2,0.2,0.2,1,0]);
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         RoleMathType.setSpeed(param1,7);
      }
      
      public static function init() : void
      {
         $ob["雷挑"] = {
            "cd":5,
            "w":70,
            "h":200,
            "s":"W",
            "key":Keyboard.U
         };
         $ob["千鸟流"] = {
            "cd":5,
            "w":200,
            "s":"S",
            "key":Keyboard.U
         };
         $ob["集雷"] = {
            "cd":6,
            "w":250,
            "s":"S",
            "key":Keyboard.I
         };
         $ob["连环腿"] = {
            "cd":4,
            "w":70,
            "s":"W",
            "key":Keyboard.I
         };
         $ob["破雷"] = {
            "cd":8,
            "mp":20,
            "w":50,
            "s":"W",
            "key":Keyboard.J
         };
         $ob["火遁"] = {
            "cd":35,
            "mp":300,
            "w":350,
            "s":"S",
            "key":Keyboard.O
         };
         $ob["雷刃"] = {
            "cd":5,
            "w":120,
            "s":"",
            "key":Keyboard.U
         };
         $ob["雷剑"] = {
            "cd":6,
            "w":50,
            "s":"",
            "key":Keyboard.I
         };
         $ob["千鸟"] = {
            "cd":35,
            "mp":300,
            "w":550,
            "s":"",
            "key":Keyboard.O
         };
         $ob["雷引"] = {
            "cd":35,
            "mp":200,
            "w":150,
            "s":"W",
            "key":Keyboard.O
         };
         $ob["瞬步"] = {
            "cd":1,
            "w":1000,
            "s":"",
            "key":Keyboard.L
         };
         $ob["雷搓"] = {
            "cd":5,
            "w":100,
            "h":500,
            "s":"",
            "k":true,
            "key":Keyboard.U
         };
         $ob["写轮眼"] = {
            "cd":50,
            "w":9999,
            "h":500,
            "s":"",
            "key":Keyboard.P
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
                        return "破雷";
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
                        return "雷挑";
                     case "S":
                        return "千鸟流";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        return "连环腿";
                     case "S":
                        return "集雷";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "W":
                        return "雷引";
                     case "S":
                        return "火遁";
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
               return "雷刃";
            case Keyboard.I:
               return "雷剑";
            case Keyboard.O:
               return "千鸟";
            case Keyboard.P:
               return "写轮眼";
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
               return "雷搓";
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
         switch(param1.$frameString)
         {
            case "写轮眼":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"ZZ/B",
                     "type":"SkillJinFa",
                     "fuck":0,
                     "time":300,
                     "role":param1,
                     "x":param1.$bit.x + 33 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               break;
            case "雷引":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"PJ/G",
                     "type":"SkillJinFa",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 33 * param1.$scaleX,
                     "y":param1.$bit.y - 13,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"ZZ/Y",
                     "type":"SkillJinFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "火遁":
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"ZZ/HD",
                     "type":"SkillJinFa",
                     "fuck":3,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x - 18 * param1.$scaleX,
                     "y":param1.$bit.y + 50,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "集雷":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LingDian",
                     "type":"SkillJinFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "连环腿":
               param1.$jumpBoolean = param1.$frameInt > 1;
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,9,4);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,1,9,8);
               break;
            case "破雷":
               param1.$jumpBoolean = param1.$frameInt >= 7;
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,4,4);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,7,8,4);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,7,8,8);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,9,14,2);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,18,19,15);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,18,19,9);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,28,30,8);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,28,30,4);
               if(param1.$frameInt == 14 && param1.$skillFrameInt !== param1.$frameInt)
               {
               }
               break;
            case "雷剑":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,4);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,6,4);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,4);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,9,11,-4);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,13,14,4);
               if(param1.$frameInt == 14 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"ZZ/L",
                     "type":"SkillJinFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 45 * param1.$scaleX,
                     "y":param1.$bit.y - 35,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "千鸟":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,10,param1.$speed * 4);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"ZZ/L",
                     "type":"SkillJinFa",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.8
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"ZZ/Q",
                     "type":"SkillJinFa",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":param1.$speed * 4,
                     "ka":[5,10],
                     "name":"ZZ/D",
                     "type":"SkillJinFa",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 35 * param1.$scaleX,
                     "y":param1.$bit.y - 10,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 11 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"PJ/G",
                     "type":"SkillJinFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 35 * param1.$scaleX,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "雷搓":
               if(param1.$frameInt >= 2 && param1.$frameInt < 4 && param1.$jumpBoolean)
               {
                  param1.to(2);
               }
               else if(param1.$frameInt >= 2 && param1.$frameInt < 4)
               {
                  param1.to(4);
                  param1.mapDZ();
               }
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,2,3,param1.$speed * 3);
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"YH/D",
                     "type":"SkillJinFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               break;
            case "千鸟流":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"PJ/G",
                     "type":"SkillJinFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"ZZ/Q",
                     "type":"SkillJinFa",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "雷挑":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,4,param1.$speed * 4);
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"GJS/T",
                     "type":"SkillJinFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 50 * param1.$scaleX,
                     "y":param1.$bit.y - 25,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               break;
            case "雷刃":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,7,8,param1.$speed * 4);
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"PJ/D",
                     "type":"SkillJinFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 70 * param1.$scaleX,
                     "y":param1.$bit.y - 25,
                     "scaleX":param1.$scaleX * 1
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
               if(param1.$frameInt == 15 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"YueGuang",
                     "type":"SkillJinFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y + 15,
                     "scaleX":param1.$scaleX * 0.7
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

