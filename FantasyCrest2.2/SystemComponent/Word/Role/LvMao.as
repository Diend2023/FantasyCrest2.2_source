package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.SystemMucisPlay;
   import SystemComponent.Word.Freak.Freak_BingSprite;
   import SystemComponent.Word.Freak.Freak_GuangSprite;
   import SystemComponent.Word.Freak.Freak_WangSprite;
   import SystemComponent.Word.Freak.Freak_YanSprite;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class LvMao
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function LvMao()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/lvmao.png","photo","LvMao");
         SystemLoading.addTask("File/indexFile/img/role/lvmao.xml","text","LvMao");
         SystemLoadType.loadRoleSkillData("XN/K");
         SystemLoadType.loadRoleSkillData("XN/T");
         SystemLoadType.loadRoleSkillData("YH/G");
         SystemLoadType.loadRoleSkillData("SD/F");
         SystemLoadType.loadRoleSkillData("Buff1");
         SystemLoadType.loadRoleSkillData("XN/Z");
         SystemLoadType.loadRoleSkillData("JiuTouLong");
         SystemLoadType.loadRoleSkillData("YH/H");
         SystemLoadType.loadRoleSkillData("Y/Q");
         SystemLoadType.loadRoleSkillData("YH/F");
         SystemLoadType.loadRoleSkillData("GDJ/Z");
         SystemLoadType.loadRoleSkillData("AS/huo");
         SystemLoadType.loadRoleSkillData("AS/HQ");
         SystemLoadType.loadRoleSkillData("JL/A");
         SystemLoadType.loadRoleSkillData("GJS/Z");
         SystemLoadType.loadRoleSkillData("AS/HQ");
         SystemLoadType.loadRoleSkillData("AS/HQ");
         SystemLoadType.loadRoleSkillData("YH/M");
         SystemLoadType.loadRoleSkillData("SB/P");
         SystemLoadType.loadRoleSkillData("XD/Bao");
         SystemLoadType.loadRoleSkillData("HF/V");
         SystemLoadType.loadRoleSkillData("LD/Boom");
         SystemLoadType.loadRoleSkillData("BaDao");
         SystemLoadType.loadRoleSkillData("XN/T");
         SystemLoadType.loadRoleSkillData("HF/D");
         SystemLoadType.loadRoleSkillData("S/D");
         SystemLoadType.loadRoleSkillData("TianJie");
         Freak_BingSprite.loadData();
         Freak_GuangSprite.loadData();
         Freak_YanSprite.loadData();
         Freak_WangSprite.loadData();
         $mxx = $mxx.concat([0,0,1.2,1.55,0]);
         $mxx = $mxx.concat([0,0.5,0,0,0]);
         $mxx = $mxx.concat([0,0,0,0,0]);
         $mxx = $mxx.concat([0.2,0.2,0.2,1,0]);
      }
      
      private static function sound(param1:int) : void
      {
         SystemMucisPlay.setMusic = "tongren_" + param1;
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
      }
      
      public static function init() : void
      {
         $ob["上挑"] = {
            "cd":4,
            "w":200,
            "s":"W",
            "key":Keyboard.U
         };
         $ob["跳跃斩"] = {
            "cd":4,
            "w":200,
            "s":"S",
            "key":Keyboard.U
         };
         $ob["光之刃"] = {
            "cd":7,
            "w":100,
            "s":"",
            "key":Keyboard.U
         };
         $ob["大气斩"] = {
            "cd":7,
            "w":100,
            "s":"",
            "key":Keyboard.I
         };
         $ob["稀箭"] = {
            "cd":35,
            "mp":200,
            "w":100,
            "s":"",
            "key":Keyboard.O
         };
         $ob["精灵剑"] = {
            "cd":99,
            "mp":200,
            "w":1000,
            "s":"",
            "key":Keyboard.P
         };
         $ob["必杀斩"] = {
            "cd":35,
            "mp":150,
            "w":250,
            "s":"W",
            "key":Keyboard.O
         };
         $ob["劍擊"] = {
            "cd":5,
            "w":50,
            "k":true,
            "s":"",
            "key":Keyboard.U
         };
         $ob["跳跃斩·地"] = {
            "cd":6,
            "w":100,
            "s":"S",
            "key":Keyboard.I
         };
         $ob["精灵剑·神召"] = {
            "cd":0,
            "mp":400,
            "w":1000,
            "s":"SS",
            "key":Keyboard.O
         };
         $ob["冲刺"] = {
            "cd":8,
            "w":1000,
            "s":"w",
            "key":Keyboard.I
         };
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         if(R4399Main.vip == 0)
         {
         }
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
                           return "上挑";
                        case "S":
                           return "跳跃斩";
                        default:
                           continue;
                     }
                     break;
                  case Keyboard.I:
                     switch(_loc3_)
                     {
                        case "W":
                           return "冲刺";
                        case "S":
                           return "跳跃斩·地";
                        default:
                           continue;
                     }
                     break;
                  case Keyboard.O:
                     switch(_loc3_)
                     {
                        case "SS":
                           return "精灵剑·神召";
                        case "W":
                           return "必杀斩";
                        default:
                           continue;
                     }
                     break;
                  case Keyboard.P:
                     switch(_loc3_)
                     {
                        case "S":
                           return "none";
                     }
               }
               // continue;
            }
            // addr0299:
            switch(param2)
            {
               case Keyboard.J:
                  return "普通攻击";
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  return "瞬步";
               case Keyboard.U:
                  return "光之刃";
               case Keyboard.I:
                  return "大气斩";
               case Keyboard.O:
                  return "稀箭";
               case Keyboard.P:
                  return "精灵剑";
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
         // §§goto(addr0299);
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc4_:int = 0;
         for(; _loc4_ <= 1; _loc3_ = _loc3_.charAt(1),_loc4_++)
         {
            if(param1.$ob.shuangdao)
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
                  case Keyboard.L:
                     break;
                  case Keyboard.U:
                     switch(_loc3_)
                     {
                        case "S":
                           return "空斩";
                     }
                     break;
                  case Keyboard.I:
                     switch(_loc3_)
                     {
                        case "S":
                           return "none";
                     }
                     break;
                  case Keyboard.O:
                     switch(_loc3_)
                     {
                        case "S":
                           return "空落";
                     }
                     break;
                  case Keyboard.P:
                     return "none";
               }
               continue;
            }
            switch(param2)
            {
               case Keyboard.J:
                  switch(_loc3_)
                  {
                     case "W":
                     case "S":
                  }
                  break;
               case Keyboard.L:
                  if(_loc3_ == "S")
                  {
                     return "空后翻";
                  }
                  return "none";
                  break;
               case Keyboard.L:
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                  }
                  break;
               case Keyboard.I:
                  return "突刺·空";
               case Keyboard.O:
                  break;
               case Keyboard.P:
                  return "none";
            }
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
         var _loc2_:int = 0;
         var _loc3_:String = null;
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
            case "大气斩":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"YH/F",
                     "type":"SkillYiHu",
                     "fuck":6,
                     "gox":2,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "稀箭":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,11,14,-6);
               if(param1.$frameInt == 11 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[0,10],
                     "name":"Y/Q",
                     "type":"SkillYiHu",
                     "fuck":6,
                     "gox":15,
                     "time":36,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 25,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "必杀斩":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"YH/H",
                     "type":"SkillYiHu",
                     "fuck":6,
                     "time":0,
                     "goy":-8,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "跳跃斩":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,4,6);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,1,4,12);
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"XN/K",
                     "type":"SkillTongRen",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y - 35,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "精灵剑·神召":
               if(param1.$frameInt == 20 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.askElements("role",{
                     "hp":300,
                     "point":new Point(param1.$x,param1.$y),
                     "name":"Freak" + param1.name + int(Math.random() * 99999999),
                     "troops":param1.$troops,
                     "target":"Freak_BingSprite",
                     "id":-1
                  });
                  ComponentResourcesManage.$word.askElements("role",{
                     "hp":300,
                     "point":new Point(param1.$x,param1.$y),
                     "name":"Freak" + param1.name + int(Math.random() * 99999999),
                     "troops":param1.$troops,
                     "target":"Freak_GuangSprite",
                     "id":-1
                  });
                  ComponentResourcesManage.$word.askElements("role",{
                     "hp":300,
                     "point":new Point(param1.$x,param1.$y),
                     "name":"Freak" + param1.name + int(Math.random() * 99999999),
                     "troops":param1.$troops,
                     "target":"Freak_YanSprite",
                     "id":-1
                  });
                  ComponentResourcesManage.$word.askElements("role",{
                     "hp":600,
                     "point":new Point(param1.$x,param1.$y),
                     "name":"Freak" + param1.name + int(Math.random() * 99999999),
                     "troops":param1.$troops,
                     "target":"Freak_WangSprite",
                     "id":-1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"Buff1",
                     "type":"SkillTongRen",
                     "fuck":99,
                     "time":0,
                     "goy":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 4
                  });
               }
               break;
            case "精灵剑":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  _loc2_ = Math.random() * 4;
                  _loc3_ = "";
                  switch(_loc2_)
                  {
                     case 0:
                        _loc3_ = "Freak_BingSprite";
                        break;
                     case 1:
                        _loc3_ = "Freak_GuangSprite";
                        break;
                     case 2:
                        _loc3_ = "Freak_YanSprite";
                        break;
                     case 3:
                        _loc3_ = "Freak_WangSprite";
                  }
                  ComponentResourcesManage.$word.askElements("role",{
                     "hp":(_loc3_ != "Freak_WangSprite" ? 300 : 600),
                     "point":new Point(param1.$x,param1.$y),
                     "name":"Freak" + param1.name + _loc3_ + int(Math.random() * 99999999),
                     "troops":param1.$troops,
                     "target":_loc3_,
                     "id":-1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"Buff1",
                     "type":"SkillTongRen",
                     "fuck":0,
                     "time":0,
                     "goy":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 4
                  });
               }
               break;
            case "冲刺":
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,2,8,11);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"SD/F",
                     "type":"SkillTongRen",
                     "fuck":6,
                     "time":0,
                     "goy":-8,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "光之刃":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"YH/G",
                     "type":"SkillTongRen",
                     "fuck":6,
                     "time":10,
                     "gox":10,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[0,10],
                     "name":"YH/G",
                     "type":"SkillTongRen",
                     "fuck":6,
                     "time":35,
                     "gox":7,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               break;
            case "上挑":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,2,15);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"XN/T",
                     "type":"SkillTongRen",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y - 35,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               break;
            case "跳跃斩·地":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,4,15);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,1,2,12);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,3,4,12);
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[0,10],
                     "name":"XN/K",
                     "type":"SkillTongRen",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 50 * param1.$scaleX,
                     "y":param1.$bit.y - 35,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               break;
            case "空中攻击":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[0,10],
                     "name":"XN/Z",
                     "type":"SkillTongRen",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,3,param1.$speed * 3);
               if(param1.hitRoleBoolean)
               {
                  param1.stoic = 0.3;
                  param1.stopSkill();
               }
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,8,param1.$speed);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,12,15,param1.$speed * 3);
               if(param1.$frameInt == 12 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[0,10],
                     "name":"JiuTouLong",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "gox":param1.$speed * 2.5,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
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
            case "龍鳴閃":
               ComponentResourcesManage.$Ob["SystemTongRenrd"].askElements("skill",{
                  "name":"BoYin",
                  "type":"SkillTongRen",
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

