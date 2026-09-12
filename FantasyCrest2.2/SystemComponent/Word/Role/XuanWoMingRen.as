package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.display.BlendMode;
   import flash.ui.Keyboard;
   
   public class XuanWoMingRen
   {
      
      public static var $ob:Object = new Object();
      
      public function XuanWoMingRen()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["炎帝"] = {"cd":15};
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/xuanwomingren.png","photo","XuanWoMingRen");
         SystemLoading.addTask("File/indexFile/img/role/xuanwomingren.xml","text","XuanWoMingRen");
         SystemLoadType.loadRoleSkillData("MR/ShouLiJian");
         SystemLoadType.loadRoleSkillData("MR/YFSShouLiJian");
         SystemLoadType.loadRoleSkillData("MR/YanWu");
         SystemLoadType.loadRoleSkillData("MR/BaoBiao");
         SystemLoadType.loadRoleSkillData("MR/Boom");
         SystemLoadType.loadRoleSkillData("MR/LuoXuanWan");
         SystemLoadType.loadRoleSkillData("MR/QianNianSha");
         SystemLoadType.loadRoleSkillData("MR/YFSQianNianSha");
         SystemLoadType.loadRoleSkillData("MR/MR1");
         SystemLoadType.loadRoleSkillData("MR/MR2");
         SystemLoadType.loadRoleSkillData("MR/Feng");
         SystemLoadType.loadRoleSkillData("MR/QChang");
         SystemLoadType.loadRoleSkillData("MR/YFSPao");
         SystemLoadType.loadRoleSkillData("MR/YFSJump");
         SystemLoadType.loadRoleSkillData("MR/DaYu");
         SystemLoadType.loadRoleSkillData("MR/JuJi");
         SystemLoadType.loadRoleSkillData("MR/JuJi2");
         SystemLoadType.loadRoleSkillData("MR/JuJiGo");
         SystemLoadType.loadRoleSkillData("MR/Xuan");
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
                        return "千年杀";
                     case "S":
                        return "影分身手里劍";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "S":
                        return "起爆符手里劍";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "W":
                        return "螺旋手里剑";
                     case "AA":
                     case "DD":
                        return "大玉螺旋丸";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.P:
                  return "多重影分身";
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
               return "柔拳法˙點穴";
            case Keyboard.O:
               return "螺旋连丸";
            case Keyboard.P:
               if(!(ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "Buff2"] is SkillShow))
               {
                  return "白眼";
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
            loop1:
            switch(param2)
            {
               case Keyboard.J:
                  switch(_loc3_)
                  {
                     case "S":
                        return "風魔手里劍";
                     default:
                        break loop1;
                  }
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
               return "影分身衝擊";
            case Keyboard.I:
               return "影分身、跃";
            case Keyboard.O:
               break;
            case Keyboard.P:
               return "多重影分身";
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
            case "螺旋手里剑":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,13,19,param1.Speed * 3);
               if(param1.hitRoleBoolean && param1.$frameInt > 13 && param1.$frameInt < 19)
               {
                  param1.to(20);
               }
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"MR/MR2",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":12,
                     "role":param1,
                     "x":param1.$x + 23 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * -1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"MR/MR2",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":12,
                     "role":param1,
                     "x":param1.$x - 33 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/JuJi",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":42,
                     "role":param1,
                     "x":param1.$x - 10 * param1.$scaleX,
                     "y":param1.$y - 40,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/YanWu",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x - 23 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/YanWu",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x + 23 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/QChang",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/JuJi2",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":42,
                     "role":param1,
                     "x":param1.$x - 25 * param1.$scaleX,
                     "y":param1.$y - 90,
                     "scaleX":param1.$scaleX
                  });
               }
               else if(param1.$frameInt == 13 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/JuJiGo",
                     "type":"SkillXuanWoMingRen",
                     "fuck":9999,
                     "time":42,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
               }
               if(param1.$frameInt == 20 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/Xuan",
                     "type":"SkillXuanWoMingRen",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 4
                  });
               }
               break;
            case "大玉螺旋丸":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,12,param1.Speed * 3);
               if(param1.hitRoleBoolean && param1.$frameInt > 5 && param1.$frameInt < 13)
               {
                  param1.to(13);
               }
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "down":true,
                     "blendMode":BlendMode.NORMAL,
                     "name":"MR/MR2",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":12,
                     "role":param1,
                     "x":param1.$x - 53 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/LuoXuanWan",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":42,
                     "role":param1,
                     "x":param1.$x - 35 * param1.$scaleX,
                     "y":param1.$y - 50,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/YanWu",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x - 30 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/QChang",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               else if(param1.$frameInt == 13 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1 / 8;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/DaYu",
                     "type":"SkillXuanWoMingRen",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/Feng",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":15,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
               }
               break;
            case "螺旋连丸":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,14,param1.Speed * 3);
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "down":true,
                     "blendMode":BlendMode.NORMAL,
                     "name":"MR/MR2",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":15,
                     "role":param1,
                     "x":param1.$x - 53 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/LuoXuanWan",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":42,
                     "role":param1,
                     "x":param1.$x - 25 * param1.$scaleX,
                     "y":param1.$y - 50,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "down":true,
                     "blendMode":BlendMode.NORMAL,
                     "name":"MR/MR2",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":15,
                     "role":param1,
                     "x":param1.$x + 53 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * -1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/LuoXuanWan",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":42,
                     "role":param1,
                     "x":param1.$x + 25 * param1.$scaleX,
                     "y":param1.$y - 50,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/YanWu",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x - 43 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/YanWu",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x + 43 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/QChang",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/Feng",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":20,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
               }
               break;
            case "影分身、跃":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "target":true,
                     "down":true,
                     "blendMode":BlendMode.NORMAL,
                     "troops":param1.$troops,
                     "name":"MR/YFSJump",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":200,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/YanWu",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y + 30,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               else if(param1.$frameInt == 5)
               {
                  param1.$jumpNumMath = 2;
                  param1.stopSkill();
                  param1.goJump();
                  ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "MR/YFSJump"].CG();
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/YanWu",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y + 30,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               break;
            case "影分身衝擊":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "down":true,
                     "blendMode":BlendMode.NORMAL,
                     "troops":param1.$troops,
                     "name":"MR/YFSPao",
                     "type":"SkillXuanWoMingRen",
                     "fuck":99,
                     "time":200,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX,
                     "gox":8,
                     "goy":8
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/YanWu",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x + 30 * param1.$scaleX,
                     "y":param1.$y + 80,
                     "scaleX":param1.$scaleX
                  });
               }
               break;
            case "多重影分身":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.askElements("role",{
                     "hp":100,
                     "x":param1.$x,
                     "scaleX":1,
                     "y":param1.$y,
                     "name":"role1" + Math.random(),
                     "troops":param1.$troops,
                     "target":"XuanWoMingRen",
                     "id":-1
                  });
               }
               break;
            case "螺旋丸":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,15,param1.Speed * 3);
               if(param1.$frameInt > 3 && param1.$frameInt < 6)
               {
                  if(param1.hitRoleBoolean)
                  {
                     param1.to(6);
                  }
               }
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "down":true,
                     "blendMode":BlendMode.NORMAL,
                     "name":"MR/MR1",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":9,
                     "role":param1,
                     "x":param1.$x - 13 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[8,10],
                     "target":true,
                     "name":"MR/LuoXuanWan",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":42,
                     "role":param1,
                     "x":param1.$x - 20 * param1.$scaleX,
                     "y":param1.$y - 30,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/YanWu",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x - 13 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/QChang",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               else if(param1.$frameInt == 6)
               {
                  param1.stoic = 27 / 40;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"MR/Feng",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":24,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "MR/LuoXuanWan"].$ob.boolean = true;
               }
               break;
            case "千年杀":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,7,param1.Speed * 2);
               if(param1.hitRoleBoolean && param1.$frameInt < 7)
               {
                  param1.to(7);
               }
               if(param1.$frameInt == 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"MR/YFSQianNianSha",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x + 130 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"MR/YanWu",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x + 130 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX
                  });
               }
               break;
            case "起爆符手里劍":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":8,
                     "goy":8,
                     "troops":param1.$troops,
                     "hp":20,
                     "down":true,
                     "blendMode":BlendMode.NORMAL,
                     "name":"MR/BaoBiao",
                     "type":"SkillXuanWoMingRen",
                     "fuck":999,
                     "time":120,
                     "role":param1,
                     "x":param1.$x + 37 * param1.$scaleX,
                     "y":param1.$y - 40,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":8,
                     "goy":8,
                     "troops":param1.$troops,
                     "hp":20,
                     "down":true,
                     "blendMode":BlendMode.NORMAL,
                     "name":"MR/BaoBiao",
                     "type":"SkillXuanWoMingRen",
                     "fuck":999,
                     "time":120,
                     "role":param1,
                     "x":param1.$x + 57 * param1.$scaleX,
                     "y":param1.$y - 40,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":8,
                     "goy":8,
                     "troops":param1.$troops,
                     "hp":20,
                     "down":true,
                     "blendMode":BlendMode.NORMAL,
                     "name":"MR/BaoBiao",
                     "type":"SkillXuanWoMingRen",
                     "fuck":999,
                     "time":120,
                     "role":param1,
                     "x":param1.$x + 67 * param1.$scaleX,
                     "y":param1.$y - 40,
                     "scaleX":param1.$scaleX
                  });
               }
               break;
            case "影分身手里劍":
               if(param1.$frameInt == 0 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "troops":param1.$troops,
                     "hp":20,
                     "down":true,
                     "blendMode":BlendMode.NORMAL,
                     "name":"MR/YFSShouLiJian",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":120,
                     "role":param1,
                     "x":param1.$x + 17 * param1.$scaleX,
                     "y":param1.$y - 44,
                     "scaleX":param1.$scaleX
                  });
               }
               break;
            case "風魔手里劍":
               if(param1.$frameInt == 0 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "troops":param1.$troops,
                     "hp":20,
                     "down":true,
                     "blendMode":BlendMode.NORMAL,
                     "name":"MR/ShouLiJian",
                     "type":"SkillXuanWoMingRen",
                     "fuck":0,
                     "time":120,
                     "role":param1,
                     "x":param1.$x - 17 * param1.$scaleX,
                     "y":param1.$y - 50,
                     "scaleX":param1.$scaleX
                  });
               }
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,3,4);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,8,9,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,13,14,6);
               break;
            case "瞬步":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,6,param1.$speed * 4);
               RoleMathType.alphaFrame(param1);
               RoleMathType.stoicType(param1,2,4);
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

