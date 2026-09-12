package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.GameData;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class HeiMao
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function HeiMao()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/heimao.png","photo","HeiMao");
         SystemLoading.addTask("File/indexFile/img/role/heimao.xml","text","HeiMao");
         SystemLoadType.loadRoleSkillData("DaJi1");
         SystemLoadType.loadRoleSkillData("BJR/S");
         SystemLoadType.loadRoleSkillData("MR/LuoXuanWan");
         SystemLoadType.loadRoleSkillData("DB/D");
         SystemLoadType.loadRoleSkillData("LongZhanYi");
         SystemLoadType.loadRoleSkillData("HM/L");
         SystemLoadType.loadRoleSkillData("ZZ/D");
         SystemLoadType.loadRoleSkillData("ZZ/L");
         SystemLoadType.loadRoleSkillData("LingDian");
         SystemLoadType.loadRoleSkillData("AS/HQ");
         SystemLoadType.loadRoleSkillData("AS/Boom");
         SystemLoadType.loadRoleSkillData("ZZ/Y");
         SystemLoadType.loadRoleSkillData("ZZ/B");
         SystemLoadType.loadRoleSkillData("HM/Y");
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
         $ob["空炮[陆]"] = {
            "cd":5,
            "w":170,
            "h":200,
            "s":"W",
            "key":Keyboard.U,
            "g":"奥利哈康.空弹[陆]"
         };
         $ob["瞬拳"] = {
            "cd":3,
            "w":240,
            "s":"AA",
            "key":Keyboard.U
         };
         $ob["甩枪"] = {
            "cd":5,
            "w":200,
            "s":"S",
            "key":Keyboard.U
         };
         $ob["卷飞"] = {
            "cd":8,
            "w":250,
            "s":"W",
            "key":Keyboard.I,
            "g":"廉牙"
         };
         $ob["廉牙"] = {
            "cd":7,
            "w":270,
            "s":"S",
            "key":Keyboard.I,
            "g":"黑十字"
         };
         $ob["破雷"] = {
            "cd":8,
            "mp":200,
            "w":50,
            "s":"W",
            "key":Keyboard.J
         };
         $ob["猫卷蛋"] = {
            "cd":35,
            "mp":200,
            "w":350,
            "h":350,
            "s":"W",
            "key":Keyboard.O,
            "g":"黑毛之爪"
         };
         $ob["超雷枪"] = {
            "cd":35,
            "mp":300,
            "w":550,
            "h":350,
            "s":"SS",
            "key":Keyboard.O,
            "g":"炸裂电磁枪"
         };
         $ob["三连枪"] = {
            "cd":8,
            "w":350,
            "s":"",
            "key":Keyboard.U,
            "g":"哈迪斯连发"
         };
         $ob["一枪必杀"] = {
            "cd":8,
            "w":350,
            "s":"",
            "key":Keyboard.I,
            "g":"转身瞬发枪"
         };
         $ob["雷枪"] = {
            "cd":30,
            "mp":200,
            "w":550,
            "s":"",
            "key":Keyboard.O,
            "g":"电磁枪"
         };
         $ob["空弹"] = {
            "cd":4,
            "w":200,
            "h":200,
            "s":"",
            "k":true,
            "key":Keyboard.U,
            "g":"奥利哈康.空弹"
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
                        return "空炮[陆]";
                     case "AA":
                     case "DD":
                        return "瞬拳";
                     case "S":
                        return "甩枪";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        return "卷飞";
                     case "S":
                        return "廉牙";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "W":
                        return "猫卷蛋";
                     case "SS":
                        return "超雷枪";
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
               return "三连枪";
            case Keyboard.I:
               return "一枪必杀";
            case Keyboard.O:
               return "雷枪";
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
               return "空弹";
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
            case "猫卷蛋":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,10,8);
               param1.$jumpBoolean = param1.$frameInt >= 2;
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,2,10,-13);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "name":"HM/Y",
                     "type":"SkillHeiMao",
                     "fuck":3,
                     "time":25,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "卷飞":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,10,8);
               param1.$jumpBoolean = param1.$frameInt >= 8;
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,8,10,-13);
               break;
            case "超雷枪":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,11,16,-4);
               param1.$jumpBoolean = param1.$frameInt >= 11;
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,11,16,-4);
               if(param1.$frameInt == 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "name":"HM/L",
                     "type":"SkillHeiMao",
                     "fuck":3,
                     "time":5,
                     "role":param1,
                     "x":param1.$bit.x + 23 * param1.$scaleX,
                     "y":param1.$bit.y + 30,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "空炮[陆]":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "gox":8,
                     "goy":-8,
                     "name":"MR/LuoXuanWan",
                     "type":"SkillHeiMao",
                     "fuck":99,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x + 23 * param1.$scaleX,
                     "y":param1.$bit.y - 40,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "廉牙":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,8,8);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,9,10,4);
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,5],
                     "gox":8,
                     "name":"LongZhanYi",
                     "type":"SkillHeiMao",
                     "fuck":3,
                     "time":5,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               break;
            case "雷枪":
               if(param1.$frameInt == 14 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,5],
                     "name":"DB/D",
                     "type":"SkillHeiMao",
                     "fuck":3,
                     "time":5,
                     "role":param1,
                     "x":param1.$bit.x + -113 * param1.$scaleX,
                     "y":param1.$bit.y + 50,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "瞬拳":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,3,24);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,6,4);
               if(Boolean(param1.hitGameRole) && param1.$frameInt < 4)
               {
                  param1.$frameInt = 4;
               }
               break;
            case "空弹":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "gox":8,
                     "goy":8,
                     "name":"MR/LuoXuanWan",
                     "type":"SkillHeiMao",
                     "fuck":99,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x + 23 * param1.$scaleX,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "三连枪":
               if((param1.$frameInt == 2 || param1.$frameInt == 6 || param1.$frameInt == 11) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "gox":-16,
                     "name":"DaJi1",
                     "type":"SkillHeiMao",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 43 * param1.$scaleX,
                     "y":param1.$bit.y - 38,
                     "scaleX":param1.$scaleX * -1
                  });
               }
               break;
            case "甩枪":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "gox":4,
                     "name":"BJR/S",
                     "type":"SkillHeiMao",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 43 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               break;
            case "一枪必杀":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "gox":-18,
                     "name":"DaJi1",
                     "type":"SkillHeiMao",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 43 * param1.$scaleX,
                     "y":param1.$bit.y - 35,
                     "scaleX":param1.$scaleX * -1
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
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,4,6);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,9,6);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,15,20,-4);
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "瞬拳":
               GameData.$KaTime = 10;
               break;
            case "空中攻击":
               param1.$jumpMath = -15;
         }
      }
   }
}

