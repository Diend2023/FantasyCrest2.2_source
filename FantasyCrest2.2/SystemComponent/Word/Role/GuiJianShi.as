package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class GuiJianShi
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function GuiJianShi()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/guijianshi.png","photo","GuiJianShi");
         SystemLoading.addTask("File/indexFile/img/role/guijianshi.xml","text","GuiJianShi");
         SystemLoadType.loadRoleSkillData("BJR/D");
         SystemLoadType.loadRoleSkillData("GJS/B");
         SystemLoadType.loadRoleSkillData("GJS/Y");
         SystemLoadType.loadRoleSkillData("GJS/X");
         SystemLoadType.loadRoleSkillData("GJS/BY");
         SystemLoadType.loadRoleSkillData("AS/Boom");
         SystemLoadType.loadRoleSkillData("GJS/K");
         SystemLoadType.loadRoleSkillData("GJS/T");
         SystemLoadType.loadRoleSkillData("GJS/C");
         SystemLoadType.loadRoleSkillData("HuaJi");
         SystemLoadType.loadRoleSkillData("GJS/BING");
         SystemLoadType.loadRoleSkillData("GJS/Z");
         SystemLoadType.loadRoleSkillData("AS/huo");
         SystemLoadType.loadRoleSkillData("NZ/Q");
         SystemLoading.addTask("File/indexFile/sound/role/guijianshi/h1.mp3","sound","guijianshi_h1");
         SystemLoading.addTask("File/indexFile/sound/role/guijianshi/h2.mp3","sound","guijianshi_h2");
         SystemLoading.addTask("File/indexFile/sound/role/guijianshi/h3.mp3","sound","guijianshi_h3");
         SystemLoading.addTask("File/indexFile/sound/role/guijianshi/sm_bal2.mp3","sound","guijianshi_sm_bal2");
         SystemLoading.addTask("File/indexFile/sound/role/guijianshi/sm_gue_01.mp3","sound","guijianshi_sm_gue_01");
         SystemLoading.addTask("File/indexFile/sound/role/guijianshi/sm_hitback.mp3","sound","guijianshi_sm_hitback");
         SystemLoading.addTask("File/indexFile/sound/role/guijianshi/sm_kalra_fin.mp3","sound","guijianshi_sm_kalra_fin");
         SystemLoading.addTask("File/indexFile/sound/role/guijianshi/sm_mengryong_start.mp3","sound","guijianshi_sm_mengryong_start");
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
         $ob["爆发"] = {
            "cd":6,
            "w":200,
            "h":200,
            "s":"W",
            "key":Keyboard.U,
            "g":"无双波"
         };
         $ob["波动眼之翼"] = {
            "cd":12,
            "w":100,
            "s":"S",
            "key":Keyboard.U,
            "g":"暗天波动眼"
         };
         $ob["重击"] = {
            "cd":6,
            "w":200,
            "s":"SS",
            "key":Keyboard.U,
            "g":"崩山"
         };
         $ob["上挑"] = {
            "cd":6,
            "w":50,
            "s":"W",
            "key":Keyboard.I,
            "g":"弯月破天击"
         };
         $ob["突刺"] = {
            "cd":6,
            "w":200,
            "s":"S",
            "key":Keyboard.I,
            "g":"踏前刺"
         };
         $ob["冰刃"] = {
            "cd":30,
            "mp":200,
            "w":500,
            "s":"S",
            "key":Keyboard.O,
            "g":"冰刃·波动剑"
         };
         $ob["鬼刃"] = {
            "cd":4,
            "w":70,
            "s":"",
            "key":Keyboard.U,
            "g":"里·鬼剑术"
         };
         $ob["鬼搓"] = {
            "cd":6,
            "w":200,
            "s":"",
            "key":Keyboard.I,
            "g":"破极冰刃"
         };
         $ob["爆炎"] = {
            "cd":35,
            "mp":200,
            "w":350,
            "s":"",
            "key":Keyboard.O,
            "g":"爆炎·波动剑"
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
                        return "爆发";
                     case "S":
                        return "波动眼之翼";
                     case "SS":
                        return "重击";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        return "上挑";
                     case "S":
                        return "突刺";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "S":
                        return "冰刃";
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
               return "鬼刃";
            case Keyboard.I:
               return "鬼搓";
            case Keyboard.O:
               return "爆炎";
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
            case "重击":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"GJS/Z",
                     "type":"SkillGuiJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 60 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "冰刃":
               if((param1.$frameInt == 2 || param1.$frameInt == 4 || param1.$frameInt == 6 || param1.$frameInt == 8 || param1.$frameInt == 10) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"GJS/BING",
                     "type":"SkillGuiJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 60 * param1.$frameInt * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "突刺":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,4,6);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"GJS/C",
                     "type":"SkillGuiJianShi",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "上挑":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"GJS/T",
                     "type":"SkillGuiJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "鬼搓":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[2,10],
                     "name":"GJS/K",
                     "type":"SkillGuiJianShi",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "爆炎":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"GJS/BY",
                     "type":"SkillGuiJianShi",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "name":"AS/Boom",
                     "type":"SkillGuiJianShi",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 350 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "波动眼之翼":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[2,10],
                     "name":"GJS/Y",
                     "type":"SkillGuiJianShi",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "name":"GJS/X",
                     "type":"SkillGuiJianShi",
                     "fuck":6,
                     "time":60,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               break;
            case "爆发":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"GJS/B",
                     "type":"SkillGuiJianShi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "鬼刃":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,17,1);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[6,10],
                     "name":"BJR/D",
                     "type":"SkillGuiJianShi",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 40 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 17 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"HuaJi",
                     "gox":6,
                     "type":"SkillGuiJianShi",
                     "fuck":6,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x + 40 * param1.$scaleX,
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
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,2,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,5,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,7,8,4);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,10,13,4);
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "龍鳴閃":
               ComponentResourcesManage.$Ob["SystemGuiJianShird"].askElements("skill",{
                  "name":"BoYin",
                  "type":"SkillGuiJianShi",
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

