package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.SystemMucisPlay;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class PaoJie
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public static var $pj:Array = new Array();
      
      public function PaoJie()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/paojie.png","photo","PaoJie");
         SystemLoading.addTask("File/indexFile/img/role/paojie.xml","text","PaoJie");
         SystemLoadType.loadRoleSkillData("PJ/D");
         SystemLoadType.loadRoleSkillData("PJ/G");
         SystemLoadType.loadRoleSkillData("NMF/P");
         SystemLoadType.loadRoleSkillData("PJ/Y");
         SystemLoadType.loadRoleSkillData("PJ/K");
         SystemLoadType.loadRoleSkillData("PJ/L");
         SystemLoadType.loadRoleSkillData("PJ/J");
         SystemLoadType.loadRoleSkillData("PJ/C");
         SystemLoadType.loadRoleSkillData("PJ/S");
         SystemLoadType.loadRoleSkillData("GDJ/D");
         SystemLoadType.loadRoleSkillData("PJ/T");
         SystemLoadType.loadRoleSkillData("PJ/I");
         SystemLoadType.loadRoleSkillData("PJ/PO");
         SystemLoadType.loadRoleSkillData("AS/huo");
         SystemLoadType.loadRoleSkillData("NZ/Q");
         SystemLoading.addTask("File/indexFile/sound/role/paojie/2798.mp3","sound","paojie_2798");
         SystemLoading.addTask("File/indexFile/sound/role/paojie/2800.mp3","sound","paojie_2800");
         var _loc1_:int = 1;
         while(_loc1_ < 21)
         {
            SystemLoading.addTask("File/indexFile/sound/role/paojie/" + _loc1_ + ".mp3","sound","paojie_" + _loc1_);
            _loc1_++;
         }
         $mxx = $mxx.concat([0.3,0,0,0,0]);
         $mxx = $mxx.concat([0.5,0.3,0,0,0]);
         $mxx = $mxx.concat([1,0.6,0.5,0.3,0.2]);
         $mxx = $mxx.concat([0.8,0.6,0.5,0.3,0.2]);
         $pj = $pj.concat([1,0,0,0.5,0]);
         $pj = $pj.concat([1,0,0,0.5,0]);
         $pj = $pj.concat([0,0,0,0,0]);
         $pj = $pj.concat([0.8,0.6,0.5,0.1,0.05]);
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
      }
      
      public static function init() : void
      {
         $ob["引雷"] = {
            "cd":4,
            "w":70,
            "h":200,
            "s":"W",
            "key":Keyboard.U,
            "g":"落雷"
         };
         $ob["木涟"] = {
            "cd":5,
            "w":100,
            "s":"S",
            "key":Keyboard.U,
            "g":"铁砂之剑"
         };
         $ob["雷震"] = {
            "cd":10,
            "w":300,
            "s":"S",
            "key":Keyboard.I,
            "g":"静电磁场"
         };
         $ob["落雷"] = {
            "cd":60,
            "mp":500,
            "w":999999,
            "s":"SS",
            "key":Keyboard.O,
            "g":"真正的落雷"
         };
         $ob["触电"] = {
            "cd":8,
            "w":70,
            "s":"",
            "key":Keyboard.U,
            "g":"电磁波"
         };
         $ob["雷鞭"] = {
            "cd":4,
            "w":100,
            "s":"",
            "key":Keyboard.I,
            "g":"铁砂之鞭"
         };
         $ob["硬币炮"] = {
            "cd":30,
            "mp":200,
            "w":550,
            "s":"",
            "key":Keyboard.O,
            "g":"超电磁炮"
         };
         $ob["空雷"] = {
            "cd":35,
            "mp":200,
            "w":350,
            "s":"",
            "k":true,
            "key":Keyboard.O,
            "g":"雷击之枪.天雷空裂"
         };
         $ob["瞬步"] = {
            "cd":1,
            "w":1000,
            "s":"",
            "key":Keyboard.L
         };
         $ob["空滑"] = {
            "cd":0,
            "w":50,
            "s":"W",
            "key":Keyboard.L,
            "g":"电磁力.冲刺"
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
         $ob["空滑"] = {
            "cd":4,
            "w":200,
            "s":"W",
            "key":Keyboard.L,
            "g":"电磁力.冲刺"
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
                     case "W":
                        return "空滑";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                        return "引雷";
                     case "S":
                        return "木涟";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        break;
                     case "S":
                        return "雷震";
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "SS":
                        return "落雷";
                     case "W":
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
               return "触电";
            case Keyboard.I:
               return "雷鞭";
            case Keyboard.O:
               return "硬币炮";
            case Keyboard.P:
               return "none";
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
                  return "none";
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
               break;
            case Keyboard.I:
               return "none";
            case Keyboard.O:
               return "空雷";
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
            case "落雷":
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,9,12,param1.Speed * 4);
               if(param1.$frameInt > 12 && param1.$jumpBoolean == true)
               {
                  param1.$y += param1.Speed * 2;
               }
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"PJ/J",
                     "type":"SkillPaoJie",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 15 * param1.$scaleX,
                     "y":param1.$bit.y + 15,
                     "scaleX":param1.$scaleX * 3
                  });
               }
               else if(param1.$frameInt == 12 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "colorBoolean":$mxx,
                     "ka":[1,10],
                     "name":"PJ/T",
                     "type":"SkillPaoJie",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y + 600 / ComponentResourcesManage.$word.scaleX,
                     "scaleX":param1.$scaleX * 5 / ComponentResourcesManage.$word.scaleX
                  });
               }
               else if(param1.$frameInt > 9 && param1.$frameInt < 7)
               {
                  param1.$jumpBoolean = true;
               }
               break;
            case "引雷":
               param1.$x -= param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,7,9,4);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,7,8,5);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,8,9,5);
               if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(11);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "colorBoolean":$mxx,
                     "ka":[5,10],
                     "name":"PJ/L",
                     "type":"SkillPaoJie",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 80 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "触电":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"PJ/J",
                     "type":"SkillPaoJie",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt >= 7 && param1.$frameInt <= 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "colorBoolean":$mxx,
                     "name":"PJ/C",
                     "type":"SkillPaoJie",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 50 * (param1.$frameInt - 6) * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               break;
            case "雷震":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(2);
                  sound(12);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "colorBoolean":$mxx,
                     "color":$mxx,
                     "name":"GDJ/D",
                     "type":"SkillPaoJie",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "空雷":
               if(param1.$frameInt > 3)
               {
                  param1.stoic = 1;
               }
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(9);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "colorBoolean":$mxx,
                     "ka":[5,10],
                     "name":"PJ/K",
                     "type":"SkillPaoJie",
                     "fuck":3,
                     "time":50,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "硬币炮":
               if(param1.$frameInt > 8)
               {
                  param1.stoic = 0.1;
               }
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(21);
               }
               if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(13);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"PJ/Y",
                     "type":"SkillPaoJie",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$pj,
                     "colorBoolean":$mxx,
                     "ka":[5,10],
                     "name":"PJ/PO",
                     "type":"SkillPaoJie",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 35 * param1.$scaleX,
                     "y":param1.$bit.y + 25,
                     "scaleX":param1.$scaleX * 2.4
                  });
               }
               break;
            case "雷鞭":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,8,9,param1.Speed * 2);
               if(param1.$frameInt == 11 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"PJ/D",
                     "type":"SkillPaoJie",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 65 * param1.$scaleX,
                     "y":param1.$bit.y - 40,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(8);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"PJ/D",
                     "type":"SkillPaoJie",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y - 40,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               break;
            case "木涟":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,7,param1.Speed * 2);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(8);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"PJ/D",
                     "type":"SkillPaoJie",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 40,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "空滑":
               param1.stoic = 0.1;
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,1,3,param1.$speed * 4);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,3,5,param1.$speed * 2);
               param1.$jumpBoolean = true;
               break;
            case "空中攻击":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(8);
               }
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,param1.$speed * 4);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,2,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,5,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,7,8,4);
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(7);
               }
               else if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(8);
               }
               else if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(7);
               }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      private static function sound(param1:int) : void
      {
         SystemMucisPlay.setMusic = "paojie_" + param1;
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

