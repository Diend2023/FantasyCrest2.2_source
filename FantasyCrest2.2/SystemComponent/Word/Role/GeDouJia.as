package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class GeDouJia
   {
      
      public static var $ob:Object = new Object();
      
      public static var matrix:Array = new Array();
      
      public function GeDouJia()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["抓取"] = {
            "cd":6,
            "w":60,
            "s":"W",
            "key":Keyboard.J,
            "g":"擒月炎"
         };
         $ob["背摔"] = {
            "cd":6,
            "w":60,
            "s":"S",
            "key":Keyboard.J
         };
         $ob["勾魂"] = {
            "cd":6,
            "w":100,
            "s":"S",
            "key":Keyboard.U
         };
         $ob["升龙拳"] = {
            "cd":12,
            "w":100,
            "s":"W",
            "key":Keyboard.U
         };
         $ob["地裂"] = {
            "cd":12,
            "w":300,
            "s":"W",
            "key":Keyboard.I
         };
         $ob["袭击"] = {
            "cd":6,
            "w":100,
            "s":"S",
            "key":Keyboard.I,
            "g":"砖袭"
         };
         $ob["瞬步"] = {
            "cd":0,
            "w":500,
            "s":"",
            "key":Keyboard.L
         };
         $ob["地狱杀"] = {
            "cd":30,
            "mp":300,
            "w":500,
            "s":"S",
            "key":Keyboard.O
         };
         $ob["霸体"] = {
            "cd":20,
            "w":500,
            "s":"",
            "key":Keyboard.P,
            "g":"绝对霸体"
         };
         $ob["铁山靠"] = {
            "cd":8,
            "w":150,
            "s":"",
            "key":Keyboard.U
         };
         $ob["重拳"] = {
            "cd":8,
            "w":200,
            "s":"",
            "key":Keyboard.I,
            "g":"瞬拳"
         };
         $ob["强力腿"] = {
            "cd":25,
            "mp":250,
            "w":500,
            "s":"",
            "key":Keyboard.O,
            "g":"重踢"
         };
         $ob["空中攻击"] = {
            "cd":0,
            "k":true,
            "h":100,
            "w":100,
            "s":"",
            "key":Keyboard.J
         };
         $ob["普通攻击"] = {
            "cd":0,
            "w":500,
            "s":"",
            "key":Keyboard.J
         };
      }
      
      public static function loadData() : void
      {
         matrix = matrix.concat([0,0,1,0,0]);
         matrix = matrix.concat([0,0,0.7,0,0]);
         matrix = matrix.concat([0,0,0,0,0]);
         matrix = matrix.concat([0,0,0,1,0]);
         SystemLoading.addTask("File/indexFile/img/role/gedoujia.png","photo","GeDouJia");
         SystemLoading.addTask("File/indexFile/img/role/gedoujia.xml","text","GeDouJia");
         SystemLoadType.loadRoleSkillData("LanGuang");
         SystemLoadType.loadRoleSkillData("JX/D");
         SystemLoadType.loadRoleSkillData("XD/Bao");
         SystemLoadType.loadRoleSkillData("GDJ/D");
         SystemLoadType.loadRoleSkillData("GDJ/S");
         SystemLoadType.loadRoleSkillData("GDJ/B");
         SystemLoadType.loadRoleSkillData("GDJ/C");
         SystemLoadType.loadRoleSkillData("GDJ/C");
         SystemLoadType.loadRoleSkillData("DB/QC");
         SystemLoadType.loadRoleSkillData("GDJ/A");
         SystemLoadType.loadRoleSkillData("GDJ/Z");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_axkick_01.mp3","sound","gedoujia_ft_axkick_01");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_axkick_02.mp3","sound","gedoujia_ft_axkick_02");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_bast.mp3","sound","gedoujia_ft_bast");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_crazy_volcan.mp3","sound","gedoujia_ft_crazy_volcan");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_destruction_01.mp3","sound","gedoujia_ft_destruction_01");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_destruction_02.mp3","sound","gedoujia_ft_destruction_02");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_destruction_03.mp3","sound","gedoujia_ft_destruction_03");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_energy_shot.mp3","sound","gedoujia_ft_energy_shot");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_ffist_buff.mp3","sound","gedoujia_ft_ffist_buff");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_hoshin.mp3","sound","gedoujia_ft_hoshin");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_inhaledenergy_01.mp3","sound","gedoujia_ft_inhaledenergy_01");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_jumpkick_02.mp3","sound","gedoujia_ft_jumpkick_02");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_nen_cannon_shot.mp3","sound","gedoujia_ft_nen_cannon_shot");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_nen_dragon.mp3","sound","gedoujia_ft_nen_dragon");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_poisonsnake.mp3","sound","gedoujia_ft_poisonsnake");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_sjh.mp3","sound","gedoujia_ft_sjh");
         SystemLoading.addTask("File/indexFile/sound/role/gedoujia/ft_spx_crash.mp3","sound","gedoujia_ft_spx_crash");
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
                        return "抓取";
                     case "S":
                        return "背摔";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "S":
                        return "勾魂";
                     case "W":
                        return "升龙拳";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        return "地裂";
                     case "S":
                        return "袭击";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "S":
                        return "地狱杀";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.P:
                  return "霸体";
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
               return "铁山靠";
            case Keyboard.I:
               return "重拳";
            case Keyboard.O:
               return "强力腿";
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
               return "空中攻击";
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
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         var _loc2_:SystemGameRole = null;
         if(!param1.$jumpBoolean)
         {
            param1.$y += param1.Speed;
         }
         if(param1.$frameInt == 0)
         {
            param1.$ob.see = null;
         }
         else if(param1.$ob.see is SystemGameRole)
         {
            param1.$ob.see.$jumpNumMath = 0;
         }
         switch(param1.$frameString)
         {
            case "勾魂":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":matrix,
                     "name":"GDJ/Z",
                     "type":"SkillGeDouJia",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "袭击":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":matrix,
                     "name":"GDJ/A",
                     "type":"SkillGeDouJia",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "霸体":
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 5;
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":matrix,
                     "name":"DB/QC",
                     "type":"SkillGeDouJia",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.6
                  });
               }
               break;
            case "重拳":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,8);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.2;
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"GDJ/C",
                     "type":"SkillGeDouJia",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "强力腿":
               param1.stoic = 0.2;
               if(param1.$frameInt == 0 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"GDJ/B",
                     "type":"SkillGeDouJia",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y + 20,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "升龙拳":
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,4,8,-15);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,8,12,-4);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"GDJ/S",
                     "type":"SkillGeDouJia",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "地裂":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,7,5);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,0,3,-12);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,4,7,12);
               if(param1.$jumpBoolean && param1.$frameInt == 6)
               {
                  param1.$frameInt = 4;
               }
               else if(!param1.$jumpBoolean && param1.$frameInt >= 4 && param1.$frameInt < 6)
               {
                  param1.$frameInt = 6;
               }
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "fps":1,
                     "name":"GDJ/D",
                     "type":"SkillGeDouJia",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 50 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "地狱杀":
               param1.stoic = 0.2;
               if(param1.$ob.see is SystemGameRole)
               {
                  ComponentResourcesManage.$word.$elements.addChild(param1);
                  param1.$ob.see.$stoic = 0;
                  param1.$down = false;
                  param1.$ob.see.stopSkill();
                  if(param1.$frameInt >= 3 && param1.$frameInt < 24)
                  {
                     param1.$ob.see.rigid = 30;
                     param1.$ob.see.$x = param1.$x + 10 * param1.$scaleX;
                     param1.$ob.see.$y = param1.$y;
                  }
                  if((param1.$frameInt == 3 || param1.$frameInt == 9 || param1.$frameInt == 12 || param1.$frameInt == 6) && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$word.$map.setZhen = 0.2;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "name":"XD/Bao",
                        "type":"SkillGeDouJia",
                        "fuck":999,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 10 * param1.$scaleX,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  else if(param1.$frameInt == 24 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$word.$map.setZhen = 0.2;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "name":"XD/Bao",
                        "type":"SkillGeDouJia",
                        "fuck":0,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 10 * param1.$scaleX,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 2
                     });
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "name":"GDJ/D",
                        "type":"SkillGeDouJia",
                        "fuck":999,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 10 * param1.$scaleX,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
               }
               else if(param1.$frameInt == 2)
               {
                  param1.stopSkill();
               }
               else
               {
                  param1.$ob.see = param1.hitGameRole;
               }
               break;
            case "抓取":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,1,10);
               if(param1.$ob.see is SystemGameRole && param1.$frameInt < 7)
               {
                  ComponentResourcesManage.$word.$elements.addChild(param1);
                  param1.$ob.see.$stoic = 0;
                  param1.$ob.see.stopSkill();
                  if(param1.$frameInt >= 3)
                  {
                     param1.$ob.see.rigid = 30;
                     param1.$ob.see.$x = param1.$x + 30 * param1.$scaleX;
                     param1.$ob.see.$y = param1.$y - 30;
                  }
                  if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$word.$map.setZhen = 0.2;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "name":"XD/Bao",
                        "type":"SkillGeDouJia",
                        "fuck":999,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 40 * param1.$scaleX,
                        "y":param1.$bit.y - 70,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
               }
               else if(param1.$frameInt == 2)
               {
                  param1.stopSkill();
               }
               else
               {
                  param1.stoic = 0.2;
                  param1.$ob.see = param1.hitGameRole;
               }
               break;
            case "背摔":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,1,10);
               _loc2_ = param1.hitGameRole;
               if(_loc2_ is SystemGameRole)
               {
                  ComponentResourcesManage.$word.$elements.addChild(param1);
                  _loc2_.$stoic = 0;
                  _loc2_.stopSkill();
                  if(param1.$frameInt < 3)
                  {
                     param1.$frameInt = 3;
                     _loc2_.$x = param1.$x + 20 * param1.$scaleX;
                  }
                  else if(param1.$frameInt == 5)
                  {
                     _loc2_.$x = param1.$x;
                     _loc2_.$y = param1.$y - 30;
                     _loc2_.rigid = 30;
                  }
                  else if(param1.$frameInt == 6)
                  {
                     _loc2_.$x = param1.$x - 40 * param1.$scaleX;
                     _loc2_.$y = param1.$y;
                     _loc2_.rigid = 30;
                  }
                  if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$word.$map.setZhen = 0.2;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "name":"JX/D",
                        "type":"SkillGeDouJia",
                        "fuck":999,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x - 40 * param1.$scaleX,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
               }
               if(param1.$frameInt == 2)
               {
                  param1.stopSkill();
               }
               break;
            case "铁山靠":
               if(param1.$frameInt == 0)
               {
                  param1.stoic = 0.2;
               }
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,5,5);
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LanGuang",
                     "type":"SkillGeDouJia",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y - 18,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬步":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,6,param1.Speed * 4);
               RoleMathType.alphaFrame(param1);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,6,4);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,15,17,10);
               break;
            case "空中攻击":
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

