package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class Saber
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function Saber()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/saber.png","photo","Saber");
         SystemLoading.addTask("File/indexFile/img/role/saber.xml","text","Saber");
         SystemLoadType.loadRoleSkillData("SuChuan");
         SystemLoadType.loadRoleSkillData("LD/D1");
         SystemLoadType.loadRoleSkillData("S/Z");
         SystemLoadType.loadRoleSkillData("S/G");
         SystemLoadType.loadRoleSkillData("Buff1");
         SystemLoadType.loadRoleSkillData("LD/Q");
         SystemLoadType.loadRoleSkillData("S/D");
         SystemLoadType.loadRoleSkillData("S/S");
         SystemLoadType.loadRoleSkillData("S/R");
         SystemLoadType.loadRoleSkillData("S/C");
         SystemLoadType.loadRoleSkillData("AS/Boom");
         SystemLoadType.loadRoleSkillData("ZZ/Y");
         SystemLoadType.loadRoleSkillData("ZZ/B");
         SystemLoading.addTask("File/indexFile/sound/role/saber/zz0.mp3","sound","saber_zz0");
         SystemLoading.addTask("File/indexFile/sound/role/saber/zz09.mp3","sound","saber_zz09");
         SystemLoading.addTask("File/indexFile/sound/role/saber/zz1.mp3","sound","saber_zz1");
         SystemLoading.addTask("File/indexFile/sound/role/saber/zz10.mp3","sound","saber_zz10");
         SystemLoading.addTask("File/indexFile/sound/role/saber/zz14.mp3","sound","saber_zz14");
         SystemLoading.addTask("File/indexFile/sound/role/saber/zz21.mp3","sound","saber_zz21");
         SystemLoading.addTask("File/indexFile/sound/role/saber/zz28.mp3","sound","saber_zz28");
         SystemLoading.addTask("File/indexFile/sound/role/saber/zz41.mp3","sound","saber_zz41");
         SystemLoading.addTask("File/indexFile/sound/role/saber/zz49.mp3","sound","saber_zz49");
         SystemLoading.addTask("File/indexFile/sound/role/saber/zz92.mp3","sound","saber_zz92");
         SystemLoading.addTask("File/indexFile/sound/role/saber/zz93.mp3","sound","saber_zz93");
         SystemLoading.addTask("File/indexFile/sound/role/saber/zz94.mp3","sound","saber_zz94");
         $mxx = $mxx.concat([0.3,0,0,0,0]);
         $mxx = $mxx.concat([0.5,0.3,0,0,0]);
         $mxx = $mxx.concat([1,0.6,0.5,0.3,0.2]);
         $mxx = $mxx.concat([0.8,0.6,0.5,0.3,0.2]);
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         RoleMathType.setSpeed(param1,7);
      }
      
      public static function beHurt(param1:SystemGameRole, param2:int) : void
      {
         if(param1.$frameString == "遥远的幻想乡")
         {
            param1.$ob.behurt += param2;
            param1.sethp(param1.gethp + param2 * 0.3);
         }
      }
      
      public static function init() : void
      {
         $ob["地爆"] = {
            "cd":8,
            "w":170,
            "h":200,
            "s":"W",
            "key":Keyboard.U,
            "g":"风王的一击"
         };
         $ob["闪耀"] = {
            "cd":5,
            "w":200,
            "s":"S",
            "key":Keyboard.U,
            "g":"魔力外放"
         };
         $ob["跳跃斩"] = {
            "cd":5,
            "w":250,
            "s":"W",
            "key":Keyboard.I,
            "g":"风王铁槌"
         };
         $ob["扯"] = {
            "cd":10,
            "w":70,
            "s":"S",
            "key":Keyboard.I,
            "g":"多重剑气"
         };
         $ob["风王结界解放"] = {
            "cd":35,
            "mp":300,
            "w":450,
            "s":"S",
            "key":Keyboard.O
         };
         $ob["速刃"] = {
            "cd":8,
            "w":220,
            "s":"",
            "key":Keyboard.U,
            "g":"蚀月斩"
         };
         $ob["瞬斩"] = {
            "cd":6,
            "w":250,
            "s":"",
            "key":Keyboard.I,
            "g":"殒星"
         };
         $ob["冲击斩"] = {
            "cd":35,
            "mp":300,
            "w":550,
            "s":"",
            "key":Keyboard.O,
            "g":"誓约胜利之剑"
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
         $ob["直觉"] = {
            "cd":20,
            "mode":"DK",
            "w":500,
            "s":"",
            "key":Keyboard.L,
            "n":"地面被攻击时L迅速后撤"
         };
         $ob["魔力外放"] = {
            "cd":20,
            "w":9999,
            "h":500,
            "s":"",
            "key":Keyboard.P,
            "g":"魔力加持"
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
                  if(param1.$frameString == "受伤")
                  {
                     return "直觉";
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                        param1.qz = 0;
                        return "地爆";
                     case "S":
                        return "闪耀";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        return "跳跃斩";
                     case "S":
                        return "扯";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "W":
                     case "S":
                        return "风王结界解放";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.P:
                  switch(_loc3_)
                  {
                     case "S":
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
               return "速刃";
            case Keyboard.I:
               return "瞬斩";
            case Keyboard.O:
               return "冲击斩";
            case Keyboard.P:
               return "魔力外放";
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
               case Keyboard.L:
                  if(param1.$frameString == "受伤")
                  {
                     return "直觉";
                  }
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
            case Keyboard.I:
            case Keyboard.O:
               break;
            case Keyboard.P:
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
            case "跳跃斩":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,3,6);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,0,3,12);
               param1.$jumpBoolean = param1.$frameInt > 0;
               break;
            case "扯":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "name":"S/C",
                     "type":"SkillSaber",
                     "time":0,
                     "fuck":3,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "速刃":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[2,10],
                     "name":"S/R",
                     "type":"SkillSaber",
                     "time":0,
                     "fuck":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "地爆":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"S/S",
                     "type":"SkillSaber",
                     "time":0,
                     "fuck":99,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"S/D",
                     "type":"SkillSaber",
                     "time":0,
                     "fuck":99,
                     "role":param1,
                     "x":param1.$bit.x + 55 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "风王结界解放":
               if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":12,
                     "name":"LD/Q",
                     "type":"SkillSaber",
                     "time":0,
                     "fuck":3,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.8
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":0,
                     "name":"shun",
                     "type":"SkillSaber",
                     "time":0,
                     "fuck":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               break;
            case "遥远的幻想乡":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$ob.fang = param1.$fang;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"Buff1",
                     "type":"SkillSaber",
                     "time":360,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "魔力外放":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$ob.fang = param1.$fang;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"Buff1",
                     "type":"SkillSaber",
                     "time":360,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "直觉":
               param1.$god = 5;
               param1.$x -= param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,5,param1.$speed * 2);
               param1.$x -= param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,7,4);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":1,
                     "ka":[1,10],
                     "name":"fangYu",
                     "type":"SkillSaber",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "闪耀":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":0,
                     "ka":[1,10],
                     "name":"S/G",
                     "type":"SkillSaber",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 25,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "冲击斩":
               if(param1.$frameInt == 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":14,
                     "ka":[5,10],
                     "name":"S/Z",
                     "type":"SkillSaber",
                     "fuck":3,
                     "time":40,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬斩":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,4,param1.$speed * 6);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,6,4);
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"SuChuan",
                     "type":"SkillSaber",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               break;
            case "空中攻击":
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,14);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,4,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,8,4);
               if(param1.$frameInt == 17 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LD/D1",
                     "type":"SkillSaber",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
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
            case "木涟":
         }
      }
   }
}

