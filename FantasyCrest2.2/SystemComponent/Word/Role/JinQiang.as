package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class JinQiang
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function JinQiang()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/jinqiang.png","photo","JinQiang");
         SystemLoading.addTask("File/indexFile/img/role/jinqiang.xml","text","JinQiang");
         SystemLoadType.loadRoleSkillData("BJR/F");
         SystemLoadType.loadRoleSkillData("TR/Z");
         SystemLoadType.loadRoleSkillData("GJS/Z");
         SystemLoadType.loadRoleSkillData("GJS/T");
         SystemLoadType.loadRoleSkillData("JiuTouLong");
         SystemLoadType.loadRoleSkillData("YiDaoZhan");
         SystemLoadType.loadRoleSkillData("QPL/D");
         SystemLoadType.loadRoleSkillData("TuLongShan");
         SystemLoadType.loadRoleSkillData("HF/O");
         SystemLoadType.loadRoleSkillData("BJR/D");
         SystemLoadType.loadRoleSkillData("BJR/J");
         SystemLoadType.loadRoleSkillData("B/F");
         SystemLoadType.loadRoleSkillData("AS/huo");
         SystemLoadType.loadRoleSkillData("NZ/Q");
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
         $ob["跳跃斩"] = {
            "cd":7,
            "w":200,
            "h":200,
            "s":"W",
            "key":Keyboard.U
         };
         $ob["抽斩"] = {
            "cd":7,
            "w":100,
            "s":"S",
            "key":Keyboard.U
         };
         $ob["重击"] = {
            "cd":6,
            "w":200,
            "s":"SS",
            "key":Keyboard.U
         };
         $ob["上挑"] = {
            "cd":6,
            "w":50,
            "s":"W",
            "key":Keyboard.I
         };
         $ob["地斩"] = {
            "cd":6,
            "w":200,
            "s":"S",
            "key":Keyboard.I
         };
         $ob["剑气斩"] = {
            "cd":30,
            "mp":200,
            "w":500,
            "s":"S",
            "key":Keyboard.O
         };
         $ob["二刀流"] = {
            "cd":8,
            "mp":200,
            "w":100,
            "s":"S",
            "key":Keyboard.J
         };
         $ob["重斩"] = {
            "cd":4,
            "w":170,
            "s":"",
            "key":Keyboard.U
         };
         $ob["冲刺斩"] = {
            "cd":6,
            "w":200,
            "s":"",
            "key":Keyboard.I
         };
         $ob["幻影乱斩"] = {
            "cd":35,
            "mp":200,
            "w":150,
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
                        break;
                     case "S":
                        return "二刀流";
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
                        return "跳跃斩";
                     case "S":
                        return "抽斩";
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
                        return "地斩";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "S":
                        return "剑气斩";
                     case "W":
                        return "none";
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
               return "重斩";
            case Keyboard.I:
               return "冲刺斩";
            case Keyboard.O:
               return "幻影乱斩";
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
            case "地斩":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"B/F",
                     "type":"SkillJinQiang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 10 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "抽斩":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"BJR/J",
                     "type":"SkillJinQiang",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 10 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "二刀流":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,12,3);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":3,
                     "name":"BJR/D",
                     "type":"SkillJinQiang",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 10 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 12 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"QPL/D",
                     "type":"SkillJinQiang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 10 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "剑气斩":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "gox":6,
                     "name":"TuLongShan",
                     "type":"SkillJinQiang",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 10 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "gox":6,
                     "name":"HF/O",
                     "type":"SkillJinQiang",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 35 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "重斩":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"YiDaoZhan",
                     "type":"SkillJinQiang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 10 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "上挑":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,5,6);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"GJS/T",
                     "type":"SkillJinQiang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 10 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "跳跃斩":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,7,12,6);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,7,8,param1.$speed * 5);
               param1.$jumpBoolean = param1.$frameInt >= 7;
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"QPL/D",
                     "type":"SkillJinQiang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 10 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"YiDaoZhan",
                     "type":"SkillJinQiang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 10 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "冲刺斩":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,5,param1.$speed * 6);
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":6,
                     "ka":[3,10],
                     "name":"JiuTouLong",
                     "type":"SkillJinQiang",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 10 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "幻影乱斩":
               param1.$fpsMath = param1.$fps;
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[7,10],
                     "name":"TR/Z",
                     "type":"SkillJinQiang",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 10 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 33 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"GJS/Z",
                     "type":"SkillJinQiang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "空中攻击":
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,3,param1.$speed * 4);
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[0,10],
                     "name":"BJR/F",
                     "type":"SkillJinQiang",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 40 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,2,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,4,3);
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
               ComponentResourcesManage.$Ob["SystemJinQiangrd"].askElements("skill",{
                  "name":"BoYin",
                  "type":"SkillJinQiang",
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

