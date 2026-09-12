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
   
   public class Ban
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function Ban()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/ban.png","photo","Ban");
         SystemLoading.addTask("File/indexFile/img/role/ban.xml","text","Ban");
         SystemLoadType.loadRoleSkillData("NGJ/S");
         SystemLoadType.loadRoleSkillData("NGJ/P");
         SystemLoadType.loadRoleSkillData("HM/Y");
         SystemLoadType.loadRoleSkillData("NZ/H");
         SystemLoadType.loadRoleSkillData("NZ/HBuff");
         SystemLoadType.loadRoleSkillData("YanDi");
         SystemLoadType.loadRoleSkillData("ZZ/HD");
         SystemLoadType.loadRoleSkillData("B/L");
         SystemLoadType.loadRoleSkillData("NMF/P");
         SystemLoadType.loadRoleSkillData("GDJ/C");
         SystemLoadType.loadRoleSkillData("GDJ/A");
         SystemLoadType.loadRoleSkillData("B/F");
         SystemLoadType.loadRoleSkillData("B/G");
         SystemLoadType.loadRoleSkillData("AS/B");
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
         $ob["突击"] = {
            "cd":3,
            "w":270,
            "h":200,
            "s":"S",
            "key":Keyboard.L,
            "g":"豪焰瞬身"
         };
         $ob["旋击腿"] = {
            "cd":5,
            "w":200,
            "s":"W",
            "key":Keyboard.U,
            "g":"痛天脚"
         };
         $ob["猛砸"] = {
            "cd":5,
            "w":200,
            "s":"S",
            "key":Keyboard.U,
            "g":"火遁.炎风"
         };
         $ob["微火"] = {
            "cd":8,
            "w":250,
            "s":"SS",
            "key":Keyboard.I,
            "g":"火遁.豪火灭失"
         };
         $ob["大微火"] = {
            "cd":8,
            "w":270,
            "s":"S",
            "key":Keyboard.I,
            "g":"火遁.离火灭却"
         };
         $ob["火龙"] = {
            "cd":38,
            "mp":300,
            "w":50,
            "s":"S",
            "key":Keyboard.O,
            "g":"火遁.龙炎放歌之术"
         };
         $ob["石头"] = {
            "cd":35,
            "mp":300,
            "w":350,
            "s":"W",
            "key":Keyboard.O,
            "g":"神之力.陨石天降"
         };
         $ob["三段踢"] = {
            "cd":5,
            "w":120,
            "s":"",
            "key":Keyboard.U,
            "g":"碎颅.穿踢.莲华"
         };
         $ob["大爆炎"] = {
            "cd":35,
            "mp":300,
            "w":550,
            "s":"",
            "key":Keyboard.O,
            "g":"火遁.豪火灭却"
         };
         $ob["瞬步"] = {
            "cd":1,
            "w":1000,
            "s":"",
            "key":Keyboard.L
         };
         $ob["猛击"] = {
            "cd":5,
            "w":100,
            "h":500,
            "s":"",
            "k":true,
            "key":Keyboard.U,
            "g":"追击.岩碎"
         };
         $ob["猛摔"] = {
            "cd":5,
            "w":100,
            "h":500,
            "s":"",
            "k":true,
            "key":Keyboard.I,
            "g":"火遁.追击.红焰天火"
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
                        return "旋击腿";
                     case "S":
                        return "猛砸";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "WW":
                        return "none";
                     case "SS":
                        return "微火";
                     case "S":
                        return "大微火";
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
                        return "火龙";
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
               return "三段踢";
            case Keyboard.I:
               return "none";
            case Keyboard.O:
               return "大爆炎";
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
         var _loc3_:SystemGameRole = null;
         if(param1.$frameString != "空中攻击" && (param1.$frameInt == 0 || param1.$frameInt == 3))
         {
            param1.$jumpFuckInt = 1;
            param1.stoic = 0.2;
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
            case "石头":
               _loc2_ = param1.hitRoleAndSkill(400,true)[0];
               if(!_loc2_)
               {
                  _loc2_ = param1;
               }
               if(Boolean(_loc2_) && Boolean(param1.$frameInt == 4) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "gox":4,
                     "goy":4,
                     "time":1200,
                     "ka":[2,10],
                     "name":"B/G",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":_loc2_.$bit.x - 10 * _loc2_.$scaleX * 120 - 400 * _loc2_.$scaleX,
                     "y":_loc2_.$bit.y - 1200,
                     "scaleX":_loc2_.$scaleX * 1.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "fps":2,
                     "color":$mxx,
                     "name":"NZ/HBuff",
                     "type":"SkillBan",
                     "fuck":0,
                     "gox":4,
                     "goy":4,
                     "time":1200,
                     "role":param1,
                     "x":_loc2_.$bit.x - 10 * _loc2_.$scaleX * 120 - 400 * _loc2_.$scaleX,
                     "y":_loc2_.$bit.y - 1100,
                     "scaleX":_loc2_.$scaleX * 1.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "fps":2,
                     "color":$mxx,
                     "name":"NZ/HBuff",
                     "type":"SkillBan",
                     "fuck":0,
                     "gox":4,
                     "goy":4,
                     "time":1200,
                     "role":param1,
                     "x":_loc2_.$bit.x - 10 * _loc2_.$scaleX * 120 - 350 * _loc2_.$scaleX,
                     "y":_loc2_.$bit.y - 1150,
                     "scaleX":_loc2_.$scaleX * 1.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "fps":2,
                     "color":$mxx,
                     "name":"NZ/HBuff",
                     "type":"SkillBan",
                     "fuck":0,
                     "gox":4,
                     "goy":4,
                     "time":1200,
                     "role":param1,
                     "x":_loc2_.$bit.x - 10 * _loc2_.$scaleX * 120 - 450 * _loc2_.$scaleX,
                     "y":_loc2_.$bit.y - 1200,
                     "scaleX":_loc2_.$scaleX * 1.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "fps":2,
                     "color":$mxx,
                     "name":"NZ/HBuff",
                     "type":"SkillBan",
                     "fuck":0,
                     "gox":4,
                     "goy":4,
                     "time":1200,
                     "role":param1,
                     "x":_loc2_.$bit.x - 10 * _loc2_.$scaleX * 120 - 450 * _loc2_.$scaleX,
                     "y":_loc2_.$bit.y - 1250,
                     "scaleX":_loc2_.$scaleX * 1.5
                  });
               }
               break;
            case "猛砸":
               _loc2_ = param1.hitRoleAndSkill(150,true)[0];
               if(Boolean(_loc2_) && param1.$frameInt <= 3)
               {
                  if(param1.$scaleX > 0 && param1.$x < _loc2_.$x)
                  {
                     param1.$x += (_loc2_.$x - param1.$x) * 0.2;
                  }
                  else if(param1.$scaleX < 0 && param1.$x > _loc2_.$x)
                  {
                     param1.$x += (_loc2_.$x - param1.$x) * 0.2;
                  }
                  else
                  {
                     param1.$x += 5 * param1.$scaleX;
                  }
               }
               else if(param1.$frameInt <= 3)
               {
                  param1.$x += 5 * param1.$scaleX;
               }
               if(param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.goQZ(255,0,0);
               }
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[2,10],
                     "name":"B/F",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 25 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "猛摔":
               _loc2_ = param1.hitRoleAndSkill(150,true)[0];
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
                  else
                  {
                     param1.$x += 5 * param1.$scaleX;
                  }
               }
               else if(param1.$frameInt <= 3)
               {
                  param1.$x += 5 * param1.$scaleX;
               }
               if(param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.goQZ(255,0,0);
               }
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"GDJ/A",
                     "type":"SkillBan",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 25 * param1.$scaleX,
                     "y":param1.$bit.y + 45,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "旋击腿":
               _loc2_ = param1.hitRoleAndSkill(150,true)[0];
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
                  else
                  {
                     param1.$x += 5 * param1.$scaleX;
                  }
               }
               else if(param1.$frameInt <= 3)
               {
                  param1.$x += 5 * param1.$scaleX;
               }
               if(param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.goQZ(255,0,0);
               }
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"GDJ/C",
                     "type":"SkillBan",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 25 * param1.$scaleX,
                     "y":param1.$bit.y + 15,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "猛击":
               _loc2_ = param1.hitRoleAndSkill(150,true)[0];
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
                  else
                  {
                     param1.$x += 5 * param1.$scaleX;
                  }
               }
               else if(param1.$frameInt <= 3)
               {
                  param1.$x += 5 * param1.$scaleX;
               }
               if(param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.goQZ(255,0,0);
               }
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"NMF/P",
                     "type":"SkillBan",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 25 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "火龙":
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":14,
                     "time":36,
                     "color":$mxx,
                     "name":"B/L",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + (Math.random() * 50 - 25) * param1.$scaleX,
                     "y":param1.$bit.y + Math.random() * 50 - 25,
                     "scaleX":param1.$scaleX * 0.8
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":14,
                     "time":36,
                     "color":$mxx,
                     "name":"B/L",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + (Math.random() * 50 - 25) * param1.$scaleX,
                     "y":param1.$bit.y + Math.random() * 50 - 25,
                     "scaleX":param1.$scaleX * 0.8
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":14,
                     "time":36,
                     "color":$mxx,
                     "name":"B/L",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + (Math.random() * 50 - 25) * param1.$scaleX,
                     "y":param1.$bit.y + Math.random() * 50 - 25,
                     "scaleX":param1.$scaleX * 0.8
                  });
               }
               else if(param1.$frameInt == 13 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":10,
                     "time":36,
                     "color":$mxx,
                     "name":"B/L",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 15 * param1.$scaleX,
                     "y":param1.$bit.y + 10,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               else if(param1.$frameInt == 18 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":10,
                     "time":36,
                     "color":$mxx,
                     "name":"B/L",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 15 * param1.$scaleX,
                     "y":param1.$bit.y + 10,
                     "scaleX":param1.$scaleX * 1.6
                  });
               }
               break;
            case "大微火":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"ZZ/HD",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 15 * param1.$scaleX,
                     "y":param1.$bit.y + 10,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "大爆炎":
               if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "fps":1,
                     "name":"NZ/H",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 10 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 17 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "color":$mxx,
                     "name":"YanDi",
                     "type":"SkillBan",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 240 * param1.$scaleX,
                     "y":param1.$bit.y + 75,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "微火":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"NZ/H",
                     "type":"SkillBan",
                     "fuck":16,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 10 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 14 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "fps":2,
                     "color":$mxx,
                     "name":"NZ/HBuff",
                     "type":"SkillBan",
                     "fuck":16,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 240 * param1.$scaleX,
                     "y":param1.$bit.y - 55,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "三段踢":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"NGJ/S",
                     "type":"SkillBan",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 25 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.6
                  });
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"NGJ/P",
                     "gox":5,
                     "type":"SkillBan",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 25 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.4
                  });
               }
               else if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[3,10],
                     "time":10,
                     "name":"HM/Y",
                     "gox":7,
                     "type":"SkillBan",
                     "fuck":6,
                     "time":10,
                     "role":param1,
                     "x":param1.$bit.x + 25 * param1.$scaleX,
                     "y":param1.$bit.y - 50,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               break;
            case "突击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,8,param1.$speed * 4);
               param1.stoic = 0.3;
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"shun",
                     "type":"SkillBan",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               if(param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.goQZ(255,0,0);
               }
               _loc3_ = param1.hitGameRole;
               if(_loc3_)
               {
                  _loc3_.$x = param1.$x + 25 * param1.$scaleX;
                  param1.stopSkill();
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
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,11,4);
               if(param1.$frameInt == 15 && param1.$skillFrameInt !== param1.$frameInt)
               {
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

