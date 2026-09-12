package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import flash.ui.Keyboard;
   
   public class HuoYuanSu
   {
      
      public static var $ob:Object = new Object();
      
      public static var matrix:Array = new Array();
      
      public function HuoYuanSu()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["爆发"] = {
            "cd":10,
            "mp":50,
            "w":260,
            "s":"S",
            "key":Keyboard.U,
            "g":"拉格纳罗斯之怒"
         };
         $ob["重力砍"] = {
            "cd":6,
            "mp":50,
            "w":100,
            "s":"S",
            "key":Keyboard.I,
            "g":"火焰重斩"
         };
         $ob["爆炸"] = {
            "cd":30,
            "mp":200,
            "w":400,
            "s":"S",
            "key":Keyboard.O,
            "g":"末日之境"
         };
         $ob["爆刃"] = {
            "cd":8,
            "w":200,
            "s":"",
            "key":Keyboard.U,
            "g":"熔岩暴斩"
         };
         $ob["飞炎"] = {
            "cd":10,
            "mp":50,
            "w":600,
            "h":100,
            "s":"",
            "key":Keyboard.I,
            "g":"旋转飞炎刀"
         };
         $ob["无法控制"] = {
            "cd":35,
            "mp":300,
            "w":1000,
            "s":"",
            "key":Keyboard.O,
            "g":"熔岩轰击"
         };
         $ob["普通攻击"] = {
            "cd":0,
            "mp":0,
            "w":500,
            "s":"",
            "key":Keyboard.J
         };
      }
      
      public static function loadData() : void
      {
         matrix = matrix.concat([0,0,1,0,0]);
         matrix = matrix.concat([0,0,0.3,0,0]);
         matrix = matrix.concat([0,0,0.2,0,0]);
         matrix = matrix.concat([0,0,0,1,0]);
         SystemLoading.addTask("File/indexFile/img/role/huoyuansu.png","photo","HuoYuanSu");
         SystemLoading.addTask("File/indexFile/img/role/huoyuansu.xml","text","HuoYuanSu");
         SystemLoadType.loadRoleSkillData("BaoQi");
         SystemLoadType.loadRoleSkillData("AS/huo");
         SystemLoadType.loadRoleSkillData("BaoFa");
         SystemLoadType.loadRoleSkillData("BJR/X");
         SystemLoadType.loadRoleSkillData("AS/W");
         SystemLoadType.loadRoleSkillData("YiDaoZhan");
         SystemLoadType.loadRoleSkillData("JL/Q");
         SystemLoadType.loadRoleSkillData("JL/B");
         SystemLoadType.loadRoleSkillData("HuaJi");
         SystemLoading.addTask("File/indexFile/sound/role/huoyuansu/drgm_die.mp3","sound","huoyuansu_drgm_die");
         SystemLoading.addTask("File/indexFile/sound/role/huoyuansu/drgm_dmg.mp3","sound","huoyuansu_drgm_dmg");
         SystemLoading.addTask("File/indexFile/sound/role/huoyuansu/expeller_amb_03.mp3","sound","huoyuansu_expeller_amb_03");
         SystemLoading.addTask("File/indexFile/sound/role/huoyuansu/golem_soul.mp3","sound","huoyuansu_golem_soul");
         SystemLoading.addTask("File/indexFile/sound/role/huoyuansu/hunt_breath.mp3","sound","huoyuansu_hunt_breath");
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
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                     case "S":
                        return "爆发";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                     case "S":
                        return "重力砍";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "S":
                        return "爆炸";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.P:
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
               break;
            case Keyboard.U:
               return "爆刃";
            case Keyboard.I:
               return "飞炎";
            case Keyboard.O:
               return "无法控制";
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
               case Keyboard.U:
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
            case Keyboard.U:
         }
         return "none";
      }
      
      public static function Hurt(param1:SystemGameRole) : int
      {
         switch(param1.$frameString)
         {
            case "死氣亂擊":
               return 10;
            default:
               return 20;
         }
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         RoleMathType.setSpeed(param1,4);
         param1.$ob.aimode = "K";
         if(param1.$jumpForFuckBoolean)
         {
            param1.$mode = "D";
         }
         else
         {
            param1.$mode = "K";
         }
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "爆炸":
               if(param1.$frameInt > 4)
               {
                  param1.stoic = 0.3;
               }
               if((param1.$frameInt == 4 || param1.$frameInt == 7 || param1.$frameInt == 10 || param1.$frameInt == 13 || param1.$frameInt == 16) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[2,10],
                     "name":"JL/B",
                     "type":"SkillHuoYuanSu",
                     "fuck":6,
                     "time":10,
                     "role":param1,
                     "x":param1.$x + Math.random() * 400 - 200,
                     "y":param1.$y + Math.random() * 200 - 200,
                     "scaleX":param1.$scaleX * 2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[2,10],
                     "name":"JL/B",
                     "type":"SkillHuoYuanSu",
                     "fuck":0,
                     "time":10,
                     "role":param1,
                     "x":param1.$x + Math.random() * 400 - 200,
                     "y":param1.$y + Math.random() * 200 - 200,
                     "scaleX":param1.$scaleX * 2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[2,10],
                     "name":"JL/B",
                     "type":"SkillHuoYuanSu",
                     "fuck":6,
                     "time":10,
                     "role":param1,
                     "x":param1.$x + Math.random() * 400 - 200,
                     "y":param1.$y + Math.random() * 200 - 200,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "无法控制":
               if(param1.$frameInt < 3)
               {
                  param1.stoic = 0.3;
               }
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":3,
                     "goy":-2,
                     "ka":[3,10],
                     "name":"JL/Q",
                     "type":"SkillHuoYuanSu",
                     "fuck":6,
                     "time":100,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 3
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":3,
                     "goy":-2,
                     "ka":[5,10],
                     "name":"JL/Q",
                     "type":"SkillHuoYuanSu",
                     "fuck":0,
                     "time":100,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y + 80,
                     "scaleX":param1.$scaleX * 3
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":3,
                     "goy":-2,
                     "ka":[7,10],
                     "name":"JL/Q",
                     "type":"SkillHuoYuanSu",
                     "fuck":6,
                     "time":100,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y + 160,
                     "scaleX":param1.$scaleX * 3
                  });
               }
               break;
            case "重力砍":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.3;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":matrix,
                     "ka":[1,10],
                     "name":"YiDaoZhan",
                     "type":"SkillHuoYuanSu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "爆刃":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"AS/W",
                     "type":"SkillHuoYuanSu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$x + 100 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "飞炎":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":matrix,
                     "troops":param1.$troops,
                     "hp":1,
                     "gox":15,
                     "ka":[1,10],
                     "name":"BJR/X",
                     "type":"SkillHuoYuanSu",
                     "fuck":6,
                     "time":100,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.8
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"HuaJi",
                     "type":"SkillHuoYuanSu",
                     "troops":param1.$troops,
                     "hp":1,
                     "gox":6,
                     "fuck":0,
                     "time":100,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "爆发":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"BaoFa",
                     "type":"SkillHuoYuanSu",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"BaoQi",
                     "type":"SkillHuoYuanSu",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "普通攻击":
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "查克拉˙伸手擊":
         }
      }
   }
}

