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
   
   public class Lang
   {
      
      public static var $ob:Object = new Object();
      
      public function Lang()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/lang.png","photo","Lang");
         SystemLoading.addTask("File/indexFile/img/role/lang.xml","text","Lang");
         SystemLoadType.loadRoleSkillData("LD/D1");
         SystemLoadType.loadRoleSkillData("LD/C");
         SystemLoadType.loadRoleSkillData("LD/B");
         SystemLoadType.loadRoleSkillData("LD/BO");
         SystemLoadType.loadRoleSkillData("LD/T");
         SystemLoadType.loadRoleSkillData("LD/F");
         SystemLoadType.loadRoleSkillData("LD/D2");
         SystemLoadType.loadRoleSkillData("LD/L");
      }
      
      public static function init() : void
      {
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
                        return "薙刀．裂";
                     case "S":
                        return "兜割";
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
                     case "W":
                        return "震皇";
                     case "S":
                        return "薙刀．地響";
                     case "WW":
                        return "薙刀．斷";
                     case "AA":
                     case "DD":
                        return "薙刀．獅子";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "DD":
                     case "AA":
                        return "双龙闪";
                     case "SS":
                        return "劍氣";
                     case "S":
                        return "拔刀術";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "S":
                        return "天翔龍閃";
                     default:
                        break loop2;
                  }
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
               return "普通攻击";
            case Keyboard.K:
               return "none";
            case Keyboard.L:
               return "瞬步";
            case Keyboard.U:
               return "震貫";
            case Keyboard.I:
               return "龍卷閃．旋";
            case Keyboard.O:
               return "九龙头闪";
            case Keyboard.P:
               return "none";
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
               return "激震";
            case Keyboard.I:
               return "none";
            case Keyboard.O:
               return "none";
            case Keyboard.P:
               return "none";
            default:
               return "none";
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
            case "激震":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "ka":[1,10],
                     "name":"LD/L",
                     "type":"SkillLang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "薙刀．獅子":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,5,param1.$speed * 4);
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LD/D2",
                     "type":"SkillLang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "薙刀．斷":
               param1.$jumpBoolean = true;
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,5,param1.$speed);
               param1.$y += -FrameMath.mathFrameToX(param1.$frameInt,0,3,param1.$speed * 3);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,3,6,param1.$speed * 3);
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LD/F",
                     "type":"SkillLang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "down":true,
                     "ka":[1,10],
                     "name":"LD/BO",
                     "type":"SkillLang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 70 * param1.$scaleX,
                     "y":param1.$bit.y + 20,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "震貫":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LD/T",
                     "type":"SkillLang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "震皇":
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LD/BO",
                     "type":"SkillLang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 110,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "薙刀．地響":
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "down":true,
                     "ka":[1,10],
                     "name":"LD/BO",
                     "type":"SkillLang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "兜割":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,6,param1.$speed * 4);
               if(param1.$ob.see is SystemGameRole)
               {
                  param1.$ob.see.$x = param1.$x;
                  param1.$ob.see.$y = param1.$y - 5;
                  param1.$ob.see.stopSkill();
                  param1.$ob.see.rigid = 30;
                  param1.$ob.see.$jumpForFuckBoolean = true;
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  if(param1.$frameInt < 7)
                  {
                     param1.$frameInt = 7;
                  }
               }
               else
               {
                  param1.$ob.see = param1.hitGameRole;
               }
               if(param1.$frameInt == 13 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LD/B",
                     "type":"SkillLang",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "薙刀．裂":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "goy":-5,
                     "ka":[3,10],
                     "name":"LD/C",
                     "type":"SkillLang",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
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
                     "type":"SkillLang",
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
            case "龍鳴閃":
               ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                  "name":"BoYin",
                  "type":"SkillLang",
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

