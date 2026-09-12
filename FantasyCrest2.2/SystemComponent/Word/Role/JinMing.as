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
   import flash.display.BlendMode;
   import flash.ui.Keyboard;
   
   public class JinMing
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function JinMing()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/jinming.png","photo","JinMing");
         SystemLoading.addTask("File/indexFile/img/role/jinming.xml","text","JinMing");
         SystemLoadType.loadRoleSkillData("XN/T");
         SystemLoadType.loadRoleSkillData("JM/W");
         SystemLoadType.loadRoleSkillData("YuanBao");
         SystemLoadType.loadRoleSkillData("JM/S");
         SystemLoadType.loadRoleSkillData("B/F");
         SystemLoadType.loadRoleSkillData("MR/DaYu");
         SystemLoadType.loadRoleSkillData("GJS/B");
         SystemLoadType.loadRoleSkillData("SuChuan");
         SystemLoadType.loadRoleSkillData("MR/JuJi2");
         SystemLoadType.loadRoleSkillData("MR/Xuan");
         SystemLoadType.loadRoleSkillData("XN/BG");
         SystemLoadType.loadRoleSkillData("XN/C2");
         SystemLoadType.loadRoleSkillData("XN/R");
         SystemLoadType.loadRoleSkillData("XN/X");
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         RoleMathType.setSpeed(param1,7);
      }
      
      public static function init() : void
      {
         $mxx = $mxx.concat([1,2,3,1,0.5]);
         $mxx = $mxx.concat([1,1,0,0,0]);
         $mxx = $mxx.concat([0,1,0.2,0,0]);
         $mxx = $mxx.concat([0.8,0.6,0.4,0.2,0.1]);
         $ob["尾爪"] = {
            "cd":5,
            "w":170,
            "h":200,
            "s":"W",
            "key":Keyboard.U,
            "g":"妖狐勾手"
         };
         $ob["尾风"] = {
            "cd":5,
            "w":170,
            "s":"S",
            "key":Keyboard.U,
            "g":"九尾查克拉激荡"
         };
         $ob["尾螺旋"] = {
            "cd":6,
            "w":250,
            "s":"W",
            "key":Keyboard.I,
            "g":"螺旋吸丸"
         };
         $ob["地螺旋"] = {
            "cd":4,
            "w":70,
            "s":"S",
            "key":Keyboard.I,
            "g":"崩旋气场"
         };
         $ob["六仙珠"] = {
            "cd":36,
            "mp":400,
            "w":250,
            "s":"AA",
            "key":Keyboard.O,
            "g":"六仙珠（螺旋乱丸）"
         };
         $ob["金手里剑"] = {
            "cd":35,
            "mp":300,
            "w":350,
            "s":"WW",
            "key":Keyboard.O,
            "g":"风遁.超大玉螺旋手里剑"
         };
         $ob["螺旋丸"] = {
            "cd":6,
            "w":250,
            "s":"",
            "key":Keyboard.U,
            "g":"瞬.螺旋丸"
         };
         $ob["闪电一击"] = {
            "cd":6,
            "w":250,
            "s":"",
            "key":Keyboard.I,
            "g":"瞬.闪光冲破"
         };
         $ob["空螺旋"] = {
            "cd":5,
            "mp":30,
            "w":150,
            "k":true,
            "s":"S",
            "key":Keyboard.U,
            "g":"空.大玉螺旋丸"
         };
         $ob["瞬闪"] = {
            "cd":3,
            "w":1000,
            "s":"S",
            "key":Keyboard.L,
            "g":"金色闪光（瞬身术）"
         };
         $ob["空腿"] = {
            "cd":5,
            "w":100,
            "h":500,
            "s":"S",
            "k":true,
            "key":Keyboard.J,
            "g":"空.闪光踢"
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
                        return "瞬闪";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                        return "尾爪";
                     case "S":
                        return "尾风";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        return "尾螺旋";
                     case "S":
                        return "地螺旋";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "AA":
                     case "DD":
                        return "六仙珠";
                     case "WW":
                        return "金手里剑";
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
               return "螺旋丸";
            case Keyboard.I:
               return "闪电一击";
            case Keyboard.O:
               return "none";
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
            loop2:
            switch(param2)
            {
               case Keyboard.J:
                  switch(_loc3_)
                  {
                     case "W":
                        break;
                     case "S":
                        return "空腿";
                  }
                  break;
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  switch(_loc3_)
                  {
                     case "S":
                        return "瞬闪";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "S":
                        return "空螺旋";
                     default:
                        break loop2;
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
            case Keyboard.I:
            case Keyboard.O:
               break;
            case Keyboard.P:
         }
         return "none";
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         var _loc2_:SkillShow = null;
         var _loc3_:SystemGameRole = null;
         var _loc4_:SystemGameRole = null;
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
            case "空腿":
               if(param1.$frameInt == 3 && param1.$frameInt != param1.$skillFrameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"XN/X",
                     "target":true,
                     "type":"SkillZuoZhu",
                     "time":0,
                     "fuck":99,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "金手里剑":
               if(param1.$frameInt == 3 && param1.$frameInt != param1.$skillFrameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[0,10],
                     "name":"MR/JuJi2",
                     "target":true,
                     "type":"SkillZuoZhu",
                     "time":1000,
                     "fuck":3,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y - 55,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 12 && param1.$frameInt != param1.$skillFrameInt)
               {
                  _loc2_ = ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "MR/JuJi2"];
                  if(_loc2_)
                  {
                     _loc2_.$gox = 12;
                     _loc2_.$time = 30;
                  }
               }
               break;
            case "闪电一击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,8,12);
               if(param1.$frameInt == 6 && param1.$frameInt != param1.$skillFrameInt)
               {
                  _loc3_ = param1.hitRoleAndSkill(250,true)[0];
                  if(_loc3_)
                  {
                     param1.$x = _loc3_.$x - 35 * param1.$scaleX;
                     param1.$y = _loc3_.$y;
                  }
                  else
                  {
                     param1.$x += 100 * param1.$scaleX;
                  }
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"SuChuan",
                     "type":"SkillXuanWoMingRen",
                     "fuck":3,
                     "gox":12,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"XN/BG",
                     "type":"SkillXuanWoMingRen",
                     "fuck":3,
                     "gox":3,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y - 25,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "地螺旋":
               if(param1.$frameInt == 3 && param1.$frameInt != param1.$skillFrameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[3,10],
                     "name":"XN/C2",
                     "type":"SkillZuoZhu",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 20 * param1.$scaleX,
                     "y":param1.$bit.y - 25,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[0,10],
                     "name":"XN/C2",
                     "type":"SkillZuoZhu",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y - 25,
                     "scaleX":param1.$scaleX * -1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[0,10],
                     "color":$mxx,
                     "name":"GJS/B",
                     "type":"SkillXuanWoMingRen",
                     "fuck":12,
                     "role":param1,
                     "x":param1.$bit.x - 0 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "螺旋丸":
               if(param1.$frameInt == 11 && param1.$frameInt != param1.$skillFrameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "color":$mxx,
                     "name":"MR/DaYu",
                     "type":"SkillXuanWoMingRen",
                     "fuck":6,
                     "role":param1,
                     "x":param1.$bit.x - 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               else if(param1.$frameInt == 9 && param1.$frameInt != param1.$skillFrameInt)
               {
                  _loc3_ = param1.hitRoleAndSkill(250,true)[0];
                  if(_loc3_)
                  {
                     param1.$x = _loc3_.$x - 35 * param1.$scaleX;
                     param1.$y = _loc3_.$y;
                  }
                  else
                  {
                     param1.$x += 100 * param1.$scaleX;
                  }
               }
               break;
            case "尾风":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "color":$mxx,
                     "name":"XN/R",
                     "type":"SkillZuoZhu",
                     "fuck":6,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * -1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "name":"XN/R",
                     "type":"SkillZuoZhu",
                     "fuck":6,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "空螺旋":
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,4,6,17);
               if(param1.$frameInt > 2 && param1.$frameInt < 6 && param1.hitRoleBoolean)
               {
                  param1.to(7);
               }
               if(param1.$frameInt == 6)
               {
                  if(param1.$jumpBoolean)
                  {
                     param1.to(4);
                  }
                  else
                  {
                     param1.to(7);
                  }
               }
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "time":3000,
                     "name":"JM/W",
                     "type":"SkillZuoZhu",
                     "fuck":99,
                     "role":param1,
                     "x":param1.$bit.x - 10 * param1.$scaleX,
                     "y":param1.$bit.y - 40,
                     "scaleX":param1.$scaleX * 0.1
                  });
               }
               break;
            case "六仙珠":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,15,7);
               if(param1.$frameInt > 4 && param1.$frameInt < 15 && Boolean(param1.hitGameRole))
               {
                  param1.to(15);
               }
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "down":true,
                     "time":3000,
                     "name":"JM/S",
                     "type":"SkillZuoZhu",
                     "fuck":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               if((param1.$frameInt == 3 || param1.$frameInt == 2) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "down":true,
                     "time":3000,
                     "name":"JM/W",
                     "type":"SkillZuoZhu",
                     "fuck":99,
                     "role":param1,
                     "x":param1.$bit.x + Math.random() * 10,
                     "y":param1.$bit.y - Math.random() * 40 - 20,
                     "scaleX":param1.$scaleX * 0.1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "down":true,
                     "time":3000,
                     "name":"JM/W",
                     "type":"SkillZuoZhu",
                     "fuck":99,
                     "role":param1,
                     "x":param1.$bit.x + Math.random() * 10,
                     "y":param1.$bit.y - Math.random() * 40 - 20,
                     "scaleX":param1.$scaleX * 0.1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "down":true,
                     "time":3000,
                     "name":"JM/W",
                     "type":"SkillZuoZhu",
                     "fuck":99,
                     "role":param1,
                     "x":param1.$bit.x + Math.random() * 10,
                     "y":param1.$bit.y - Math.random() * 40 - 20,
                     "scaleX":param1.$scaleX * 0.1
                  });
               }
               break;
            case "尾螺旋":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "down":true,
                     "time":15,
                     "name":"JM/W",
                     "type":"SkillZuoZhu",
                     "fuck":3,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 115,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "尾爪":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[0,10],
                     "name":"XN/T",
                     "type":"SkillZuoZhu",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 20 * param1.$scaleX,
                     "y":param1.$bit.y - 25,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[3,10],
                     "name":"XN/C2",
                     "type":"SkillZuoZhu",
                     "fuck":9,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 20 * param1.$scaleX,
                     "y":param1.$bit.y - 25,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬闪":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,4,2);
               param1.stoic = 0.3;
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  _loc4_ = param1.hitRoleAndSkill(400,true)[0];
                  if(_loc4_)
                  {
                     if(param1.$scaleX > 0 && param1.$x < _loc4_.$x || param1.$scaleX < 0 && param1.$x > _loc4_.$x)
                     {
                        param1.$x = _loc4_.$x - 30 * param1.$scaleX;
                        param1.$y = _loc4_.$y - (_loc4_.$jumpBoolean ? 60 : 0);
                     }
                     else
                     {
                        param1.$x += 250 * param1.$scaleX;
                     }
                  }
                  else
                  {
                     param1.$x += 250 * param1.$scaleX;
                  }
               }
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,30);
               break;
            case "空中攻击":
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,11,4);
               if((param1.$frameInt == 16 || param1.$frameInt == 23) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  _loc4_ = param1.hitRoleAndSkill(200,true)[0];
                  if(_loc4_)
                  {
                     if(param1.$scaleX > 0 && param1.$x < _loc4_.$x || param1.$scaleX < 0 && param1.$x > _loc4_.$x)
                     {
                        param1.$x = _loc4_.$x;
                     }
                     else
                     {
                        param1.$x += 50 * param1.$scaleX;
                     }
                  }
                  else
                  {
                     param1.$x += 50 * param1.$scaleX;
                  }
               }
               if(param1.$frameInt >= 16)
               {
                  param1.$ob.kong = true;
                  param1.$jumpBoolean = true;
               }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         param2.$jumpNum = param2.$jumpNum >= 2 ? 1 : param2.$jumpNum;
         switch(param1.$frameString)
         {
            case "空中攻击":
               GameData.$KaTime = 5;
               break;
            case "普通攻击":
               if(param1.$frameInt >= 16)
               {
                  GameData.$KaTime = 10;
               }
         }
      }
   }
}

