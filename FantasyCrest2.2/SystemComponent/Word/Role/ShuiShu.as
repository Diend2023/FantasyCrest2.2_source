package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class ShuiShu
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function ShuiShu()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/shuishu.png","photo","ShuiShu");
         SystemLoading.addTask("File/indexFile/img/role/shuishu.xml","text","ShuiShu");
         SystemLoadType.loadRoleSkillData("YueGuang");
         SystemLoadType.loadRoleSkillData("XN/K");
         SystemLoadType.loadRoleSkillData("BJR/S");
         SystemLoadType.loadRoleSkillData("XN/X");
         SystemLoadType.loadRoleSkillData("XN/C");
         SystemLoadType.loadRoleSkillData("QPL/D");
         SystemLoadType.loadRoleSkillData("XN/T");
         SystemLoadType.loadRoleSkillData("TianJie");
         SystemLoadType.loadRoleSkillData("PiFeng");
         SystemLoadType.loadRoleSkillData("TuLongShan");
         SystemLoadType.loadRoleSkillData("SuChuan");
         SystemLoadType.loadRoleSkillData("SB/D");
         SystemLoadType.loadRoleSkillData("HF/Z");
         $mxx = $mxx.concat([0.3,0,0,0,0]);
         $mxx = $mxx.concat([0.5,0.3,0,0,0]);
         $mxx = $mxx.concat([1,0.6,0.5,0.3,0.2]);
         $mxx = $mxx.concat([0.8,0.6,0.5,0.3,0.2]);
      }
      
      public static function init() : void
      {
         $ob["瞬挑"] = {
            "cd":5,
            "w":70,
            "h":200,
            "s":"W",
            "key":Keyboard.U,
            "g":"逐浪.水涡"
         };
         $ob["断"] = {
            "cd":5,
            "w":200,
            "s":"S",
            "key":Keyboard.U,
            "g":"断浪.爆花"
         };
         $ob["爆剑"] = {
            "cd":6,
            "w":200,
            "s":"",
            "k":true,
            "key":Keyboard.U,
            "g":"破浪.水纹破"
         };
         $ob["崩山击"] = {
            "cd":6,
            "w":250,
            "s":"S",
            "key":Keyboard.I,
            "g":"逐浪.乘风"
         };
         $ob["空斩"] = {
            "cd":4,
            "w":70,
            "s":"W",
            "key":Keyboard.I,
            "g":"断浪.水月"
         };
         $ob["瞬翼斩"] = {
            "cd":35,
            "mp":300,
            "w":350,
            "s":"W",
            "key":Keyboard.O,
            "g":"神之右席.击溃.天草式"
         };
         $ob["猛刺"] = {
            "cd":5,
            "w":120,
            "s":"",
            "key":Keyboard.U,
            "g":"破浪.冲溃"
         };
         $ob["爆水"] = {
            "cd":6,
            "w":50,
            "s":"",
            "key":Keyboard.I,
            "g":"断浪.斩浪"
         };
         $ob["瞬步"] = {
            "cd":1,
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
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         if(param1.$frameString !== "瞬翼斩")
         {
            param1.$mode = "D";
         }
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
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                        return "瞬挑";
                     case "S":
                        return "断";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        return "空斩";
                     case "S":
                        return "崩山击";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "W":
                        return "瞬翼斩";
                     case "S":
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
               return "猛刺";
            case Keyboard.I:
               return "爆水";
            case Keyboard.O:
               break;
            case Keyboard.P:
               return "写轮眼";
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
                  break;
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
               return "爆剑";
            case Keyboard.I:
            case Keyboard.O:
               break;
            case Keyboard.P:
         }
         return "none";
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         if(param1.$jumpBoolean)
         {
         }
         if(param1.$frameInt == 0)
         {
            param1.$ob.time = 0;
         }
         switch(param1.$frameString)
         {
            case "崩山击":
               if(param1.$frameInt == 7)
               {
                  param1.to(param1.$jumpBoolean ? 6 : 8);
               }
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,7,8);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,3,5,12);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,6,7,12);
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,3],
                     "name":"HF/Z",
                     "type":"SkillShuiShu",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 140 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬翼斩":
               param1.stoic = 0.3;
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,6,7,12);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,19,20,24);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,19,20,24);
               if(param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.goQZ(100,100,0);
               }
               ++param1.$ob.time;
               if(param1.$frameInt == 9)
               {
                  if(param1.$key == Keyboard.J || param1.$key == Keyboard.NUMPAD_1)
                  {
                     param1.to(10);
                  }
                  else if(param1.$ob.time < 30 * 5)
                  {
                     param1.to(8);
                  }
                  else
                  {
                     param1.to(10);
                  }
               }
               if(param1.$frameInt >= 7 && param1.$frameInt <= 8)
               {
                  param1.$mode = "K";
                  if(param1.$left)
                  {
                     param1.$x -= 6;
                     param1.$scaleX = -1;
                  }
                  if(param1.$right)
                  {
                     param1.$x += 6;
                     param1.$scaleX = 1;
                  }
                  if(param1.$down)
                  {
                     param1.$y += 6;
                  }
                  if(param1.$up)
                  {
                     param1.$y -= 6;
                  }
               }
               else
               {
                  param1.$mode = "D";
               }
               if(param1.$frameInt == 20 && param1.$jumpBoolean)
               {
                  param1.to(19);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,3],
                     "gox":16,
                     "goy":16,
                     "name":"XN/K",
                     "type":"SkillShuiShu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 70 * param1.$scaleX,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * 1 + Math.random()
                  });
               }
               else if(param1.$frameInt == 21 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"XN/K",
                     "type":"SkillShuiShu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 70 * param1.$scaleX,
                     "y":param1.$bit.y - 55,
                     "scaleX":param1.$scaleX * -1.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"XN/K",
                     "type":"SkillShuiShu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 70 * param1.$scaleX,
                     "y":param1.$bit.y - 55,
                     "scaleX":param1.$scaleX * 1.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"SB/D",
                     "type":"SkillShuiShu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 70 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 3
                  });
               }
               break;
            case "猛刺":
               if(param1.$frameInt == 1)
               {
                  param1.stoic = 0.3;
               }
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,3],
                     "gox":12,
                     "name":"SuChuan",
                     "type":"SkillShuiShu",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "断":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,3],
                     "gox":12,
                     "name":"TuLongShan",
                     "type":"SkillShuiShu",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               break;
            case "爆剑":
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,1,2,12);
               if(param1.$frameInt == 2 && param1.$jumpBoolean)
               {
                  param1.to(1);
               }
               else if(param1.$frameInt < 3 && !param1.$jumpBoolean)
               {
                  param1.to(3);
               }
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,3],
                     "name":"TianJie",
                     "type":"SkillShuiShu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 15 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.3
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,3],
                     "name":"PiFeng",
                     "type":"SkillShuiShu",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬挑":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,10,12);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,6,9,12);
               if(param1.$frameInt < 5 && Boolean(param1.hitGameRole))
               {
                  param1.to(5);
               }
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,3],
                     "gox":8,
                     "goy":-8,
                     "name":"XN/T",
                     "type":"SkillShuiShu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,3],
                     "gox":8,
                     "goy":-8,
                     "name":"XN/T",
                     "type":"SkillShuiShu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.8
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,3],
                     "gox":8,
                     "goy":-8,
                     "name":"XN/T",
                     "type":"SkillShuiShu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.6
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,3],
                     "gox":8,
                     "goy":-8,
                     "name":"XN/T",
                     "type":"SkillShuiShu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.4
                  });
               }
               break;
            case "空斩":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,3],
                     "name":"QPL/D",
                     "type":"SkillShuiShu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               break;
            case "爆水":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,3],
                     "name":"XN/C",
                     "type":"SkillShuiShu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.85
                  });
               }
               break;
            case "空中攻击":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,3],
                     "name":"XN/X",
                     "type":"SkillShuiShu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,16);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,11,4);
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"XN/K",
                     "type":"SkillShuiShu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y - 35,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               else if(param1.$frameInt == 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"BJR/S",
                     "type":"SkillShuiShu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y - 5,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               else if(param1.$frameInt == 15 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,3],
                     "name":"XN/K",
                     "type":"SkillShuiShu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 70 * param1.$scaleX,
                     "y":param1.$bit.y - 15,
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
            case "木涟":
         }
      }
   }
}

