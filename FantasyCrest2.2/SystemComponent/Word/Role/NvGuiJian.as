package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class NvGuiJian
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function NvGuiJian()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/nvguijian.png","photo","NvGuiJian");
         SystemLoading.addTask("File/indexFile/img/role/nvguijian.xml","text","NvGuiJian");
         SystemLoadType.loadRoleSkillData("NGJ/P");
         SystemLoadType.loadRoleSkillData("NGJ/T");
         SystemLoadType.loadRoleSkillData("NGJ/F");
         SystemLoadType.loadRoleSkillData("NGJ/D");
         SystemLoadType.loadRoleSkillData("NGJ/B");
         SystemLoadType.loadRoleSkillData("AS/Boom");
         SystemLoadType.loadRoleSkillData("NGJ/S");
         SystemLoadType.loadRoleSkillData("NGJ/G");
         SystemLoadType.loadRoleSkillData("GJS/C");
         SystemLoadType.loadRoleSkillData("NGJ/H");
         SystemLoadType.loadRoleSkillData("AS/huo");
         SystemLoadType.loadRoleSkillData("GJS/Z");
         SystemLoadType.loadRoleSkillData("NGJ/L");
         SystemLoadType.loadRoleSkillData("NZ/Q");
         SystemLoading.addTask("File/indexFile/sound/role/nvguijian/sm_atk_01.mp3","sound","nvguijian_sm_atk_01");
         SystemLoading.addTask("File/indexFile/sound/role/nvguijian/sm_atk_02.mp3","sound","nvguijian_sm_atk_02");
         SystemLoading.addTask("File/indexFile/sound/role/nvguijian/sm_atk_03.mp3","sound","nvguijian_sm_atk_03");
         SystemLoading.addTask("File/indexFile/sound/role/nvguijian/sm_bal1.mp3","sound","nvguijian_sm_bal1");
         SystemLoading.addTask("File/indexFile/sound/role/nvguijian/sm_boodong_explosion.mp3","sound","nvguijian_sm_boodong_explosion");
         SystemLoading.addTask("File/indexFile/sound/role/nvguijian/sm_chargecrash_up.mp3","sound","nvguijian_sm_chargecrash_up");
         SystemLoading.addTask("File/indexFile/sound/role/nvguijian/sm_flense.mp3","sound","nvguijian_sm_flense");
         $mxx = $mxx.concat([0,0,1.2,1.55,0]);
         $mxx = $mxx.concat([0,0.5,0,0,0]);
         $mxx = $mxx.concat([0,0,0,0,0]);
         $mxx = $mxx.concat([0.2,0.2,0.2,1,0]);
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
      }
      
      public static function init() : void
      {
         $ob["七闪"] = {
            "cd":6,
            "w":80,
            "h":80,
            "s":"W",
            "key":Keyboard.U,
            "g":"七闪.白雁落"
         };
         $ob["闪刃"] = {
            "cd":6,
            "w":200,
            "s":"S",
            "key":Keyboard.U,
            "g":"七闪.一切闪"
         };
         $ob["跃切"] = {
            "cd":4,
            "w":200,
            "s":"AA",
            "key":Keyboard.U,
            "g":"七闪.跃切"
         };
         $ob["飞镰"] = {
            "cd":12,
            "w":50,
            "s":"W",
            "key":Keyboard.I,
            "g":"七闪.半月镰"
         };
         $ob["突刺"] = {
            "cd":8,
            "w":200,
            "s":"S",
            "key":Keyboard.I,
            "g":"七闪.袭"
         };
         $ob["鬼神"] = {
            "cd":30,
            "mp":200,
            "w":500,
            "s":"S",
            "key":Keyboard.O,
            "g":"妖魅夺魄"
         };
         $ob["鬼神爆破"] = {
            "cd":6,
            "w":300,
            "s":"",
            "key":Keyboard.U,
            "g":"鬼神爆破"
         };
         $ob["破魔"] = {
            "cd":10,
            "w":300,
            "s":"",
            "key":Keyboard.I,
            "g":"七闪.闪返破魔"
         };
         $ob["舞动"] = {
            "cd":30,
            "mp":200,
            "w":50,
            "s":"",
            "key":Keyboard.O,
            "g":"七闪奥义.火祭之舞"
         };
         $ob["炎属性"] = {
            "cd":20,
            "w":1000,
            "s":"",
            "key":Keyboard.P,
            "g":"炎华身护"
         };
         $ob["瞬步"] = {
            "cd":0,
            "w":1000,
            "s":"",
            "key":Keyboard.L
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
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                        return "七闪";
                     case "S":
                        return "闪刃";
                     case "AA":
                     case "DD":
                        return "跃切";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        return "飞镰";
                     case "S":
                        return "突刺";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "W":
                        return "none";
                     case "S":
                        return "鬼神";
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
               return "鬼神爆破";
            case Keyboard.I:
               return "破魔";
            case Keyboard.O:
               return "舞动";
            case Keyboard.P:
               return "炎属性";
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
            param1.$ob.see = null;
         }
         switch(param1.$frameString)
         {
            case "炎属性":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":0,
                     "ka":[1,10],
                     "name":"NGJ/H",
                     "type":"SkillNvGuiJian",
                     "fuck":0,
                     "time":600,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 30,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               break;
            case "跃切":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,8,8);
               break;
            case "鬼神":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":0,
                     "ka":[1,10],
                     "name":"NGJ/L",
                     "type":"SkillNvGuiJian",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":0,
                     "ka":[1,10],
                     "name":"NGJ/G",
                     "type":"SkillNvGuiJian",
                     "fuck":100,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 15 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "七闪":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":0,
                     "ka":[2,10],
                     "name":"NGJ/S",
                     "type":"SkillNvGuiJian",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               break;
            case "舞动":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,12,17,10);
               if(param1.$frameInt == 18 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":0,
                     "ka":[4,10],
                     "name":"AS/Boom",
                     "type":"SkillNvGuiJian",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "鬼神爆破":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":0,
                     "ka":[1,10],
                     "name":"NGJ/B",
                     "type":"SkillNvGuiJian",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 150 * param1.$scaleX,
                     "y":param1.$bit.y - 50,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               break;
            case "闪刃":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":0,
                     "ka":[3,10],
                     "name":"NGJ/D",
                     "type":"SkillNvGuiJian",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "飞镰":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":2,
                     "ka":[5,10],
                     "name":"NGJ/F",
                     "type":"SkillNvGuiJian",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 50 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "破魔":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,7,12);
               if(param1.hitRoleBoolean && param1.$frameInt > 1 && param1.$frameInt < 4)
               {
                  param1.$frameInt = 4;
               }
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":6,
                     "ka":[1,10],
                     "name":"NGJ/P",
                     "type":"SkillNvGuiJian",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 50 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               else if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":0,
                     "ka":[2,10],
                     "name":"NGJ/T",
                     "type":"SkillNvGuiJian",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 40 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "突刺":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,12);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"GJS/C",
                     "type":"SkillNvGuiJian",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 100 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "空中攻击":
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,param1.$speed * 4);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,4,6);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,7,8,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,9,11,4);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,9,11,10);
               if(param1.$frameInt >= 9)
               {
                  param1.$ob.kong = true;
                  param1.$jumpBoolean = true;
               }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         if(param1.$ob.yan == true)
         {
            param2.sethp(param2.gethp - 15 * param1.$lv / 10);
            ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
               "name":"AS/huo",
               "type":"SkillNvGuiJian",
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

