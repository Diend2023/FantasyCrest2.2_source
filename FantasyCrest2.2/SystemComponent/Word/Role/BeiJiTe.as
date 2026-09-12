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
   
   public class BeiJiTe
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function BeiJiTe()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/beijite.png","photo","BeiJiTe");
         SystemLoading.addTask("File/indexFile/img/role/beijite.xml","text","BeiJiTe");
         SystemLoadType.loadRoleSkillData("GDJ/Z");
         SystemLoadType.loadRoleSkillData("PJ/PO");
         SystemLoadType.loadRoleSkillData("WJT/C");
         SystemLoadType.loadRoleSkillData("BaoFa");
         SystemLoadType.loadRoleSkillData("GDJ/C");
         SystemLoadType.loadRoleSkillData("XXYan2");
         SystemLoadType.loadRoleSkillData("XGuang");
         SystemLoadType.loadRoleSkillData("GJS/T");
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
         $ob["飞腿"] = {
            "cd":5,
            "w":70,
            "h":200,
            "s":"W",
            "key":Keyboard.U,
            "g":"连环腿"
         };
         $ob["爆气"] = {
            "cd":5,
            "w":200,
            "s":"S",
            "key":Keyboard.U
         };
         $ob["爆尘"] = {
            "cd":6,
            "w":250,
            "s":"S",
            "key":Keyboard.I,
            "g":"巨浪滔天"
         };
         $ob["必杀·悟吉塔必杀·陆"] = {
            "cd":35,
            "mp":300,
            "w":350,
            "s":"SS",
            "key":Keyboard.O,
            "g":"终极闪光龟派气功.陆"
         };
         $ob["甩拳"] = {
            "cd":5,
            "w":220,
            "s":"",
            "key":Keyboard.U,
            "g":"升拳"
         };
         $ob["碎"] = {
            "cd":6,
            "w":350,
            "s":"",
            "key":Keyboard.I,
            "g":"音速拳.碎"
         };
         $ob["龟派气功"] = {
            "cd":35,
            "mp":300,
            "w":550,
            "s":"",
            "key":Keyboard.O,
            "g":"100倍大爆炸龟派气功波"
         };
         $ob["必杀·悟吉塔气功"] = {
            "cd":35,
            "mp":200,
            "k":true,
            "w":150,
            "s":"SS",
            "key":Keyboard.O,
            "g":"终极闪光龟派气功.空"
         };
         $ob["瞬步"] = {
            "cd":1,
            "w":1000,
            "s":"",
            "key":Keyboard.L
         };
         $ob["空腿"] = {
            "cd":5,
            "w":100,
            "h":100,
            "s":"",
            "k":true,
            "key":Keyboard.U,
            "g":"无影连环"
         };
         $ob["空旋"] = {
            "cd":8,
            "w":100,
            "h":100,
            "s":"",
            "k":true,
            "key":Keyboard.I
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
                        return "none";
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
                        return "飞腿";
                     case "S":
                        return "爆气";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        return "none";
                     case "S":
                        return "爆尘";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "SS":
                        return "必杀·悟吉塔必杀·陆";
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
               return "甩拳";
            case Keyboard.I:
               return "碎";
            case Keyboard.O:
               return "龟派气功";
            case Keyboard.P:
               return "更换模式";
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
                  return "瞬步";
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                  }
                  break;
               case Keyboard.I:
                  break;
               case Keyboard.O:
               case "SS":
                  return "必杀·悟吉塔气功";
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
               return "空腿";
            case Keyboard.I:
               return "空旋";
            case Keyboard.O:
               break;
            case Keyboard.P:
         }
         return "none";
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         var _loc2_:SystemGameRole = null;
         if(!param1.$jumpBoolean && param1.$ob.mode != "K")
         {
            param1.$y += param1.Speed;
         }
         else if(param1.$ob.mode == "K")
         {
            if(param1.$jumpForFuckBoolean)
            {
               param1.$mode = "D";
            }
            else
            {
               param1.$mode = "K";
            }
         }
         if(param1.$frameInt == 0)
         {
            param1.$ob.see = null;
         }
         switch(param1.$frameString)
         {
            case "更换模式":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$mode = param1.$mode == "D" ? "K" : "D";
                  param1.$ob.mode = param1.$mode;
               }
               break;
            case "空旋":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"HM/Y",
                     "type":"SkillWuJiTa",
                     "fuck":6,
                     "time":20,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.8
                  });
               }
               break;
            case "甩拳":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,5);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"GJS/T",
                     "type":"SkillWuJiTa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 33 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "空腿":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,9,5);
               break;
            case "连环腿":
               param1.$jumpBoolean = param1.$frameInt > 1;
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,9,4);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,1,9,8);
               break;
            case "飞腿":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,11,8);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,3,11,11);
               break;
            case "必杀·悟吉塔必杀·陆":
               if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,5],
                     "name":"XGuang",
                     "type":"SkillWuJiTa",
                     "fuck":6,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x - 70 * param1.$scaleX,
                     "y":param1.$bit.y + 70,
                     "scaleX":param1.$scaleX * 2.7
                  });
               }
               break;
            case "必杀·悟吉塔气功":
               if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,5],
                     "name":"XXYan2",
                     "type":"SkillWuJiTa",
                     "fuck":6,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x + 170 * param1.$scaleX,
                     "y":param1.$bit.y + 170,
                     "scaleX":param1.$scaleX * 2.7
                  });
               }
               break;
            case "碎":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,10,param1.$speed * 4);
               if(param1.$frameInt == 0)
               {
                  param1.stoic = 1;
               }
               if(param1.hitGameRole)
               {
                  param1.to(11);
               }
               if(param1.$frameInt == 11 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"GDJ/C",
                     "type":"SkillWuJiTa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "爆气":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  param1.$mp += param1.$mpMax * 0.05;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"BaoFa",
                     "type":"SkillWuJiTa",
                     "fuck":8,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.25
                  });
               }
               break;
            case "爆尘":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"WJT/C",
                     "type":"SkillWuJiTa",
                     "fuck":8,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 50 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.25
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"WJT/C",
                     "type":"SkillWuJiTa",
                     "fuck":8,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 50 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * -1.25
                  });
               }
               break;
            case "龟派气功":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"PJ/PO",
                     "type":"SkillWuJiTa",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 70 * param1.$scaleX,
                     "y":param1.$bit.y + 65,
                     "scaleX":param1.$scaleX * 3.5
                  });
               }
               break;
            case "空中攻击":
               break;
            case "瞬步":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,20);
               _loc2_ = param1.hitRoleAndSkill(300,true)[0] as SystemGameRole;
               if(Boolean(_loc2_) && Math.abs(_loc2_.$y - param1.$y) > 35)
               {
                  if(param1.$scaleX < 0 && param1.$x > _loc2_.$x || param1.$scaleX > 0 && param1.$x < _loc2_.$x)
                  {
                     param1.$y += FrameMath.mathFrameToX(param1.$frameInt,0,9,12 * (_loc2_.$y > param1.$y ? 1 : -1));
                  }
               }
               param1.alpha = 0.9;
               if(param1.hitGameRole)
               {
                  param1.stopSkill();
                  param1.stoic = 0.2;
               }
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,7,8,14);
               if(param1.$frameInt == 15 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"GDJ/Z",
                     "type":"SkillWuJiTa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 20 * param1.$scaleX,
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
            case "空中攻击":
               param2.stopSkill();
               GameData.$KaTime = 10;
         }
      }
   }
}

