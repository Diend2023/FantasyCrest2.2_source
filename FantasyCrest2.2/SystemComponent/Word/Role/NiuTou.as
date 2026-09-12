package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class NiuTou
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function NiuTou()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/niutou.png","photo","NiuTou");
         SystemLoading.addTask("File/indexFile/img/role/niutou.xml","text","NiuTou");
         SystemLoadType.loadRoleSkillData("YueGuang");
         SystemLoadType.loadRoleSkillData("LanGuang");
         SystemLoadType.loadRoleSkillData("KongZhang");
         SystemLoadType.loadRoleSkillData("XD/Bao");
         SystemLoadType.loadRoleSkillData("TuLongShan");
         SystemLoadType.loadRoleSkillData("TuoZhan");
         SystemLoadType.loadRoleSkillData("LD/D1");
         SystemLoadType.loadRoleSkillData("LD/D2");
         SystemLoadType.loadRoleSkillData("LongShan");
         SystemLoadType.loadRoleSkillData("LingDian");
         SystemLoadType.loadRoleSkillData("DiBao");
         SystemLoadType.loadRoleSkillData("GJS/T");
         SystemLoadType.loadRoleSkillData("S/Z");
         SystemLoadType.loadRoleSkillData("MR/S");
         SystemLoadType.loadRoleSkillData("SB/D");
         $mxx = $mxx.concat([1,2,3,1,0.5]);
         $mxx = $mxx.concat([0,1,0,0,0]);
         $mxx = $mxx.concat([0,1,0.2,0,0]);
         $mxx = $mxx.concat([0.8,0.6,0.4,0.2,0.1]);
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         RoleMathType.setSpeed(param1,7);
      }
      
      public static function init() : void
      {
         $ob["灵压解放"] = {
            "cd":8,
            "mp":80,
            "mode":"DK",
            "w":200,
            "mp":100,
            "s":"W",
            "key":Keyboard.U,
            "g":"灵压解放.虚魄"
         };
         $ob["追月"] = {
            "cd":8,
            "mp":80,
            "w":200,
            "s":"S",
            "key":Keyboard.U,
            "g":"响转.戬伐"
         };
         $ob["对空炮"] = {
            "cd":6,
            "mp":80,
            "w":250,
            "s":"W",
            "key":Keyboard.I,
            "g":"崩庭溃天炮"
         };
         $ob["气浪"] = {
            "cd":8,
            "mp":80,
            "w":270,
            "s":"S",
            "key":Keyboard.I,
            "g":"响转.一刀千剡"
         };
         $ob["虚闪·赤"] = {
            "cd":8,
            "mp":80,
            "w":120,
            "mp":50,
            "s":"",
            "key":Keyboard.U,
            "g":"虚闪·赤"
         };
         $ob["必杀·月牙"] = {
            "cd":38,
            "mp":400,
            "w":550,
            "s":"",
            "key":Keyboard.O,
            "g":"无情葬月"
         };
         $ob["剑闪"] = {
            "cd":35,
            "mp":300,
            "w":550,
            "s":"S",
            "key":Keyboard.O,
            "g":"燹芒三闪"
         };
         $ob["瞬步"] = {
            "cd":1,
            "w":1000,
            "s":"",
            "key":Keyboard.L
         };
         $ob["十字斩"] = {
            "cd":8,
            "mp":80,
            "w":100,
            "h":500,
            "s":"",
            "key":Keyboard.I,
            "g":"刀压.刈"
         };
         $ob["上挑"] = {
            "cd":6,
            "mp":80,
            "w":200,
            "h":500,
            "s":"W",
            "key":Keyboard.J,
            "g":"逆血魔刲"
         };
         $ob["回蓝天"] = {
            "cd":0,
            "mp":0,
            "w":200,
            "h":500,
            "s":"",
            "key":Keyboard.P
         };
         $ob["普通攻击"] = {
            "cd":1,
            "mp":25,
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
                        return "上挑";
                     case "S":
                  }
                  break;
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  switch(_loc3_)
                  {
                     case "S":
                        return "突击";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                        return "灵压解放";
                     case "S":
                        return "追月";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        return "对空炮";
                     case "SS":
                        return "微火";
                     case "S":
                        return "气浪";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "W":
                        return "石头";
                     case "S":
                        return "剑闪";
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
               return "虚闪·赤";
            case Keyboard.I:
               return "十字斩";
            case Keyboard.O:
               return "必杀·月牙";
            case Keyboard.P:
               return "回蓝天";
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
                     case "S":
                        return "突击";
                     default:
                        break loop2;
                  }
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
               return "猛击";
            case Keyboard.I:
               return "猛摔";
            case Keyboard.O:
               break;
            case Keyboard.P:
         }
         return "none";
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         var _loc2_:SystemGameRole = null;
         if(param1.$frameString != "空中攻击" && (param1.$frameInt == 0 || param1.$frameInt == 3))
         {
            param1.$jumpFuckInt = 1;
            param1.stoic = 0.2;
         }
         if(param1.$hitBoolean && param1.$frameString != "普通攻击" && param1.$frameString != "空中攻击")
         {
            if(param1.$ob.fight != param1.$frameString)
            {
               param1.$ob.fight = param1.$frameString;
               if(param1.$frameString == "剑闪" || param1.$frameString == "必杀·月牙")
               {
                  param1.sethp(param1.gethp + 100);
               }
               else
               {
                  param1.sethp(param1.gethp + 20);
               }
            }
         }
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
            case "回蓝天":
               if(param1.$frameInt == 7)
               {
                  param1.to(6);
               }
               if(param1.$frameInt > 5)
               {
                  ++param1.$mp;
               }
               if(param1.$keyString != "")
               {
                  param1.stopSkill();
               }
               break;
            case "剑闪":
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":HongFa.$mxx,
                     "name":"MR/S",
                     "type":"SkillBan",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 25 * param1.$scaleX,
                     "y":param1.$bit.y + 50,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":HongFa.$mxx,
                     "name":"MR/S",
                     "type":"SkillBan",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 225 * param1.$scaleX,
                     "y":param1.$bit.y + 50,
                     "scaleX":param1.$scaleX
                  });
               }
               break;
            case "必杀·月牙":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":12,
                     "color":HongFa.$mxx,
                     "name":"S/Z",
                     "type":"SkillBan",
                     "fuck":9,
                     "time":64,
                     "role":param1,
                     "x":param1.$bit.x - 25 * param1.$scaleX,
                     "y":param1.$bit.y - 50,
                     "scaleX":param1.$scaleX
                  });
               }
               break;
            case "上挑":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":HongFa.$mxx,
                     "name":"GJS/T",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 25 * param1.$scaleX,
                     "y":param1.$bit.y - 50,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":HongFa.$mxx,
                     "name":"GJS/T",
                     "type":"SkillBan",
                     "fuck":10,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 25 * param1.$scaleX,
                     "y":param1.$bit.y - 50,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               break;
            case "对空炮":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":HongFa.$mxx,
                     "name":"DiBao",
                     "type":"SkillBan",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 0 * param1.$scaleX,
                     "y":param1.$bit.y - 50,
                     "scaleX":param1.$scaleX * 1.25,
                     "scaleY":1
                  });
               }
               else if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":HongFa.$mxx,
                     "name":"LingDian",
                     "type":"SkillBan",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX
                  });
               }
               break;
            case "气浪":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,7,20);
               if(param1.hitRoleBoolean && param1.$frameInt < 9)
               {
                  param1.to(9);
               }
               if(param1.$frameInt > 3 && param1.$frameInt < 7)
               {
                  param1.$stoic = 0.2;
               }
               else if(param1.$frameInt == 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "color":HongFa.$mxx,
                     "name":"LongShan",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "color":HongFa.$mxx,
                     "name":"LongShan",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * -1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":HongFa.$mxx,
                     "name":"LingDian",
                     "type":"SkillBan",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX
                  });
               }
               break;
            case "十字斩":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":HongFa.$mxx,
                     "name":"LD/D1",
                     "type":"SkillBan",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX
                  });
               }
               else if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":6,
                     "ka":[1,10],
                     "color":HongFa.$mxx,
                     "name":"LD/D1",
                     "type":"SkillBan",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":6,
                     "ka":[1,10],
                     "color":HongFa.$mxx,
                     "name":"LD/D2",
                     "type":"SkillBan",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "追月":
               param1.stoic = 0.3;
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,12,12);
               if(param1.$frameInt == 12 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":HongFa.$mxx,
                     "name":"TuoZhan",
                     "type":"SkillBan",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * -1
                  });
               }
               else if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":12,
                     "ka":[1,10],
                     "color":HongFa.$mxx,
                     "name":"TuLongShan",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "灵压解放":
               param1.stoic = 0.3;
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":HongFa.$mxx,
                     "name":"XD/Bao",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "虚闪·赤":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":HongFa.$mxx,
                     "name":"LanGuang",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 40,
                     "scaleX":param1.$scaleX * 3,
                     "scaleY":0.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":HongFa.$mxx,
                     "name":"KongZhang",
                     "type":"SkillBan",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y + 100,
                     "scaleX":param1.$scaleX * 1.2,
                     "scaleY":3
                  });
               }
               if(param1.$skillFrameInt >= 5)
               {
                  param1.stoic = 0.3;
               }
               break;
            case "空中攻击":
               _loc2_ = param1.hitRoleAndSkill(150,true)[0];
               param1.$jumpMath = 0;
               if(Boolean(_loc2_) && param1.$frameInt <= 3)
               {
                  if(param1.$scaleX > 0 && param1.$x < _loc2_.$x)
                  {
                     param1.$x += (_loc2_.$x - param1.$x) * 0.2;
                     param1.$y += (_loc2_.$y - param1.$y - 15) * 0.2;
                  }
                  else if(param1.$scaleX < 0 && param1.$x > _loc2_.$x)
                  {
                     param1.$x += (_loc2_.$x - param1.$x) * 0.2;
                     param1.$y += (_loc2_.$y - param1.$y - 15) * 0.2;
                  }
                  else if(param1.$frameInt <= 3)
                  {
                     param1.$x += 5 * param1.$scaleX;
                  }
               }
               else
               {
                  param1.$x += 5 * param1.$scaleX;
               }
               if(param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.goQZ(255,0,0);
               }
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,24);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,3,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,6,10);
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":HongFa.$mxx,
                     "ka":[1,10],
                     "name":"YueGuang",
                     "type":"SkillBan",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y + 15,
                     "scaleX":param1.$scaleX * 0.8
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

