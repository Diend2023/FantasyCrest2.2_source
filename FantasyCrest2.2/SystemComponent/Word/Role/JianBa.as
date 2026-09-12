package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.GameData;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class JianBa
   {
      
      public static var $ob:Object = new Object();
      
      public static var matrix:Array = new Array();
      
      public function JianBa()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["抓取"] = {
            "cd":6,
            "w":50,
            "s":"S",
            "key":Keyboard.J,
            "g":"空抓投"
         };
         $ob["空中攻击"] = {
            "cd":0,
            "w":100,
            "k":true,
            "s":"",
            "key":Keyboard.J
         };
         $ob["瞬踢"] = {
            "cd":8,
            "w":80,
            "s":"AA",
            "key":Keyboard.J,
            "g":"瞬踢.踹裆"
         };
         $ob["瞬步"] = {
            "cd":0,
            "w":80,
            "s":"",
            "key":Keyboard.L
         };
         $ob["挑空"] = {
            "cd":8,
            "w":100,
            "s":"W",
            "key":Keyboard.J,
            "g":"圆月"
         };
         $ob["升空斩"] = {
            "cd":8,
            "w":200,
            "s":"W",
            "key":Keyboard.U
         };
         $ob["灵压"] = {
            "cd":35,
            "mp":200,
            "w":200,
            "s":"W",
            "key":Keyboard.O,
            "g":"灵压.冲天.爆发"
         };
         $ob["剑葬"] = {
            "cd":35,
            "mp":200,
            "w":200,
            "s":"S",
            "key":Keyboard.O,
            "g":"灵压.剑葬"
         };
         $ob["破裂"] = {
            "cd":35,
            "mp":200,
            "w":350,
            "s":"",
            "key":Keyboard.O,
            "g":"剑压.石破天惊"
         };
         $ob["冲刺斩"] = {
            "cd":12,
            "w":500,
            "s":"",
            "key":Keyboard.U,
            "g":"剑压.碎石裂碑"
         };
         $ob["普通攻击"] = {
            "cd":0,
            "w":50,
            "s":"",
            "key":Keyboard.J
         };
         $ob["刺突"] = {
            "cd":8,
            "w":120,
            "s":"",
            "key":Keyboard.I,
            "g":"突刺.裂气"
         };
         $ob["色字"] = {
            "cd":15,
            "mp":50,
            "w":1000,
            "s":"",
            "key":Keyboard.P,
            "g":"色字.强运"
         };
         $ob["遇强则强"] = {
            "cd":20,
            "mp":200,
            "w":1000,
            "s":"S",
            "key":Keyboard.P
         };
         matrix = matrix.concat([0,0,1,0,0]);
         matrix = matrix.concat([0,0,0.8,0,0]);
         matrix = matrix.concat([0,0,0,0,0]);
         matrix = matrix.concat([0,0,0,1,0]);
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/jianba.png","photo","JianBa");
         SystemLoading.addTask("File/indexFile/img/role/jianba.xml","text","JianBa");
         SystemLoadType.loadRoleSkillData("YueGuang");
         SystemLoadType.loadRoleSkillData("LingYa");
         SystemLoadType.loadRoleSkillData("GuiTou");
         SystemLoadType.loadRoleSkillData("JianZhang");
         SystemLoadType.loadRoleSkillData("YiDaoZhan");
         SystemLoadType.loadRoleSkillData("YiDaoZhan");
         SystemLoadType.loadRoleSkillData("ShangZhan");
         SystemLoadType.loadRoleSkillData("DiLie");
         SystemLoadType.loadRoleSkillData("DiBao");
         SystemLoadType.loadRoleSkillData("CiTu");
         SystemLoadType.loadRoleSkillData("Buff1");
         SystemLoadType.loadRoleSkillData("Buff2");
         SystemLoading.addTask("File/indexFile/sound/role/jianba/han.mp3","sound","jianba_han");
         SystemLoading.addTask("File/indexFile/sound/role/jianba/han1.mp3","sound","jianba_han1");
         SystemLoading.addTask("File/indexFile/sound/role/jianba/han10.mp3","sound","jianba_han10");
         SystemLoading.addTask("File/indexFile/sound/role/jianba/han3.mp3","sound","jianba_han3");
         SystemLoading.addTask("File/indexFile/sound/role/jianba/han4.mp3","sound","jianba_han4");
         SystemLoading.addTask("File/indexFile/sound/role/jianba/han5.mp3","sound","jianba_han5");
         SystemLoading.addTask("File/indexFile/sound/role/jianba/han6.mp3","sound","jianba_han6");
         SystemLoading.addTask("File/indexFile/sound/role/jianba/han9.mp3","sound","jianba_han9");
         SystemLoading.addTask("File/indexFile/sound/role/jianba/killyou.mp3","sound","jianba_killyou");
         SystemLoading.addTask("File/indexFile/sound/role/jianba/meng.mp3","sound","jianba_meng");
         SystemLoading.addTask("File/indexFile/sound/role/jianba/SB.mp3","sound","jianba_SB");
         SystemLoading.addTask("File/indexFile/sound/role/jianba/SeLe.mp3","sound","jianba_SeLe");
         SystemLoading.addTask("File/indexFile/sound/role/jianba/xiao2.mp3","sound","jianba_xiao2");
         SystemLoadType.loadHredSkillData("jianba1");
         SystemLoadType.loadHredSkillData("jianba2");
         SystemLoadType.loadHredSkillData("jianba3");
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            if(_loc4_ <= 1)
            {
               switch(param2)
               {
                  case Keyboard.J:
                     switch(_loc3_)
                     {
                        case "W":
                           return "挑空";
                        case "AA":
                        case "DD":
                           return "瞬踢";
                        case "S":
                           return "抓取";
                        default:
                           continue;
                     }
                     break;
                  case Keyboard.K:
                     break loop0;
                  case Keyboard.L:
                     var _loc5_:String = _loc3_;
                     switch(0)
                     {
                     }
                     break;
                  case Keyboard.U:
                     switch(_loc3_)
                     {
                        case "W":
                           return "升空斩";
                        default:
                           continue;
                     }
                     break;
                  case Keyboard.I:
                     _loc5_ = _loc3_;
                     switch(0)
                     {
                     }
                     break;
                  case Keyboard.O:
                     switch(_loc3_)
                     {
                        case "W":
                           return "灵压";
                        case "S":
                           return "剑葬";
                        default:
                           continue;
                     }
                     break;
                  case Keyboard.P:
                     switch(_loc3_)
                     {
                        case "S":
                           if(!(ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "Buff2"] is SkillShow))
                           {
                              return "遇强则强";
                           }
                     }
                     continue;
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
                  return "冲刺斩";
               case Keyboard.I:
                  return "刺突";
               case Keyboard.O:
                  return "破裂";
               case Keyboard.P:
                  if(!(ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "Buff1"] is SkillShow))
                  {
                     return "色子";
                  }
            }
            return "none";
            _loc3_ = _loc3_.charAt(1);
            _loc4_++;
         }
         return "none";
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:Boolean = param1.$left;
         var _loc4_:Boolean = param1.$right;
         var _loc5_:Boolean = param1.$up;
         var _loc6_:Boolean = param1.$down;
         if(Keyboard.J == param2)
         {
            return "空中攻击";
         }
         if(!_loc3_ && !_loc4_ && !_loc5_ && !_loc6_)
         {
            switch(param2)
            {
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  return "none";
               case Keyboard.U:
                  return "none";
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
         if(!param1.$jumpBoolean)
         {
            param1.$y += param1.Speed;
         }
         switch(param1.$frameString)
         {
            case "遇强则强":
               RoleMathType.setPhoto(param1,"HREDjianba2");
               RoleMathType.stoicType(param1,0,2);
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":matrix,
                     "name":"Buff2",
                     "type":"SkillJianBa",
                     "fuck":0,
                     "time":400,
                     "target":true,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "色子":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":matrix,
                     "name":"Buff1",
                     "type":"SkillJianBa",
                     "fuck":0,
                     "time":400,
                     "target":true,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "刺突":
               RoleMathType.stoicType(param1,3,4);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,6,param1.$speed * 2);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"CiTu",
                     "type":"SkillJianBa",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "破裂":
               RoleMathType.setPhoto(param1,"HREDjianba1");
               RoleMathType.stoicType(param1,0,3);
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"DiBao",
                     "type":"SkillJianBa",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 55 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"DiLie",
                     "type":"SkillJianBa",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 3
                  });
               }
               break;
            case "冲刺斩":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,6,param1.$speed * 3);
               RoleMathType.stoicType(param1,6,7);
               if(param1.$frameInt < 5)
               {
                  if(param1.hitRoleBoolean)
                  {
                     param1.$frameInt = 5;
                  }
               }
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":matrix,
                     "name":"YiDaoZhan",
                     "type":"SkillJianBa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬踢":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,param1.$speed * 3);
               RoleMathType.stoicType(param1,0,1);
               break;
            case "升空斩":
               RoleMathType.stoicType(param1,3,8);
               if(param1.$frameInt > 3)
               {
                  param1.$jumpBoolean = true;
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,8,param1.$speed);
                  param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,4,8,param1.$speed * 2);
               }
               else
               {
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,3,param1.$speed * 2);
               }
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":matrix,
                     "name":"ShangZhan",
                     "type":"SkillJianBa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y - 40,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬步":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,5,param1.$speed * 4);
               RoleMathType.alphaFrame(param1);
               RoleMathType.stoicType(param1,2,4);
               break;
            case "剑葬":
               RoleMathType.setPhoto(param1,"HREDjianba3");
               RoleMathType.stoicType(param1,0,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,8,4);
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"JianZhang",
                     "type":"SkillJianBa",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 80 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,5,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,13,15,8);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,20,22,8);
               break;
            case "抓取":
               if(param1.$frameInt == 0)
               {
                  param1.$ob["ZQ"] = null;
               }
               if(param1.$frameInt == 7 && param1.$ob["ZQ"] is SystemGameRole)
               {
                  param1.$ob["ZQ"].frameString = "受伤";
                  param1.$ob["ZQ"].$x = param1.$x - param1.$scaleX * 10;
                  param1.$ob["ZQ"].$y = param1.$y;
                  param1.$ob["ZQ"].fuckY = 20;
                  param1.$ob["ZQ"].rigid = 30;
                  param1.$ob["ZQ"].$jumpNumMath = 0;
                  param1.$ob["ZQ"].$tx = 4 * -param1.$scaleX;
               }
               break;
            case "灵压":
               RoleMathType.setPhoto(param1,"HREDjianba2");
               RoleMathType.stoicType(param1,0,2);
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"LingYa",
                     "type":"SkillJianBa",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               else if(param1.$frameInt == 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"GuiTou",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "挑空":
               RoleMathType.stoicType(param1,0,1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,5,2);
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":matrix,
                     "name":"YueGuang",
                     "type":"SkillJianBa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
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
            case "刺突":
            case "瞬踢":
               GameData.$KaTime = 10;
               break;
            case "抓取":
               GameData.$KaTime = 10;
               param1.$ob["ZQ"] = param2;
               param1.$ob["ZQ"].$x = param1.$x + param1.$scaleX * 20;
               param1.$ob["ZQ"].$y = param1.$y;
               param1.$ob["ZQ"].frameString = "受伤";
               param1.$ob["ZQ"].$jumpNumMath = 0;
         }
      }
   }
}

