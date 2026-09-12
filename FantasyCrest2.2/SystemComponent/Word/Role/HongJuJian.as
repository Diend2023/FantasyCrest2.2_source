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
   
   public class HongJuJian
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function HongJuJian()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/hongjujian.png","photo","HongJuJian");
         SystemLoading.addTask("File/indexFile/img/role/hongjujian.xml","text","HongJuJian");
         SystemLoading.addTask("File/indexFile/img/skill/YueGuang.png","photo","YueGuang");
         SystemLoading.addTask("File/indexFile/img/skill/YueGuang.xml","text","YueGuang");
         SystemLoading.addTask("File/indexFile/img/skill/LongShan.png","photo","LongShan");
         SystemLoading.addTask("File/indexFile/img/skill/LongShan.xml","text","LongShan");
         SystemLoading.addTask("File/indexFile/img/skill/LongShanQiang.png","photo","LongShanQiang");
         SystemLoading.addTask("File/indexFile/img/skill/LongShanQiang.xml","text","LongShanQiang");
         SystemLoading.addTask("File/indexFile/img/skill/LongZhanYi.png","photo","LongZhanYi");
         SystemLoading.addTask("File/indexFile/img/skill/LongZhanYi.xml","text","LongZhanYi");
         SystemLoadType.loadRoleSkillData("HF/V");
         SystemLoadType.loadRoleSkillData("HF/B");
         SystemLoadType.loadRoleSkillData("BJR/S");
         SystemLoadType.loadRoleSkillData("GDJ/C");
         SystemLoadType.loadRoleSkillData("XN/Z");
         SystemLoadType.loadRoleSkillData("XN/Y");
         SystemLoadType.loadRoleSkillData("YH/S");
         SystemLoadType.loadRoleSkillData("YH/D");
         SystemLoadType.loadRoleSkillData("YH/B");
         SystemLoadType.loadRoleSkillData("XN/C1");
         SystemLoadType.loadRoleSkillData("YiDaoZhan");
         SystemLoadType.loadRoleSkillData("XN/C");
         SystemLoadType.loadRoleSkillData("XN/T");
         SystemLoadType.loadRoleSkillData("YH/G");
         SystemLoadType.loadRoleSkillData("HF/D");
         SystemLoadType.loadRoleSkillData("HF/Z");
         SystemLoadType.loadRoleSkillData("NMF/Z");
         SystemLoadType.loadRoleSkillData("B/F");
         SystemLoadType.loadRoleSkillData("YH/Y");
         SystemLoadType.loadRoleSkillData("JiuLongShan");
         $mxx = $mxx.concat([0.8,0,0,0,0]);
         $mxx = $mxx.concat([0.5,0.3,0,0,0]);
         $mxx = $mxx.concat([1,0.6,0.5,0.3,0.2]);
         $mxx = $mxx.concat([0.8,0.6,0.5,0.3,0.2]);
      }
      
      public static function init() : void
      {
         $ob["空刃"] = {
            "cd":6,
            "w":250,
            "h":150,
            "k":true,
            "s":"",
            "key":Keyboard.U,
            "g":"断魂锋刀"
         };
         $ob["苍之拳"] = {
            "cd":25,
            "w":250,
            "mp":150,
            "s":"",
            "key":Keyboard.O,
            "g":"死神之拳"
         };
         $ob["腿击"] = {
            "cd":6,
            "w":120,
            "s":"",
            "key":Keyboard.I,
            "g":"踵部叩踢"
         };
         $ob["崩击"] = {
            "cd":6,
            "w":120,
            "s":"",
            "key":Keyboard.U,
            "g":"撕裂炼狱"
         };
         $ob["苍之炎"] = {
            "cd":35,
            "w":500,
            "mp":300,
            "s":"WW",
            "key":Keyboard.O,
            "g":"鲜血判裁"
         };
         $ob["苍之爆"] = {
            "cd":35,
            "mp":250,
            "w":500,
            "s":"SW",
            "key":Keyboard.O,
            "g":"死神降临"
         };
         $ob["剑气斩"] = {
            "cd":8,
            "w":200,
            "s":"S",
            "key":Keyboard.I,
            "g":"恶魔刀气"
         };
         $ob["上挑"] = {
            "cd":6,
            "w":200,
            "s":"W",
            "key":Keyboard.I,
            "g":"死神之镰"
         };
         $ob["巨剑·斩"] = {
            "cd":6,
            "w":200,
            "s":"AA",
            "key":Keyboard.I,
            "g":"地狱毒牙"
         };
         $ob["重击"] = {
            "cd":6,
            "w":150,
            "s":"S",
            "key":Keyboard.U,
            "g":"无情践踏"
         };
         $ob["驹击"] = {
            "cd":6,
            "w":300,
            "s":"W",
            "key":Keyboard.U,
            "g":"上升膝撞"
         };
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc4_:int = 0;
         loop0:
         // while(true)
         // {
            // if(_loc4_ <= 1)
            for(; _loc4_ <= 1; _loc3_ = _loc3_.charAt(1),_loc4_++) //
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
                        case "W":
                           return "驹击";
                        case "S":
                           return "重击";
                        default:
                           continue;
                     }
                     break;
                  case Keyboard.I:
                     switch(_loc3_)
                     {
                        case "DD":
                        case "AA":
                           return "巨剑·斩";
                        case "W":
                           return "上挑";
                        case "S":
                           return "剑气斩";
                        default:
                           continue;
                     }
                     break;
                  case Keyboard.O:
                     switch(_loc3_)
                     {
                        case "WW":
                           return "苍之炎";
                        case "SW":
                           return "苍之爆";
                        default:
                           continue;
                     }
                     break;
                  case Keyboard.P:
                     return "none";
                  default:
                     continue;
               }
            }
            // addr0281:
            switch(param2)
            {
               case Keyboard.J:
                  return "普通攻击";
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  return "瞬步";
               case Keyboard.U:
                  return "崩击";
               case Keyboard.I:
                  return "腿击";
               case Keyboard.O:
                  return "苍之拳";
               case Keyboard.P:
                  return "none";
               default:
                  return "none";
            }
         //    _loc3_ = _loc3_.charAt(1);
         //    _loc4_++;
         // }
         // var _loc5_:String = _loc3_;
         // switch(0)
         // {
         // }
         // §§goto(addr0281);
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
                     case "S":
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
               return "空刃";
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
            param1.$ob.di = null;
         }
         switch(param1.$frameString)
         {
            case "腿击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,4,param1.$speed);
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,15],
                     "gox":-2,
                     "name":"NMF/Z",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 85 * param1.$scaleX,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * -0.8
                  });
               }
               break;
            case "崩击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,param1.$speed);
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,5],
                     "gox":8,
                     "name":"HF/D",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 75 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,5],
                     "gox":0,
                     "name":"HF/Z",
                     "type":"SkillJianShi",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 45 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "剑气斩":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,2,param1.$speed);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[3,5],
                     "gox":8,
                     "name":"YH/G",
                     "type":"SkillJianShi",
                     "fuck":6,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x + 15 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.8
                  });
               }
               break;
            case "苍之爆":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,15],
                     "name":"YH/B",
                     "type":"SkillJianShi",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 2.8
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,15],
                     "name":"YH/D",
                     "type":"SkillJianShi",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 2.8
                  });
               }
               break;
            case "苍之炎":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,5,param1.$speed);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.5;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,15],
                     "name":"XN/Y",
                     "type":"SkillJianShi",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 15 * param1.$scaleX,
                     "y":param1.$bit.y + 15,
                     "scaleX":param1.$scaleX * -1
                  });
               }
               else if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,15],
                     "name":"YH/S",
                     "type":"SkillJianShi",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 15 * param1.$scaleX,
                     "y":param1.$bit.y - 75,
                     "scaleX":param1.$scaleX * 2.8
                  });
               }
               break;
            case "空刃":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,15],
                     "name":"XN/Z",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + -15 * param1.$scaleX,
                     "y":param1.$bit.y + 15,
                     "scaleX":param1.$scaleX * 1.8
                  });
               }
               break;
            case "苍之拳":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,5,param1.$speed);
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.3;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,15],
                     "name":"GDJ/C",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + -15 * param1.$scaleX,
                     "y":param1.$bit.y + 15,
                     "scaleX":param1.$scaleX * 1.8
                  });
               }
               break;
            case "驹击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,6,10);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,2,6,-12);
               break;
            case "巨剑·斩":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,4,param1.$speed);
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,5],
                     "name":"BJR/S",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "time":0,
                     "gox":6,
                     "role":param1,
                     "x":param1.$bit.x + 25 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "重击":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,5],
                     "name":"HF/B",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "down":true,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 35 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               break;
            case "上挑":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,5],
                     "name":"HF/V",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "gox":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,param1.$speed * 4);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,3,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,8,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,10,14,2);
               if(param1.$frameInt == 12 && param1.$skillFrameInt !== param1.$frameInt)
               {
               }
               break;
            case "空中攻击":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
               }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         if(param2.gethp > 0 && GameData.$mode != "1PSB")
         {
            if(param1.gethp > param1.$hpMax)
            {
               param1.$hpMax = param1.gethp + param2.gethp / 100;
            }
            param1.sethp(param1.gethp + param2.gethp / 100);
         }
         switch(param1.$frameString)
         {
            case "空中攻击":
            case "普通攻击":
               GameData.$KaTime = 5;
         }
      }
   }
}

