package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class Freak_LaoGeBuLin
   {
      
      public static var $ob:Object = new Object();
      
      public function Freak_LaoGeBuLin()
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
         $ob["雷电之力"] = {
            "cd":3,
            "w":500,
            "s":"",
            "key":Keyboard.U
         };
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/freak/laogebulin.png","photo","Freak_LaoGeBuLin");
         SystemLoading.addTask("File/indexFile/img/freak/laogebulin.xml","text","Freak_LaoGeBuLin");
         SystemLoadType.loadRoleSkillData("JL/L");
         SystemLoading.addTask("File/indexFile/sound/role/gebulin/gbn_talk_03.mp3","sound","gebulin_gbn_talk_03");
         SystemLoading.addTask("File/indexFile/sound/role/gebulin/gbn_talk_02.mp3","sound","gebulin_gbn_talk_03");
         SystemLoading.addTask("File/indexFile/sound/role/gebulin/gbn_thw.mp3","sound","gebulin_gbn_thw");
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:Boolean = param1.$left;
         var _loc4_:Boolean = param1.$right;
         var _loc5_:Boolean = param1.$up;
         var _loc6_:Boolean = param1.$down;
         if(Keyboard.J == param2)
         {
            return "普通攻击";
         }
         if(Keyboard.U == param2)
         {
            return "雷电之力";
         }
         return "none";
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:Boolean = param1.$left;
         var _loc4_:Boolean = param1.$right;
         var _loc5_:Boolean = param1.$up;
         var _loc6_:Boolean = param1.$down;
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
         var _loc2_:Array = null;
         switch(param1.$frameString)
         {
            case "雷电之力":
               param1.stoic = 0.1;
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  _loc2_ = param1.hitRoleAndSkill(500,true);
                  if(_loc2_.length > 0)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "name":"JL/L",
                        "type":"SkillJinLong",
                        "fuck":3,
                        "role":param1,
                        "x":_loc2_[0].$bit.x,
                        "y":_loc2_[0].$bit.y,
                        "scaleX":param1.$scaleX * 2
                     });
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "name":"JL/L",
                        "type":"SkillJinLong",
                        "time":Math.random() * 10,
                        "fuck":10,
                        "role":param1,
                        "x":_loc2_[0].$bit.x + Math.random() * 300 - 150,
                        "y":_loc2_[0].$bit.y,
                        "scaleX":param1.$scaleX * 2
                     });
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "name":"JL/L",
                        "type":"SkillJinLong",
                        "time":Math.random() * 10,
                        "fuck":10,
                        "role":param1,
                        "x":_loc2_[0].$bit.x + Math.random() * 300 - 150,
                        "y":_loc2_[0].$bit.y,
                        "scaleX":param1.$scaleX * 2
                     });
                  }
               }
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,4,8);
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
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

