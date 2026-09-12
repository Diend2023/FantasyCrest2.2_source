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
   
   public class LaoDie
   {
      
      public static var $ob:Object = new Object();
      
      public function LaoDie()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/laodie.png","photo","LaoDie");
         SystemLoading.addTask("File/indexFile/img/role/laodie.xml","text","LaoDie");
         SystemLoadType.loadRoleSkillData("LD/D1");
         SystemLoadType.loadRoleSkillData("LD/C");
         SystemLoadType.loadRoleSkillData("LD/B");
         SystemLoadType.loadRoleSkillData("LD/BO");
         SystemLoadType.loadRoleSkillData("LD/T");
         SystemLoadType.loadRoleSkillData("LD/F");
         SystemLoadType.loadRoleSkillData("LD/D2");
         SystemLoadType.loadRoleSkillData("LD/L");
         SystemLoadType.loadRoleSkillData("LD/X");
         SystemLoadType.loadRoleSkillData("LD/Boom");
         SystemLoadType.loadRoleSkillData("LD/B2");
         SystemLoadType.loadRoleSkillData("LD/Q");
         SystemLoadType.loadRoleSkillData("LD/H");
         SystemLoadType.loadRoleSkillData("Buff1");
      }
      
      public static function init() : void
      {
         $ob["薙刀．裂"] = {
            "cd":4,
            "w":80,
            "h":100,
            "s":"W",
            "key":Keyboard.J
         };
         $ob["兜割"] = {
            "cd":12,
            "w":200,
            "s":"S",
            "key":Keyboard.J
         };
         $ob["震皇"] = {
            "cd":4,
            "w":150,
            "h":200,
            "s":"W",
            "key":Keyboard.U
         };
         $ob["薙刀．地響"] = {
            "cd":6,
            "w":200,
            "s":"S",
            "key":Keyboard.U
         };
         $ob["薙刀．斷"] = {
            "cd":6,
            "w":300,
            "h":100,
            "s":"WW",
            "key":Keyboard.U
         };
         $ob["薙刀．獅子"] = {
            "cd":4,
            "w":250,
            "s":"AA",
            "key":Keyboard.U
         };
         $ob["天地鳴動"] = {
            "cd":8,
            "w":30,
            "s":"S",
            "key":Keyboard.I
         };
         $ob["薙刀．旋"] = {
            "cd":10,
            "w":150,
            "s":"W",
            "key":Keyboard.I
         };
         $ob["薙刀．震裂斬"] = {
            "cd":30,
            "mp":200,
            "w":300,
            "s":"S",
            "key":Keyboard.O
         };
         $ob["震貫"] = {
            "cd":5,
            "w":150,
            "s":"",
            "key":Keyboard.U
         };
         $ob["霸王色霸氣"] = {
            "cd":20,
            "w":1000,
            "s":"",
            "key":Keyboard.P
         };
         $ob["激震"] = {
            "cd":3,
            "w":200,
            "s":"",
            "k":true,
            "key":Keyboard.U
         };
         $ob["海震"] = {
            "cd":40,
            "mp":300,
            "w":200,
            "s":"W",
            "key":Keyboard.O
         };
         $ob["霸王色[白]"] = {
            "cd":30,
            "mp":250,
            "w":200,
            "s":"",
            "key":Keyboard.O
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
                        return "薙刀．裂";
                     case "S":
                        return "兜割";
                     default:
                        break loop2;
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
                        return "震皇";
                     case "S":
                        return "薙刀．地響";
                     case "WW":
                        return "薙刀．斷";
                     case "AA":
                     case "DD":
                        return "薙刀．獅子";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "S":
                        return "天地鳴動";
                     case "W":
                        return "薙刀．旋";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "W":
                        return "海震";
                     case "S":
                        return "薙刀．震裂斬";
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
               return "瞬步";
            case Keyboard.U:
               return "震貫";
            case Keyboard.I:
               break;
            case Keyboard.O:
               return "霸王色[白]";
            case Keyboard.P:
               return "霸王色霸氣";
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
               return "激震";
            case Keyboard.I:
               return "none";
            case Keyboard.O:
               return "none";
            case Keyboard.P:
               return "none";
            default:
               return "none";
         }
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
         if(param1.$frameInt == 1)
         {
            param1.stoic = 0.3;
         }
         switch(param1.$frameString)
         {
            case "霸王色[白]":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 1;
                  ComponentResourcesManage.$word.allColor(16777215,0.2);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "name":"LD/B",
                     "type":"SkillLaoDie",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 2.5
                  });
               }
               break;
            case "霸王色霸氣":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"Buff1",
                     "type":"SkillLaoDie",
                     "fuck":0,
                     "time":400,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "海震":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "name":"LD/H",
                     "type":"SkillLaoDie",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 3
                  });
               }
               break;
            case "薙刀．震裂斬":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":10,
                     "ka":[5,10],
                     "name":"LD/Q",
                     "type":"SkillLaoDie",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "天地鳴動":
               if(param1.$ob.see is SystemGameRole)
               {
                  if(param1.$frameInt < 4)
                  {
                     param1.$frameInt = 4;
                  }
                  if(param1.$frameInt < 6)
                  {
                     param1.$ob.see.rigid = 30;
                     param1.$ob.see.$jumpForFuckBoolean = true;
                     param1.$ob.see.$x = param1.$x + 15 * param1.$scaleX;
                     param1.$ob.see.$y = param1.$y - 80;
                  }
                  else if(param1.$frameInt == 6)
                  {
                     _loc2_ = param1.$ob.see as SystemGameRole;
                     _loc2_.sethp(_loc2_.gethp - param1.Dam * 1.3);
                     _loc2_.rigid = 30;
                     _loc2_.$tx = 8 * param1.$scaleX;
                     _loc2_.$ob.see.fuckY = -15;
                  }
               }
               else
               {
                  param1.$ob.see = param1.hitGameRole;
                  if(param1.$frameInt == 4)
                  {
                     param1.stopSkill();
                  }
               }
               break;
            case "薙刀．旋":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"LD/X",
                     "type":"SkillLaoDie",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "激震":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "fps":1,
                     "name":"LD/B2",
                     "type":"SkillLaoDie",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y - 50,
                     "scaleX":param1.$scaleX * 1.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "ka":[1,10],
                     "name":"LD/L",
                     "type":"SkillLaoDie",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "薙刀．獅子":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,5,param1.$speed * 4);
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LD/D2",
                     "type":"SkillLaoDie",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "薙刀．斷":
               param1.$jumpBoolean = true;
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,5,param1.$speed * 3);
               param1.$y += -FrameMath.mathFrameToX(param1.$frameInt,0,3,param1.$speed * 3);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,3,6,param1.$speed * 3);
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LD/F",
                     "type":"SkillLaoDie",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "down":true,
                     "ka":[1,10],
                     "name":"LD/BO",
                     "type":"SkillLaoDie",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 70 * param1.$scaleX,
                     "y":param1.$bit.y + 20,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "震貫":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LD/T",
                     "type":"SkillLaoDie",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "震皇":
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LD/BO",
                     "type":"SkillLaoDie",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 110,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "薙刀．地響":
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "down":true,
                     "ka":[1,10],
                     "name":"LD/BO",
                     "type":"SkillLaoDie",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "兜割":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,6,param1.$speed * 4);
               if(param1.$ob.see is SystemGameRole)
               {
                  if(param1.$ob.see.$god <= 0)
                  {
                     param1.$ob.see.$x = param1.$x;
                     param1.$ob.see.$y = param1.$y - 5;
                     param1.$ob.see.stopSkill();
                     param1.$ob.see.rigid = 30;
                     param1.$ob.see.$jumpForFuckBoolean = true;
                     ComponentResourcesManage.$word.$map.setZhen = 0.2;
                     if(param1.$frameInt < 7)
                     {
                        param1.$frameInt = 7;
                     }
                  }
               }
               else
               {
                  param1.$ob.see = param1.hitGameRole;
               }
               if(param1.$frameInt == 13 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LD/B",
                     "type":"SkillLaoDie",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "薙刀．裂":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "goy":-5,
                     "ka":[3,10],
                     "name":"LD/C",
                     "type":"SkillLaoDie",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,param1.$speed * 4);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,4,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,10,12,8);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,16,20,10);
               if(param1.$frameInt == 19 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LD/D1",
                     "type":"SkillLaoDie",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "龍鳴閃":
               ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                  "name":"BoYin",
                  "type":"SkillLaoDie",
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

