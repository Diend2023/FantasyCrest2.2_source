package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class QuanYeCha
   {
      
      public static var $mxx:Array = new Array();
      
      public static var $ob:Object = new Object();
      
      public function QuanYeCha()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/quanyecha.png","photo","QuanYeCha");
         SystemLoading.addTask("File/indexFile/img/role/quanyecha.xml","text","QuanYeCha");
         SystemLoading.addTask("File/indexFile/img/skill/YueGuang.png","photo","YueGuang");
         SystemLoading.addTask("File/indexFile/img/skill/YueGuang.xml","text","YueGuang");
         SystemLoading.addTask("File/indexFile/img/skill/LongShan.png","photo","LongShan");
         SystemLoading.addTask("File/indexFile/img/skill/LongShan.xml","text","LongShan");
         SystemLoading.addTask("File/indexFile/img/skill/LongShanQiang.png","photo","LongShanQiang");
         SystemLoading.addTask("File/indexFile/img/skill/LongShanQiang.xml","text","LongShanQiang");
         SystemLoading.addTask("File/indexFile/img/skill/LongZhanYi.png","photo","LongZhanYi");
         SystemLoading.addTask("File/indexFile/img/skill/LongZhanYi.xml","text","LongZhanYi");
         SystemLoadType.loadRoleSkillData("XN/C2");
         SystemLoadType.loadRoleSkillData("XN/S");
         SystemLoadType.loadRoleSkillData("YH/Y2");
         SystemLoadType.loadRoleSkillData("LD/D1");
         SystemLoadType.loadRoleSkillData("YH/M");
         SystemLoadType.loadRoleSkillData("YH/Y4");
         SystemLoadType.loadRoleSkillData("TianJie");
         SystemLoadType.loadRoleSkillData("JL/F");
         SystemLoadType.loadRoleSkillData("HuaJi");
         SystemLoadType.loadRoleSkillData("DSL/S");
         SystemLoadType.loadRoleSkillData("QYC/F");
         SystemLoadType.loadRoleSkillData("BaoFa2");
         SystemLoadType.loadRoleSkillData("BoYin");
         SystemLoadType.loadRoleSkillData("BaDao");
         SystemLoadType.loadRoleSkillData("Zhan");
         SystemLoadType.loadRoleSkillData("JX/J");
         SystemLoadType.loadRoleSkillData("JX/D");
         SystemLoadType.loadRoleSkillData("B/F");
         SystemLoadType.loadRoleSkillData("YH/Y");
         SystemLoadType.loadRoleSkillData("JiuLongShan");
         SystemLoadType.loadRoleSkillData("HF/N");
         SystemLoadType.loadRoleSkillData("HF/Z");
         SystemLoadType.loadRoleSkillData("HM/Y");
         SystemLoadType.loadRoleSkillData("AS/H");
         SystemLoadType.loadRoleSkillData("XN/K");
         SystemLoadType.loadRoleSkillData("XN/BG");
         $mxx = $mxx.concat([1,2,3,1,15]);
         $mxx = $mxx.concat([1,1,1,0.5,0]);
         $mxx = $mxx.concat([1,2,1.2,0.5,0]);
         $mxx = $mxx.concat([0.8,0.6,0.4,0.2,0.1]);
      }
      
      public static function init() : void
      {
         $ob["爪牙"] = {
            "cd":8,
            "w":50,
            "s":"W",
            "key":Keyboard.U,
            "g":"散魂铁爪"
         };
         $ob["刃牙"] = {
            "cd":4,
            "w":50,
            "s":"S",
            "key":Keyboard.U,
            "g":"飞刃血爪"
         };
         $ob["挑牙"] = {
            "cd":8,
            "mp":0,
            "w":100,
            "H":100,
            "s":"W",
            "key":Keyboard.I,
            "g":"残月"
         };
         $ob["破牙"] = {
            "cd":6,
            "w":500,
            "s":"S",
            "key":Keyboard.I,
            "g":"龙鳞铁碎牙.残月"
         };
         $ob["爆流破"] = {
            "cd":35,
            "mp":200,
            "w":300,
            "s":"S",
            "key":Keyboard.O,
            "g":"金刚爆流破"
         };
         $ob["爆发"] = {
            "cd":6,
            "w":200,
            "s":"",
            "key":Keyboard.U,
            "g":"妖气爆发"
         };
         $ob["风牙"] = {
            "cd":6,
            "w":100,
            "s":"",
            "key":Keyboard.I,
            "g":"风之伤"
         };
         $ob["风之刃"] = {
            "cd":40,
            "w":500,
            "mp":350,
            "s":"",
            "key":Keyboard.O,
            "g":"冥道残月破.斩刃冥道"
         };
         $ob["金刚抢破"] = {
            "cd":5,
            "w":50,
            "k":true,
            "s":"",
            "key":Keyboard.U,
            "g":"金刚枪破"
         };
         $ob["金刚抢破杀"] = {
            "cd":30,
            "mp":250,
            "w":400,
            "h":400,
            "k":true,
            "s":"",
            "key":Keyboard.O,
            "g":"真.金刚枪破.极"
         };
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc4_:int = 0;
         loop0:
         // while(true)
         for(; _loc4_ <= 1; _loc3_ = _loc3_.charAt(1),_loc4_++) //
         {
            // if(_loc4_ <= 1)
            // {
               switch(param2)
               {
                  case Keyboard.J:
                     continue;
                  case Keyboard.K:
                     // break loop0;
                     return "none"; //
                  case Keyboard.L:
                     var _loc5_:String = _loc3_;
                     switch(0)
                     {
                     }
                     // break;
                     break loop0; //
                  case Keyboard.U:
                     switch(_loc3_)
                     {
                        case "W":
                           return "爪牙";
                        case "S":
                           return "刃牙";
                        default:
                           continue;
                     }
                     break;
                  case Keyboard.I:
                     switch(_loc3_)
                     {
                        case "W":
                           return "挑牙";
                        case "S":
                           return "破牙";
                        default:
                           continue;
                     }
                     break;
                  case Keyboard.O:
                     switch(_loc3_)
                     {
                        case "S":
                           return "爆流破";
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
            switch(param2)
            {
               case Keyboard.J:
                  return "普通攻击";
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  return "瞬步";
               case Keyboard.U:
                  return "爆发";
               case Keyboard.I:
                  return "风牙";
               case Keyboard.O:
                  return "风之刃";
               case Keyboard.P:
                  return "none";
               default:
                  return "none";
            // }
            // _loc3_ = _loc3_.charAt(1);
            // _loc4_++;
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
                  break;
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  break;
               case Keyboard.U:
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
               return "金刚抢破";
            case Keyboard.I:
               return "none";
            case Keyboard.O:
               return "金刚抢破杀";
            case Keyboard.P:
               return "none";
            default:
               return "none";
         }
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
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
            case "爆流破":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":4,
                     "ka":[4,5],
                     "name":"QYC/F",
                     "type":"SkillJianXin",
                     "fuck":6,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "金刚抢破杀":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  _loc2_ = 0;
                  while(_loc2_ < 5)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":14,
                        "goy":9,
                        "ka":[1,3],
                        "name":"DSL/S",
                        "type":"SkillJianXin",
                        "fuck":30,
                        "time":30,
                        "role":param1,
                        "x":param1.$bit.x + Math.random() * 200 - 100,
                        "y":param1.$bit.y + Math.random() * 200 - 100,
                        "scaleX":param1.$scaleX * 0.4 + Math.random() * param1.$scaleX
                     });
                     _loc2_++;
                  }
               }
               break;
            case "金刚抢破":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  _loc2_ = 0;
                  while(_loc2_ < 5)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":14,
                        "goy":9,
                        "ka":[1,3],
                        "name":"DSL/S",
                        "type":"SkillJianXin",
                        "fuck":30,
                        "time":30,
                        "role":param1,
                        "x":param1.$bit.x + Math.random() * 100 - 50,
                        "y":param1.$bit.y + Math.random() * 100 - 50,
                        "scaleX":param1.$scaleX * 0.4
                     });
                     _loc2_++;
                  }
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
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"YueGuang",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "气场":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"JL/F",
                     "type":"SkillJianXin",
                     "fuck":6,
                     "time":15,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "爆发":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.3;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"TianJie",
                     "type":"SkillJianXin",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 45,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "风牙":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,5],
                     "gox":10,
                     "name":"HuaJi",
                     "type":"SkillJianXin",
                     "fuck":6,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "刃牙":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"LD/D1",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "风之刃":
               if(param1.$skillFrameInt !== param1.$frameInt)
               {
                  _loc3_ = param1.$skillFrameInt - int(param1.$skillFrameInt / 6) * 6;
                  switch(_loc3_)
                  {
                     case 0:
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "color":$mxx,
                           "gox":5,
                           "goy":0,
                           "name":"YH/Y",
                           "type":"SkillJianXin",
                           "fuck":99,
                           "time":30,
                           "role":param1,
                           "x":param1.$bit.x,
                           "y":param1.$bit.y,
                           "scaleX":param1.$scaleX * 2
                        });
                        break;
                     case 1:
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "color":$mxx,
                           "gox":5,
                           "goy":-5,
                           "name":"YH/Y2",
                           "type":"SkillJianXin",
                           "fuck":99,
                           "time":30,
                           "role":param1,
                           "x":param1.$bit.x,
                           "y":param1.$bit.y,
                           "scaleX":param1.$scaleX * 2
                        });
                        break;
                     case 2:
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "color":$mxx,
                           "gox":5,
                           "goy":5,
                           "name":"YH/Y4",
                           "type":"SkillJianXin",
                           "fuck":99,
                           "time":30,
                           "role":param1,
                           "x":param1.$bit.x,
                           "y":param1.$bit.y,
                           "scaleX":param1.$scaleX * 2
                        });
                        break;
                     case 3:
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "color":$mxx,
                           "gox":5,
                           "goy":0,
                           "name":"YH/Y",
                           "type":"SkillJianXin",
                           "fuck":99,
                           "time":30,
                           "role":param1,
                           "x":param1.$bit.x,
                           "y":param1.$bit.y,
                           "scaleX":param1.$scaleX * -2
                        });
                        break;
                     case 4:
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "color":$mxx,
                           "gox":5,
                           "goy":-5,
                           "name":"YH/Y2",
                           "type":"SkillJianXin",
                           "fuck":99,
                           "time":30,
                           "role":param1,
                           "x":param1.$bit.x,
                           "y":param1.$bit.y,
                           "scaleX":param1.$scaleX * -2
                        });
                        break;
                     case 5:
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "color":$mxx,
                           "gox":5,
                           "goy":5,
                           "name":"YH/Y4",
                           "type":"SkillJianXin",
                           "fuck":99,
                           "time":30,
                           "role":param1,
                           "x":param1.$bit.x,
                           "y":param1.$bit.y,
                           "scaleX":param1.$scaleX * -2
                        });
                  }
               }
               break;
            case "挑牙":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "gox":10,
                     "goy":0,
                     "ka":[3,5],
                     "name":"YH/Y",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "gox":10,
                     "goy":-10,
                     "ka":[3,5],
                     "name":"YH/Y2",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "gox":10,
                     "goy":10,
                     "ka":[3,5],
                     "name":"YH/Y4",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "破牙":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.3;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "gox":10,
                     "goy":0,
                     "ka":[3,5],
                     "name":"YH/Y",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"XN/S",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "爪牙":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,4,10);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,2,4,16);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.3;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[4,10],
                     "name":"XN/C2",
                     "type":"SkillJianXin",
                     "fuck":6,
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
                     "color":$mxx,
                     "name":"YueGuang",
                     "type":"SkillJianXin",
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
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "龍鳴閃":
               ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                  "color":$mxx,
                  "name":"BoYin",
                  "type":"SkillJianXin",
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

