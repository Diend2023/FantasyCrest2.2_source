package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class LianDao
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function LianDao()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/liandao.png","photo","LianDao");
         SystemLoading.addTask("File/indexFile/img/role/liandao.xml","text","LianDao");
         SystemLoadType.loadRoleSkillData("BJR/F");
         SystemLoadType.loadRoleSkillData("BJR/J");
         SystemLoadType.loadRoleSkillData("GDJ/S");
         SystemLoadType.loadRoleSkillData("GDJ/Z");
         SystemLoadType.loadRoleSkillData("DiBao");
         SystemLoadType.loadRoleSkillData("SD/H");
         SystemLoadType.loadRoleSkillData("LingDian");
         SystemLoadType.loadRoleSkillData("SD/F");
         SystemLoadType.loadRoleSkillData("SD/G");
         SystemLoading.addTask("File/indexFile/sound/role/LianDao/2798.mp3","sound","LianDao_2798");
         SystemLoading.addTask("File/indexFile/sound/role/LianDao/2800.mp3","sound","LianDao_2800");
         $mxx = $mxx.concat([0,0,0.1,0.1,0]);
         $mxx = $mxx.concat([0,0.5,0,0,0]);
         $mxx = $mxx.concat([0,1,0,0.5,0]);
         $mxx = $mxx.concat([0.2,0.2,0.2,1,0]);
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
            "key":Keyboard.U
         };
         $ob["木涟"] = {
            "cd":5,
            "w":100,
            "s":"S",
            "key":Keyboard.U
         };
         $ob["雷震"] = {
            "cd":10,
            "w":300,
            "s":"S",
            "key":Keyboard.I
         };
         $ob["落雷"] = {
            "cd":60,
            "mp":500,
            "w":999999,
            "s":"SS",
            "key":Keyboard.O
         };
         $ob["触电"] = {
            "cd":8,
            "w":70,
            "s":"",
            "key":Keyboard.U
         };
         $ob["雷鞭"] = {
            "cd":4,
            "w":100,
            "s":"",
            "key":Keyboard.I
         };
         $ob["硬币炮"] = {
            "cd":30,
            "mp":200,
            "w":550,
            "s":"",
            "key":Keyboard.O
         };
         $ob["空雷"] = {
            "cd":35,
            "mp":200,
            "w":350,
            "s":"",
            "k":true,
            "key":Keyboard.O
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
                        return "突刺";
                     case "S":
                        return "扯风";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        return "尘";
                     case "S":
                        return "光";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "S":
                        return "双斩";
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
               return "扯刃";
            case Keyboard.I:
               return "猛扯";
            case Keyboard.O:
               return "一闪";
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
            case "光":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"SD/G",
                     "type":"SkillLianDao",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 30,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               break;
            case "双斩":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[6,10],
                     "name":"SD/F",
                     "type":"SkillLianDao",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"LingDian",
                     "type":"SkillLianDao",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "一闪":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,7,14,param1.Speed * 4);
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[4,10],
                     "name":"SD/H",
                     "type":"SkillLianDao",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "尘":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"DiBao",
                     "type":"SkillLianDao",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 25 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.8
                  });
               }
               break;
            case "猛扯":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"GDJ/Z",
                     "type":"SkillLianDao",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y + 65,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "突刺":
               param1.$jumpBoolean = param1.$frameInt > 4;
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,4,8,param1.$speed * 3);
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"GDJ/S",
                     "type":"SkillLianDao",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y + 15,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "扯风":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"BJR/J",
                     "type":"SkillLianDao",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y + 15,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "扯刃":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"BJR/F",
                     "type":"SkillLianDao",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y + 15,
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
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,2,6);
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"BJR/F",
                     "type":"SkillLianDao",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y + 15,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               else if(param1.$frameInt == 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"BJR/J",
                     "type":"SkillLianDao",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y + 15,
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

