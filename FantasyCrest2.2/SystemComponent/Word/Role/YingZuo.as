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
   
   public class YingZuo
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function YingZuo()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/YingZuo.png","photo","YingZuo");
         SystemLoading.addTask("File/indexFile/img/role/YingZuo.xml","text","YingZuo");
         SystemLoadType.loadRoleSkillData("YueGuang");
         SystemLoadType.loadRoleSkillData("ShangZhan");
         SystemLoadType.loadRoleSkillData("LingDian");
         SystemLoadType.loadRoleSkillData("GJS/T");
         SystemLoadType.loadRoleSkillData("ZZ/Q");
         SystemLoadType.loadRoleSkillData("PJ/G");
         SystemLoadType.loadRoleSkillData("YH/D");
         SystemLoadType.loadRoleSkillData("ZZ/D");
         SystemLoadType.loadRoleSkillData("ZZ/L");
         SystemLoadType.loadRoleSkillData("ZZ/Y");
         SystemLoadType.loadRoleSkillData("ZZ/B");
         SystemLoadType.loadRoleSkillData("ZZ/HD");
         SystemLoadType.loadRoleSkillData("BJR/F");
         SystemLoadType.loadRoleSkillData("BJR/J");
         SystemLoadType.loadRoleSkillData("LongShan");
         SystemLoadType.loadRoleSkillData("JiuLongShan");
         SystemLoadType.loadRoleSkillData("GJS/C");
         SystemLoadType.loadRoleSkillData("JL/B");
         $mxx = $mxx.concat([0,0,0.1,0.1,0]);
         $mxx = $mxx.concat([0,0.5,0,0,0]);
         $mxx = $mxx.concat([0,1,0,0.7,0]);
         $mxx = $mxx.concat([0.2,0.2,0.2,1,0]);
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
      }
      
      public static function init() : void
      {
         $ob["瞬斩"] = {
            "cd":7,
            "w":200,
            "s":"S",
            "key":Keyboard.I,
            "g":"天手力.瞬斩"
         };
         $ob["雷拔"] = {
            "cd":9,
            "w":250,
            "s":"S",
            "key":Keyboard.U,
            "g":"镜天地转"
         };
         $ob["乱斩"] = {
            "cd":7,
            "w":120,
            "s":"",
            "key":Keyboard.U,
            "g":"加具土命.多重斩"
         };
         $ob["挥雷"] = {
            "cd":7,
            "w":250,
            "s":"",
            "key":Keyboard.I,
            "g":"炎遁.加具土命剑"
         };
         $ob["千鸟"] = {
            "cd":36,
            "mp":300,
            "w":550,
            "s":"",
            "key":Keyboard.O,
            "g":"阴阳遁.千鸟"
         };
         $ob["须佐·杀"] = {
            "cd":999,
            "mp":600,
            "w":150,
            "s":"SS",
            "key":Keyboard.O,
            "g":"轮回眼幻术.须佐抓取.杀"
         };
         $ob["瞬步"] = {
            "cd":1,
            "w":1000,
            "s":"",
            "key":Keyboard.L
         };
         $ob["后闪"] = {
            "cd":3,
            "w":1000,
            "s":"S",
            "key":Keyboard.L
         };
         $ob["普通攻击·千鸟"] = {
            "cd":9,
            "w":50,
            "s":"",
            "key":Keyboard.J,
            "g":"普通攻击-加具土命.千鸟",
            "n":"通过上下方向键和J组合触发不同的连击"
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
                     case "S":
                        return "后闪";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                        return "雷挑";
                     case "S":
                        return "雷拔";
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
                        return "瞬斩";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "SS":
                        return "须佐·杀";
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
               return "乱斩";
            case Keyboard.I:
               return "挥雷";
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
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:SystemGameRole = null;
         var _loc5_:Object = null;
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
            case "空中攻击":
               break;
            case "后闪":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,-24);
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,24);
               break;
            case "乱斩":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,3],
                     "name":"LongShan",
                     "blendMode":BlendMode.SUBTRACT,
                     "type":"SkillYingZuo",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "挥雷":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.2;
                  param1.$x += 120 * param1.$scaleX;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"GJS/C",
                     "blendMode":BlendMode.SUBTRACT,
                     "type":"SkillYingZuo",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 25 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"JiuLongShan",
                     "blendMode":BlendMode.SUBTRACT,
                     "type":"SkillYingZuo",
                     "fuck":6,
                     "fps":1,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 125 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "须佐·杀":
               _loc2_ = param1.$x + 100 * param1.$scaleX;
               _loc3_ = param1.hitRoleAndSkill(210,true);
               if(_loc3_)
               {
                  for(_loc5_ in _loc3_)
                  {
                     _loc4_ = _loc3_[_loc5_] as SystemGameRole;
                     if(_loc4_.$god <= 0 && _loc4_.$stoic <= 0 && _loc4_.$frameString != "起身")
                     {
                        _loc4_.$x += (_loc2_ - _loc4_.$x) * 0.5;
                        _loc4_.$y += (param1.$y - _loc4_.$y) * 0.5;
                        _loc4_.hitString = "受伤";
                        _loc4_.to(0);
                     }
                  }
               }
               if((param1.$frameInt == 21 || param1.$frameInt == 25 || param1.$frameInt == 29 || param1.$frameInt == 32) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[2,10],
                     "name":"JL/B",
                     "blendMode":BlendMode.SUBTRACT,
                     "type":"SkillYingZuo",
                     "fuck":6,
                     "time":Math.random() * 5,
                     "role":param1,
                     "x":param1.$x + 100 * param1.$scaleX + Math.random() * 100 - 50,
                     "y":param1.$y + Math.random() * 100 - 100,
                     "scaleX":param1.$scaleX * 2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[2,10],
                     "name":"JL/B",
                     "blendMode":BlendMode.SUBTRACT,
                     "type":"SkillYingZuo",
                     "fuck":0,
                     "time":Math.random() * 5,
                     "role":param1,
                     "x":param1.$x + 100 * param1.$scaleX + Math.random() * 100 - 50,
                     "y":param1.$y + Math.random() * 100 - 100,
                     "scaleX":param1.$scaleX * 2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[2,10],
                     "name":"JL/B",
                     "blendMode":BlendMode.SUBTRACT,
                     "type":"SkillYingZuo",
                     "fuck":6,
                     "time":Math.random() * 5,
                     "role":param1,
                     "x":param1.$x + 100 * param1.$scaleX + Math.random() * 100 - 50,
                     "y":param1.$y + Math.random() * 100 - 100,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "雷拔":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "blendMode":BlendMode.SUBTRACT,
                     "name":"BJR/J",
                     "type":"SkillYingZuo",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 25 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "千鸟":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,9,20);
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":param1.$speed * 4,
                     "ka":[5,10],
                     "blendMode":BlendMode.SUBTRACT,
                     "name":"ZZ/D",
                     "type":"SkillYingZuo",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 35 * param1.$scaleX,
                     "y":param1.$bit.y - 10,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"ZZ/L",
                     "blendMode":BlendMode.SUBTRACT,
                     "type":"SkillYingZuo",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.8
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"ZZ/Q",
                     "blendMode":BlendMode.SUBTRACT,
                     "type":"SkillYingZuo",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "blendMode":BlendMode.SUBTRACT,
                     "name":"PJ/G",
                     "type":"SkillZuoZhu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 35 * param1.$scaleX,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "瞬斩":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,9,2);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  _loc4_ = param1.hitRoleAndSkill(100,true)[0];
                  if(_loc4_)
                  {
                     param1.$x = _loc4_.$x;
                  }
                  else
                  {
                     param1.$x += 100 * param1.$scaleX;
                  }
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"BJR/F",
                     "blendMode":BlendMode.SUBTRACT,
                     "type":"SkillYingZuo",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "普通攻击·雷落":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,5,4);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,1,5,12);
               if(!param1.$jumpBoolean && param1.$frameInt < 5)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "blendMode":BlendMode.SUBTRACT,
                     "name":"PJ/G",
                     "type":"SkillYingZuo",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.6
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "blendMode":BlendMode.SUBTRACT,
                     "name":"ZZ/Q",
                     "type":"SkillYingZuo",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
                  param1.to(13);
               }
               else if(param1.$frameInt == 5)
               {
                  param1.stopSkill();
               }
               break;
            case "普通攻击·雷挑":
               param1.$jumpBoolean = param1.$frameInt > 1;
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,9,4);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,1,9,12);
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "blendMode":BlendMode.SUBTRACT,
                     "name":"ShangZhan",
                     "type":"SkillYingZuo",
                     "fuck":6,
                     "time":15,
                     "role":param1,
                     "x":param1.$bit.x + 25 * param1.scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               if(param1.$frameInt == 6 && param1.$down)
               {
                  param1.stopSkill();
                  param1.to(0);
                  param1.hitString = "普通攻击·雷落";
               }
               break;
            case "普通攻击·千鸟":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "blendMode":BlendMode.SUBTRACT,
                     "name":"LingDian",
                     "type":"SkillYingZuo",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 35,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               if(param1.$frameInt == 8 && param1.$up)
               {
                  param1.stopSkill();
                  param1.to(0);
                  param1.hitString = "普通攻击·雷挑";
               }
               else if(param1.$frameInt == 6 && param1.$down)
               {
                  param1.stopSkill();
                  param1.to(0);
                  param1.hitString = "普通攻击·雷落";
               }
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,11,4);
               if(param1.$frameInt == 15 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "blendMode":BlendMode.SUBTRACT,
                     "name":"YueGuang",
                     "type":"SkillYingZuo",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y + 15,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               _loc4_ = param1.hitRoleAndSkill(200,true)[0] as SystemGameRole;
               if((param1.$frameInt == 13 || param1.$frameInt == 8) && int(param1.$skillCD["普通攻击·千鸟"]) == 0 && param1.$up && Boolean(_loc4_))
               {
                  param1.stopSkill();
                  param1.$x = _loc4_.$x;
                  param1.$y = _loc4_.$y + 15;
                  param1.to(0);
                  param1.hitString = "普通攻击·千鸟";
               }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "普通攻击·雷落":
               param2.$x = param1.$x;
               param2.$y = param1.$y;
         }
      }
   }
}

