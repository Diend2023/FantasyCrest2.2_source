package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class JianShi
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function JianShi()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/jianshi.png","photo","JianShi");
         SystemLoading.addTask("File/indexFile/img/role/jianshi.xml","text","JianShi");
         SystemLoading.addTask("File/indexFile/img/skill/YueGuang.png","photo","YueGuang");
         SystemLoading.addTask("File/indexFile/img/skill/YueGuang.xml","text","YueGuang");
         SystemLoading.addTask("File/indexFile/img/skill/LongShan.png","photo","LongShan");
         SystemLoading.addTask("File/indexFile/img/skill/LongShan.xml","text","LongShan");
         SystemLoading.addTask("File/indexFile/img/skill/LongShanQiang.png","photo","LongShanQiang");
         SystemLoading.addTask("File/indexFile/img/skill/LongShanQiang.xml","text","LongShanQiang");
         SystemLoading.addTask("File/indexFile/img/skill/LongZhanYi.png","photo","LongZhanYi");
         SystemLoading.addTask("File/indexFile/img/skill/LongZhanYi.xml","text","LongZhanYi");
         SystemLoadType.loadRoleSkillData("GDJ/Z");
         SystemLoadType.loadRoleSkillData("LongZhanYi");
         SystemLoadType.loadRoleSkillData("GDJ/B");
         SystemLoadType.loadRoleSkillData("XuanJi");
         SystemLoadType.loadRoleSkillData("YH/Y");
         SystemLoadType.loadRoleSkillData("DSL/B");
         SystemLoadType.loadRoleSkillData("HF/O");
         SystemLoadType.loadRoleSkillData("HF/S");
         SystemLoadType.loadRoleSkillData("BJR/J");
         SystemLoadType.loadRoleSkillData("XN/C1");
         SystemLoadType.loadRoleSkillData("YiDaoZhan");
         SystemLoadType.loadRoleSkillData("XN/C");
         SystemLoadType.loadRoleSkillData("XN/T");
         SystemLoadType.loadRoleSkillData("BaDao");
         SystemLoadType.loadRoleSkillData("Zhan");
         SystemLoadType.loadRoleSkillData("JX/J");
         SystemLoadType.loadRoleSkillData("JX/D");
         SystemLoadType.loadRoleSkillData("B/F");
         SystemLoadType.loadRoleSkillData("YH/Y");
         SystemLoadType.loadRoleSkillData("JiuLongShan");
         $mxx = $mxx.concat([0.3,0,0,0,0]);
         $mxx = $mxx.concat([0.5,0.3,0,0,0]);
         $mxx = $mxx.concat([1,0.6,0.5,0.3,0.2]);
         $mxx = $mxx.concat([0.8,0.6,0.5,0.3,0.2]);
      }
      
      public static function init() : void
      {
         $ob["空拔"] = {
            "cd":6,
            "w":50,
            "h":150,
            "k":true,
            "s":"S",
            "key":Keyboard.U,
            "g":"空华旋斩"
         };
         $ob["魔法之力"] = {
            "cd":25,
            "w":250,
            "mp":150,
            "s":"",
            "key":Keyboard.O,
            "g":"冰翼月鸣"
         };
         $ob["甩拔"] = {
            "cd":4,
            "w":120,
            "s":"",
            "key":Keyboard.I,
            "g":"冰华冴切"
         };
         $ob["剑拔"] = {
            "cd":4,
            "w":120,
            "s":"",
            "key":Keyboard.U,
            "g":"居合.鲤口之切法"
         };
         $ob["冰牙刃剑"] = {
            "cd":35,
            "w":500,
            "mp":300,
            "s":"WW",
            "key":Keyboard.O,
            "g":"虚空刃·雪风"
         };
         $ob["奥义光辉"] = {
            "cd":35,
            "mp":250,
            "w":500,
            "s":"SS",
            "key":Keyboard.O,
            "g":"冻冴冰刃剑"
         };
         $ob["地烂"] = {
            "cd":4,
            "w":200,
            "s":"S",
            "key":Keyboard.I,
            "g":"雪华鏖"
         };
         $ob["上挑"] = {
            "cd":4,
            "w":200,
            "s":"W",
            "key":Keyboard.I,
            "g":"居合.澈月牙"
         };
         $ob["前回拔"] = {
            "cd":4,
            "w":200,
            "s":"AA",
            "key":Keyboard.I,
            "g":"居合.横一文字"
         };
         $ob["地拔"] = {
            "cd":6,
            "w":150,
            "s":"S",
            "key":Keyboard.U,
            "g":"雅风.冰花剑语"
         };
         $ob["速刃"] = {
            "cd":6,
            "w":300,
            "s":"W",
            "key":Keyboard.U,
            "g":"居合.冰风"
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
                     // continue;
                     break; //
                  case Keyboard.U:
                     switch(_loc3_)
                     {
                        case "W":
                           return "速刃";
                        case "S":
                           return "地拔";
                        case "SS":
                     }
                     // continue;
                     break; //
                  case Keyboard.I:
                     switch(_loc3_)
                     {
                        case "DD":
                        case "AA":
                           return "前回拔";
                        case "W":
                           return "上挑";
                        case "S":
                           return "地烂";
                        // default:
                        //    continue;
                     }
                     break;
                  case Keyboard.O:
                     switch(_loc3_)
                     {
                        case "SS":
                           return "奥义光辉";
                        case "WW":
                           return "冰牙刃剑";
                        // default:
                        //    continue;
                     }
                     break;
                  case Keyboard.P:
                     return "none";
                  // default:
                  //    continue;
               }
            }
            // addr0298:
            switch(param2)
            {
               case Keyboard.J:
                  return "普通攻击";
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  return "瞬步";
               case Keyboard.U:
                  return "剑拔";
               case Keyboard.I:
                  return "甩拔";
               case Keyboard.O:
                  return "魔法之力";
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
         // §§goto(addr0298);
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
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
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "S":
                        return "空拔";
                     default:
                        break loop2;
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
            param1.$ob.di = null;
         }
         switch(param1.$frameString)
         {
            case "甩拔":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,5],
                     "name":"GDJ/Z",
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
            case "剑拔":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,5],
                     "name":"XN/C1",
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
            case "上挑":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,3],
                     "name":"XN/T",
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
            case "前回拔":
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$x += 200 * param1.$scaleX;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"XN/C",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "gox":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.9
                  });
               }
               break;
            case "奥义光辉":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"BJR/J",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.7
                  });
               }
               else if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"XN/C1",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 35 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 2.3
                  });
               }
               else if(param1.$frameInt == 12 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"XN/C1",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 35 * param1.$scaleX,
                     "y":param1.$bit.y - 35,
                     "scaleX":param1.$scaleX * 2.3
                  });
               }
               else if(param1.$frameInt == 16 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"XN/C1",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 35 * param1.$scaleX,
                     "y":param1.$bit.y + 35,
                     "scaleX":param1.$scaleX * 2.3
                  });
               }
               else if(param1.$frameInt == 22 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"YiDaoZhan",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 35 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "速刃":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"HF/O",
                     "type":"SkillJianShi",
                     "fuck":6,
                     "gox":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"HF/S",
                     "type":"SkillJianShi",
                     "fuck":6,
                     "gox":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "冰牙刃剑":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "name":"YH/Y",
                     "type":"SkillJianShi",
                     "fuck":6,
                     "gox":6,
                     "time":36,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 2.3
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"DSL/B",
                     "type":"SkillJianShi",
                     "fuck":12,
                     "gox":6,
                     "time":36,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 2.3
                  });
               }
               break;
            case "魔法之力":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"GDJ/B",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y - 70,
                     "scaleX":param1.$scaleX * 1.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"GDJ/B",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y - 70,
                     "scaleX":param1.$scaleX * -1.5
                  });
               }
               break;
            case "地烂":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,9,param1.$speed * 2);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[4,10],
                     "name":"LongShanQiang",
                     "type":"SkillJianShi",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "地拔":
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"GDJ/Z",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LongZhanYi",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "空拔":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[4,10],
                     "name":"XuanJi",
                     "type":"SkillJianShi",
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
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,3,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,8,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,10,14,2);
               if(param1.$frameInt == 12 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,3],
                     "name":"YueGuang",
                     "type":"SkillJianShi",
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
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"YueGuang",
                     "type":"SkillJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y + 35,
                     "scaleX":param1.$scaleX * 1
                  });
               }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "龍鳴閃":
               ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                  "name":"BoYin",
                  "type":"SkillJianShi",
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

