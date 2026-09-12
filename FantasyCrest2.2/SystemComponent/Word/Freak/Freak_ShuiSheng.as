package SystemComponent.Word.Freak
{
   import SystemComponent.*;
   import SystemEye.*;
   import eye.Math.*;
   import flash.ui.*;
   
   public class Freak_ShuiSheng
   {
      
      public static var $ob:Object = new Object();
      
      public function Freak_ShuiSheng()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["普通攻击"] = {
            "cd":5,
            "w":100,
            "s":"",
            "key":Keyboard.I
         };
         $ob["瞬步"] = {
            "cd":0,
            "w":1000,
            "s":"",
            "key":Keyboard.L
         };
         $ob["水"] = {
            "cd":6,
            "w":300,
            "h":300,
            "s":"",
            "key":Keyboard.U
         };
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/freak/shuisheng.png","photo","Freak_ShuiSheng");
         SystemLoading.addTask("File/indexFile/img/freak/shuisheng.xml","text","Freak_ShuiSheng");
         SystemLoadType.loadRoleSkillData("BJR/T");
         SystemLoadType.loadRoleSkillData("BJR/A");
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:* = param1.$left;
         var _loc4_:* = param1.$right;
         var _loc5_:* = param1.$up;
         var _loc6_:* = param1.$down;
         if(Keyboard.J == param2 && Math.random() * 100 > 90)
         {
            return "普通攻击";
         }
         switch(param2)
         {
            case Keyboard.U:
               return "水";
            case Keyboard.L:
               return "瞬步";
            default:
               return "none";
         }
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:* = param1.$left;
         var _loc4_:* = param1.$right;
         var _loc5_:* = param1.$up;
         var _loc6_:* = param1.$down;
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
         switch(param1.$frameString)
         {
            case "水":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "goy":3,
                     "name":"BJR/T",
                     "ka":[3,10],
                     "type":"SkillWo",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 100,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬步":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,4,param1.Speed * 4);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,4,8);
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         param1.sethp(param1.gethp - 1);
         param1.$ob.aimode = "K";
         if(param1.$jumpForFuckBoolean)
         {
            param1.$mode = "D";
         }
         else
         {
            param1.$mode = "K";
         }
         if(param1.$ob.tx !== true)
         {
            param1.$ob.tx = true;
            ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
               "name":"BJR/A",
               "type":"SkillWo",
               "fuck":0,
               "time":999,
               "role":param1,
               "x":param1.$x,
               "y":param1.$y,
               "scaleX":param1.$scaleX * 1
            });
         }
      }
      
      public static function CGSkill(param1:SystemGameRole) : void
      {
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

