package SystemComponent.Word.Freak
{
   import SystemComponent.*;
   import SystemEye.*;
   import eye.Math.*;
   import flash.ui.*;
   
   public class Freak_WuGong
   {
      
      public static var $ob:Object = new Object();
      
      public function Freak_WuGong()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["普通攻击"] = {
            "cd":3,
            "w":100,
            "s":"",
            "key":Keyboard.J
         };
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/freak/wugong.png","photo","Freak_WuGong");
         SystemLoading.addTask("File/indexFile/img/freak/wugong.xml","text","Freak_WuGong");
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:* = param1.$left;
         var _loc4_:* = param1.$right;
         var _loc5_:* = param1.$up;
         var _loc6_:* = param1.$down;
         if(Keyboard.J == param2)
         {
            return "普通攻击";
         }
         return "none";
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
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,4,8);
         }
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         param1.sethp(param1.gethp - 1);
      }
      
      public static function CGSkill(param1:SystemGameRole) : void
      {
         ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
            "name":"XD/BaoZha",
            "type":"SkillXiaoDi",
            "fuck":12,
            "time":0,
            "role":param1,
            "x":param1.$x,
            "y":param1.$y,
            "scaleX":param1.$scaleX * 2
         });
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

