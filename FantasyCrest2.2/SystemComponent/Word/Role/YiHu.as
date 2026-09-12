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
   
   public class YiHu
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      private static var $hei:Array = new Array();
      
      public function YiHu()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/yihu.png","photo","YiHu");
         SystemLoading.addTask("File/indexFile/img/role/yihu.xml","text","YiHu");
         SystemLoading.addTask("File/indexFile/img/role/wanjieyihu.png","photo","WanJieYiHu");
         SystemLoading.addTask("File/indexFile/img/role/wanjieyihu.xml","text","WanJieYiHu");
         SystemLoadType.loadRoleSkillData("JL/A");
         SystemLoadType.loadRoleSkillData("ChaKeLa");
         SystemLoadType.loadRoleSkillData("YH/D");
         SystemLoadType.loadRoleSkillData("YH/X");
         SystemLoadType.loadRoleSkillData("YH/Y");
         SystemLoadType.loadRoleSkillData("YH/Y2");
         SystemLoadType.loadRoleSkillData("LD/Q");
         SystemLoadType.loadRoleSkillData("YH/Y3");
         SystemLoadType.loadRoleSkillData("YH/Y4");
         SystemLoadType.loadRoleSkillData("Buff1");
         SystemLoadType.loadRoleSkillData("YH/S");
         SystemLoadType.loadRoleSkillData("YH/H");
         SystemLoadType.loadRoleSkillData("YH/B");
         SystemLoadType.loadRoleSkillData("HF/V");
         SystemLoadType.loadRoleSkillData("HF/C");
         SystemLoadType.loadRoleSkillData("YH/M");
         SystemLoadType.loadRoleSkillData("YH/G");
         SystemLoadType.loadRoleSkillData("YH/F");
         SystemLoadType.loadRoleSkillData("YH/Z1");
         $mxx = $mxx.concat([0,0,0,0,0]);
         $mxx = $mxx.concat([0,0,1.53,0,0]);
         $mxx = $mxx.concat([0,0,2.53,0,0]);
         $mxx = $mxx.concat([0,0,0.5,1,0]);
         $hei = $hei.concat([0,0,0,0,0]);
         $hei = $hei.concat([0,0,0,0,0]);
         $hei = $hei.concat([0,0,0,0,0]);
         $hei = $hei.concat([1,0.8,0.4,0.05,0.05]);
         SystemLoading.addTask("File/indexFile/sound/role/yihu/sm_blood_rave_atk.mp3","sound","yihu_sm_blood_rave_atk");
         SystemLoading.addTask("File/indexFile/sound/role/yihu/sm_jingong.mp3","sound","yihu_sm_jingong");
         SystemLoading.addTask("File/indexFile/sound/role/yihu/sm_sura_jingong.mp3","sound","yihu_sm_sura_jingong");
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         RoleMathType.setSpeed(param1,6 + (param1.$ob.wanjie == true ? 2 : 0));
      }
      
      public static function init() : void
      {
         $ob["龙卷"] = {
            "cd":6,
            "w":150,
            "s":"W",
            "key":Keyboard.U,
            "g":"斩月-满月"
         };
         $ob["气"] = {
            "cd":6,
            "w":150,
            "s":"S",
            "key":Keyboard.U,
            "g":"斩月-裂空"
         };
         $ob["月牙上撩"] = {
            "cd":5,
            "w":150,
            "s":"W",
            "key":Keyboard.I,
            "g":"月牙-空"
         };
         $ob["地"] = {
            "cd":8,
            "w":150,
            "s":"S",
            "key":Keyboard.I,
            "g":"斩月-地裂崩击"
         };
         $ob["月连牙"] = {
            "cd":35,
            "mp":300,
            "w":500,
            "s":"S",
            "key":Keyboard.O,
            "g":"真-连环斩月"
         };
         $ob["月牙的意志"] = {
            "cd":15,
            "mp":200,
            "w":1000,
            "s":"",
            "key":Keyboard.P,
            "g":"灵压解放",
            "n":"增加月牙的宽度和射程"
         };
         $ob["普通攻击"] = {
            "cd":0,
            "w":50,
            "s":"",
            "key":Keyboard.J
         };
         $ob["瞬步"] = {
            "cd":0,
            "w":1000,
            "s":"",
            "key":Keyboard.L
         };
         $ob["月牙"] = {
            "cd":3,
            "w":150,
            "s":"",
            "key":Keyboard.U,
            "g":"斩月-新月"
         };
         $ob["月牙斩"] = {
            "cd":5,
            "w":150,
            "s":"",
            "key":Keyboard.I,
            "g":"月牙"
         };
         $ob["空月牙"] = {
            "cd":5,
            "w":150,
            "s":"",
            "k":true,
            "key":Keyboard.U,
            "g":"月牙-地"
         };
         $ob["月牙冲天"] = {
            "cd":35,
            "w":1000,
            "mp":300,
            "s":"",
            "key":Keyboard.O,
            "g":"月牙天冲"
         };
         $ob["卍解"] = {
            "cd":60,
            "w":9999,
            "mp":200,
            "s":"SS",
            "key":Keyboard.P,
            "g":"卍解-天锁斩月"
         };
         $ob["闪空"] = {
            "cd":8,
            "w":150,
            "h":150,
            "s":"S",
            "key":Keyboard.U,
            "g":"闪空.黑流牙突",
            "n":"卍解才能使用的技能"
         };
         $ob["黑漆"] = {
            "cd":6,
            "w":50,
            "h":500,
            "s":"W",
            "key":Keyboard.U,
            "g":"一闪.灵压突",
            "n":"卍解才能使用的技能"
         };
         $ob["空黑月牙"] = {
            "cd":6,
            "w":150,
            "h":150,
            "s":"W",
            "key":Keyboard.I,
            "g":"黑月牙.空斩",
            "n":"卍解才能使用的技能"
         };
         $ob["黑化阻止"] = {
            "cd":30,
            "mp":300,
            "w":250,
            "h":150,
            "s":"SS",
            "key":Keyboard.O,
            "g":"灵压超爆发",
            "n":"卍解才能使用的技能"
         };
         $ob["闪杀"] = {
            "cd":45,
            "mp":400,
            "w":9999,
            "h":950,
            "s":"WW",
            "key":Keyboard.O,
            "g":"包围网.天舞连迅",
            "n":"卍解才能使用的技能"
         };
         $ob["闪撩"] = {
            "cd":8,
            "w":150,
            "h":150,
            "s":"",
            "key":Keyboard.U,
            "g":"黑流牙突",
            "n":"卍解才能使用的技能"
         };
         $ob["黑月牙"] = {
            "cd":8,
            "w":150,
            "h":150,
            "s":"",
            "k":true,
            "key":Keyboard.U,
            "g":"黑月牙.落",
            "n":"卍解才能使用的技能"
         };
         $ob["黑月牙天冲"] = {
            "cd":6,
            "w":900,
            "h":50,
            "s":"",
            "key":Keyboard.I,
            "g":"黑月牙.斩",
            "n":"卍解才能使用的技能"
         };
         $ob["月牙天冲【黑】"] = {
            "cd":35,
            "mp":300,
            "w":900,
            "h":50,
            "s":"",
            "key":Keyboard.O,
            "g":"月牙天冲【黑】",
            "n":"卍解才能使用的技能"
         };
         $ob["解除卍解"] = {
            "cd":0,
            "mp":0,
            "w":999,
            "s":"",
            "key":Keyboard.P,
            "g":"始解",
            "n":"卍解才能使用的技能"
         };
         $ob["剑灵压"] = {
            "cd":4,
            "mp":0,
            "w":140,
            "s":"S",
            "key":Keyboard.I,
            "g":"斩魄刀.剑气震荡",
            "n":"卍解才能使用的技能"
         };
         $ob["邪光斩"] = {
            "cd":8,
            "mp":0,
            "w":340,
            "s":"AA",
            "key":Keyboard.I,
            "n":"卍解才能使用的技能"
         };
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc4_:int = 0;
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         if(param1.$ob.wanjie)
         {
            _loc4_ = 0;
            while(_loc4_ <= 1)
            {
               loop3:
               switch(param2)
               {
                  case Keyboard.J:
                     break;
                  case Keyboard.K:
                     return "none";
                  case Keyboard.L:
                     switch(_loc3_)
                     {
                        case "S":
                           return "none";
                        default:
                           break loop3;
                     }
                     break;
                  case Keyboard.U:
                     switch(_loc3_)
                     {
                        case "S":
                           return "闪空";
                        case "W":
                           return "黑漆";
                        default:
                           break loop3;
                     }
                     break;
                  case Keyboard.I:
                     switch(_loc3_)
                     {
                        case "W":
                           return "空黑月牙";
                        case "S":
                           return "剑灵压";
                        default:
                           break loop3;
                     }
                     break;
                  case Keyboard.O:
                     switch(_loc3_)
                     {
                        case "SS":
                           return "黑化阻止";
                        case "WW":
                           return "闪杀";
                        default:
                           break loop3;
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
                  return "闪撩";
               case Keyboard.I:
                  return "黑月牙天冲";
               case Keyboard.O:
                  return "月牙天冲【黑】";
               case Keyboard.P:
                  return "解除卍解";
            }
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ <= 1)
            {
               loop14:
               switch(param2)
               {
                  case Keyboard.J:
                     break;
                  case Keyboard.K:
                     return "none";
                  case Keyboard.L:
                     switch(_loc3_)
                     {
                        case "S":
                           return "none";
                        default:
                           break loop14;
                     }
                     break;
                  case Keyboard.U:
                     switch(_loc3_)
                     {
                        case "W":
                           return "龙卷";
                        case "S":
                           return "气";
                        default:
                           break loop14;
                     }
                     break;
                  case Keyboard.I:
                     switch(_loc3_)
                     {
                        case "W":
                           return "月牙上撩";
                        case "S":
                           return "地";
                        case "AA":
                        case "DD":
                           return "邪光斩";
                        default:
                           break loop14;
                     }
                     break;
                  case Keyboard.O:
                     switch(_loc3_)
                     {
                        case "S":
                           return "月连牙";
                        default:
                           break loop14;
                     }
                     break;
                  case Keyboard.P:
                     switch(_loc3_)
                     {
                        case "SS":
                           return "卍解";
                        default:
                           break loop14;
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
                  return "月牙";
               case Keyboard.I:
                  return "月牙斩";
               case Keyboard.O:
                  return "月牙冲天";
               case Keyboard.P:
                  return "月牙的意志";
            }
         }
         return "none";
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc4_:int = 0;
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         if(param1.$ob.wanjie)
         {
            _loc4_ = 0;
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
                  return "黑月牙";
               case Keyboard.I:
                  return "none";
               case Keyboard.O:
                  return "none";
               case Keyboard.P:
                  return "none";
            }
         }
         else
         {
            _loc4_ = 0;
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
                  return "空月牙";
               case Keyboard.I:
                  return "none";
               case Keyboard.O:
                  return "none";
               case Keyboard.P:
                  return "none";
            }
         }
         return "none";
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         var _loc2_:Array = null;
         if(!param1.$jumpBoolean)
         {
            param1.$y += param1.Speed;
         }
         if(param1.$frameInt == 0)
         {
            param1.$ob.see = null;
         }
         if(param1.$ob.yueya == null)
         {
            param1.$ob.yueya = 0;
         }
         if(param1.$frameInt == 0)
         {
            param1.$ob.shan = false;
            param1.$ob.hit = 0;
         }
         if(param1.$ob.wanjie)
         {
            switch(param1.$frameString)
            {
               case "剑灵压":
                  if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "time":0,
                        "name":"YH/F",
                        "type":"SkillYiHu",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * -1
                     });
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "time":0,
                        "name":"YH/F",
                        "type":"SkillYiHu",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "解除卍解":
                  if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.stoic = 0.3;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[5,10],
                        "time":0,
                        "name":"YH/B",
                        "type":"SkillYiHu",
                        "fuck":0,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 0.5
                     });
                  }
                  else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.$ob.wanjie = false;
                     param1.chanageRoleTarget("YiHu");
                     param1.frameString = "待机";
                  }
                  break;
               case "黑化阻止":
                  if(param1.$frameInt == 11 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[5,10],
                        "time":0,
                        "name":"YH/B",
                        "type":"SkillYiHu",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 2
                     });
                  }
                  break;
               case "月牙天冲【黑】":
                  if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "color":$hei,
                        "blendMode":BlendMode.NORMAL,
                        "gox":10,
                        "goy":0,
                        "ka":[3,10],
                        "time":20,
                        "name":"YH/Y3",
                        "type":"SkillYiHu",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * (1.5 + param1.$ob.yueya)
                     });
                  }
                  break;
               case "空黑月牙":
                  if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "color":$hei,
                        "blendMode":BlendMode.NORMAL,
                        "gox":5,
                        "goy":-5,
                        "ka":[3,10],
                        "name":"YH/Y2",
                        "type":"SkillYiHu",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * (1.8 + param1.$ob.yueya)
                     });
                  }
                  break;
               case "黑月牙天冲":
                  if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "color":$hei,
                        "blendMode":BlendMode.NORMAL,
                        "gox":5,
                        "goy":0,
                        "ka":[3,10],
                        "name":"YH/Y",
                        "type":"SkillYiHu",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * (1.8 + param1.$ob.yueya)
                     });
                  }
                  break;
               case "黑月牙":
                  if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.stoic = 0.3;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "color":$hei,
                        "blendMode":BlendMode.NORMAL,
                        "gox":5,
                        "goy":5,
                        "ka":[3,10],
                        "name":"YH/Y4",
                        "type":"SkillYiHu",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * (1.8 + param1.$ob.yueya)
                     });
                  }
                  break;
               case "黑漆":
                  param1.$y += FrameMath.mathFrameToX(param1.$frameInt,2,9,-12);
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.stoic = 0.3;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":0,
                        "goy":-6,
                        "name":"YH/H",
                        "type":"SkillYiHu",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y - 35,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "闪杀":
                  param1.$god = 5;
                  param1.$y += FrameMath.mathFrameToX(param1.$frameInt,7,8,param1.$speed * -4);
                  param1.$y += FrameMath.mathFrameToX(param1.$frameInt,16,17,param1.$speed * -4);
                  param1.$x += FrameMath.mathFrameToX(param1.$frameInt,10,11,param1.$speed * -4 * param1.$scaleX);
                  param1.$y += FrameMath.mathFrameToX(param1.$frameInt,10,11,param1.$speed * 4);
                  param1.$x += FrameMath.mathFrameToX(param1.$frameInt,13,14,param1.$speed * -4 * param1.$scaleX);
                  param1.$y += FrameMath.mathFrameToX(param1.$frameInt,13,14,param1.$speed * -4);
                  if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.$y -= 100;
                  }
                  if(param1.$frameInt == 18 && param1.$ob.hit < 2)
                  {
                     ++param1.$ob.hit;
                     param1.$frameInt = 6;
                  }
                  else if(param1.$frameInt == 18)
                  {
                     _loc2_ = param1.hitRoleAndSkill(9999,true);
                     if(_loc2_.length !== 0)
                     {
                        param1.$x = _loc2_[0].$x - 55 * param1.$scaleX;
                        param1.$y = _loc2_[0].$y - 55;
                     }
                  }
                  param1.$jumpBoolean = param1.$frameInt >= 1;
                  if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     _loc2_ = param1.hitRoleAndSkill(9999,true);
                     if(_loc2_.length !== 0)
                     {
                        param1.$x = _loc2_[0].$x;
                        param1.$y = _loc2_[0].$y + 35;
                     }
                     else
                     {
                        param1.stopSkill();
                     }
                  }
                  else if((param1.$frameInt == 9 || param1.$frameInt == 12) && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     _loc2_ = param1.hitRoleAndSkill(9999,true);
                     if(_loc2_.length !== 0)
                     {
                        param1.$x = _loc2_[0].$x + 35 * param1.$scaleX;
                        param1.$y = _loc2_[0].$y - 35;
                     }
                     else
                     {
                        param1.stopSkill();
                     }
                  }
                  else if((param1.$frameInt == 15 || param1.$frameInt == 12) && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     _loc2_ = param1.hitRoleAndSkill(9999,true);
                     if(_loc2_.length !== 0)
                     {
                        param1.$x = _loc2_[0].$x + 20 * param1.$scaleX;
                        param1.$y = _loc2_[0].$y + 55;
                     }
                     else
                     {
                        param1.stopSkill();
                     }
                  }
                  if(param1.$frameInt == 23 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.$x += 200 * param1.$scaleX;
                     param1.$y += 35;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "name":"YH/M",
                        "type":"SkillYiHu",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x - 100 * param1.$scaleX,
                        "y":param1.$bit.y - 85,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "闪空":
                  if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     _loc2_ = param1.hitRoleAndSkill(180,true);
                     if(_loc2_.length !== 0)
                     {
                        param1.$ob.shan = true;
                        param1.$god = 5;
                        param1.alpha = 0;
                        param1.$x = _loc2_[0].$x;
                        param1.$y = _loc2_[0].$y - 35;
                     }
                  }
                  if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.alpha = 1;
                  }
                  if(!param1.$ob.shan && param1.$frameInt == 3)
                  {
                     param1.stopSkill();
                  }
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "color":$hei,
                        "blendMode":BlendMode.NORMAL,
                        "gox":0,
                        "goy":3,
                        "ka":[1,10],
                        "name":"HF/C",
                        "type":"SkillYiHu",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y + 25,
                        "scaleX":param1.$scaleX * 1.2
                     });
                  }
                  break;
               case "闪撩":
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,2,14);
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "color":$hei,
                        "blendMode":BlendMode.NORMAL,
                        "gox":0,
                        "goy":0,
                        "ka":[1,10],
                        "name":"HF/V",
                        "type":"SkillYiHu",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y + 25,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "瞬步":
                  RoleMathType.alphaFrame(param1);
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,param1.$speed * 4);
                  break;
               case "普通攻击":
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,3,4);
                  if(param1.$frameInt == 17 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "color":$mxx,
                        "blendMode":BlendMode.NORMAL,
                        "gox":0,
                        "goy":0,
                        "ka":[1,10],
                        "name":"JL/A",
                        "type":"SkillYiHu",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  else if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "blendMode":BlendMode.NORMAL,
                        "gox":0,
                        "goy":0,
                        "ka":[1,5],
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
            }
         }
         else
         {
            switch(param1.$frameString)
            {
               case "邪光斩":
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":12,
                        "ka":[3,10],
                        "name":"YH/G",
                        "type":"SkillYiHu",
                        "fuck":6,
                        "time":60,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * (0.5 + param1.$ob.yueya)
                     });
                  }
                  break;
               case "卍解":
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":0,
                        "goy":0,
                        "name":"YH/S",
                        "type":"SkillYiHu",
                        "fuck":6,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y - 35,
                        "scaleX":param1.$scaleX * 1.5
                     });
                  }
                  if(param1.$frameInt == 8)
                  {
                     param1.$ob.wanjie = true;
                     param1.chanageRoleTarget("WanJieYiHu");
                     param1.frameString = "待机";
                  }
                  break;
               case "月牙的意志":
                  if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "color":$mxx,
                        "gox":0,
                        "goy":0,
                        "name":"Buff1",
                        "type":"SkillYiHu",
                        "fuck":0,
                        "time":400,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "空月牙":
                  if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":5,
                        "goy":5,
                        "ka":[3,10],
                        "name":"YH/Y4",
                        "type":"SkillYiHu",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * (1.5 + param1.$ob.yueya)
                     });
                  }
                  break;
               case "月连牙":
                  if((param1.$frameInt == 4 || param1.$frameInt == 10) && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":12,
                        "goy":0,
                        "ka":[3,10],
                        "time":20,
                        "name":"YH/Y3",
                        "type":"SkillYiHu",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * (1 + param1.$ob.yueya)
                     });
                  }
                  break;
               case "月牙冲天":
                  if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "color":$mxx,
                        "gox":7,
                        "goy":0,
                        "ka":[3,10],
                        "name":"LD/Q",
                        "type":"SkillYiHu",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * (2 + param1.$ob.yueya)
                     });
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":7,
                        "goy":0,
                        "ka":[3,10],
                        "name":"YH/Y",
                        "type":"SkillYiHu",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * (2 + param1.$ob.yueya)
                     });
                  }
                  break;
               case "月牙上撩":
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":5,
                        "goy":-5,
                        "ka":[3,10],
                        "name":"YH/Y2",
                        "type":"SkillYiHu",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * (1.5 + param1.$ob.yueya)
                     });
                  }
                  break;
               case "月牙斩":
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":5,
                        "goy":0,
                        "ka":[3,10],
                        "name":"YH/Y",
                        "type":"SkillYiHu",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * (1.5 + param1.$ob.yueya)
                     });
                  }
                  break;
               case "龙卷":
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":0,
                        "goy":0,
                        "ka":[5,10],
                        "name":"YH/X",
                        "type":"SkillYiHu",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "地":
                  if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "color":$mxx,
                        "gox":0,
                        "goy":0,
                        "ka":[1,10],
                        "name":"YH/D",
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
               case "气":
                  if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "color":$mxx,
                        "gox":0,
                        "goy":0,
                        "ka":[3,10],
                        "name":"ChaKeLa",
                        "type":"SkillYiHu",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "月牙":
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "color":$mxx,
                        "blendMode":BlendMode.NORMAL,
                        "gox":0,
                        "goy":0,
                        "ka":[1,10],
                        "name":"JL/A",
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
               case "瞬步":
                  RoleMathType.alphaFrame(param1);
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,param1.$speed * 4);
                  break;
               case "普通攻击":
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,2,3);
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,6,5);
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,8,10,5);
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
                  "type":"SkillYiHu",
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

