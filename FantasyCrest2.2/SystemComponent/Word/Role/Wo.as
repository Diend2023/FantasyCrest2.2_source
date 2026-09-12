package SystemComponent.Word.Role
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.Freak.Freak_ShuiSheng;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.display.BlendMode;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class Wo
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function Wo()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/wo.png","photo","Wo");
         SystemLoading.addTask("File/indexFile/img/role/wo.xml","text","Wo");
         SystemLoadType.loadRoleSkillData("BJR/B");
         SystemLoadType.loadRoleSkillData("BJR/S");
         SystemLoadType.loadRoleSkillData("BJR/D");
         SystemLoadType.loadRoleSkillData("BJR/F");
         SystemLoadType.loadRoleSkillData("BJR/X");
         SystemLoadType.loadRoleSkillData("BaoFa");
         SystemLoadType.loadRoleSkillData("SuChuan");
         SystemLoadType.loadRoleSkillData("BJR/N");
         SystemLoadType.loadRoleSkillData("BJR/Y");
         SystemLoadType.loadRoleSkillData("XD/Bao");
         SystemLoadType.loadRoleSkillData("SiQi");
         SystemLoadType.loadRoleSkillData("JL/A");
         SystemLoadType.loadRoleSkillData("BJR/A");
         SystemLoadType.loadRoleSkillData("BJR/J");
         SystemLoading.addTask("File/indexFile/sound/role/wo/DOGOOD.mp3","sound","wo_DOGOOD");
         SystemLoading.addTask("File/indexFile/sound/role/wo/GO.mp3","sound","wo_GO");
         SystemLoading.addTask("File/indexFile/sound/role/wo/H1.mp3","sound","wo_H1");
         SystemLoading.addTask("File/indexFile/sound/role/wo/H2.mp3","sound","wo_H2");
         SystemLoading.addTask("File/indexFile/sound/role/wo/HUIXUAN.mp3","sound","wo_HUIXUAN");
         SystemLoading.addTask("File/indexFile/sound/role/wo/NIAO.mp3","sound","wo_NIAO");
         SystemLoading.addTask("File/indexFile/sound/role/wo/SIYAN.mp3","sound","wo_SIYAN");
         SystemLoading.addTask("File/indexFile/sound/role/wo/YUAN.mp3","sound","wo_YUAN");
         Freak_ShuiSheng.loadData();
      }
      
      public static function init() : void
      {
         $ob["龙卷水"] = {
            "cd":6,
            "w":100,
            "s":"S",
            "key":Keyboard.J
         };
         $ob["丫"] = {
            "cd":3,
            "w":140,
            "s":"W",
            "key":Keyboard.U,
            "g":"青蓝勾拳"
         };
         $ob["连环刃"] = {
            "cd":2,
            "w":70,
            "s":"S",
            "key":Keyboard.U,
            "g":"雨影流光"
         };
         $ob["回旋"] = {
            "cd":6,
            "w":300,
            "s":"A",
            "key":Keyboard.I,
            "g":"苍蓝刀.旋潮"
         };
         $ob["甩刀"] = {
            "cd":6,
            "w":300,
            "s":"S",
            "key":Keyboard.I,
            "g":"苍蓝刀.引流"
         };
         $ob["蓝翼"] = {
            "cd":35,
            "mp":300,
            "w":300,
            "s":"W",
            "key":Keyboard.O,
            "g":"雨匣.青鸟"
         };
         $ob["速标"] = {
            "cd":6,
            "w":200,
            "s":"",
            "key":Keyboard.U,
            "g":"雨转刃"
         };
         $ob["甩标"] = {
            "cd":6,
            "w":200,
            "s":"",
            "key":Keyboard.I,
            "g":"旋风雨转刃"
         };
         $ob["水の力"] = {
            "cd":20,
            "mp":200,
            "w":250,
            "s":"",
            "key":Keyboard.O,
            "g":"水之力.冲崩"
         };
         $ob["水神"] = {
            "cd":60,
            "w":1000,
            "s":"",
            "key":Keyboard.P,
            "g":"雨匣.雨海豚"
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
         $mxx = $mxx.concat([0.3,0,0,0,0]);
         $mxx = $mxx.concat([0.5,0.3,0,0,0]);
         $mxx = $mxx.concat([1,0.6,0.5,0.3,0.2]);
         $mxx = $mxx.concat([0.8,0.6,0.5,0.3,0.2]);
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
                        break;
                     case "S":
                        return "龙卷水";
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
                        return "丫";
                     case "S":
                        return "连环刃";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "D":
                     case "A":
                        return "回旋";
                     case "S":
                        return "甩刀";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "W":
                        return "蓝翼";
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
               return "速标";
            case Keyboard.I:
               return "甩标";
            case Keyboard.O:
               return "水の力";
            case Keyboard.P:
               if(!(ComponentResourcesManage.$word.$elementsOb["Freak" + param1.name + "shuisheng"] is SystemGameRole))
               {
                  return "水神";
               }
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
         var _loc2_:Array = null;
         var _loc3_:Point = null;
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
            case "回旋":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"BJR/J",
                     "ka":[1,10],
                     "type":"SkillWo",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "水神":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.askElements("role",{
                     "hp":40 * 15,
                     "point":new Point(param1.$x,param1.$y),
                     "name":"Freak" + param1.name + "shuisheng",
                     "troops":param1.$troops,
                     "target":"Freak_ShuiSheng",
                     "id":-1
                  });
               }
               break;
            case "丫":
               if(param1.$frameInt >= 3)
               {
                  param1.$jumpBoolean = true;
               }
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"JL/A",
                     "ka":[1,10],
                     "type":"SkillWo",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 80 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,3,6,-5);
               break;
            case "龙卷水":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"SiQi",
                     "type":"SkillWo",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "蓝翼":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "gox":5,
                     "goy":-5,
                     "name":"BJR/N",
                     "type":"SkillWo",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "水の力":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"BaoFa",
                     "type":"SkillWo",
                     "fuck":0,
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
                     "color":$mxx,
                     "name":"SuChuan",
                     "type":"SkillWo",
                     "ka":[1,10],
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,7,12,param1.$speed * 4);
               break;
            case "甩标":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "hp":1,
                     "troops":param1.$troops,
                     "gox":15,
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"BJR/X",
                     "type":"SkillWo",
                     "fuck":6,
                     "time":100,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.8
                  });
               }
               break;
            case "甩刀":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"BJR/F",
                     "type":"SkillWo",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "连环刃":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[6,10],
                     "name":"BJR/D",
                     "type":"SkillWo",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "速标":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"BJR/S",
                     "type":"SkillWo",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "空中攻击":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  _loc2_ = param1.hitRoleAndSkill(3000,true);
                  _loc3_ = SkillMath.MoveDirection(_loc2_[int(Math.random() * _loc2_.length)],15);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "gox":_loc3_.x,
                     "goy":-_loc3_.y - 2,
                     "ka":[1,10],
                     "name":"BJR/B",
                     "type":"SkillWo",
                     "fuck":99,
                     "time":100,
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
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,2,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,9,8);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,12,15,8);
               if(param1.$frameInt == 19 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LD/D1",
                     "type":"SkillWo",
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
                  "type":"SkillWo",
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

