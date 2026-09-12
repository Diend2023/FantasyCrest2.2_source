package SystemComponent.Word.Freak
{
   import SystemComponent.*;
   import SystemComponent.Word.*;
   import SystemEye.*;
   import flash.ui.*;
   
   public class Freak_WangSprite
   {
      
      public static var $ob:Object = new Object();
      
      public function Freak_WangSprite()
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
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/freak/wangSprite.png","photo","Freak_WangSprite");
         SystemLoading.addTask("File/indexFile/img/freak/wangSprite.xml","text","Freak_WangSprite");
         SystemLoadType.loadRoleSkillData("DSL/B");
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc3_:* = param1.$left;
         var _loc4_:* = param1.$right;
         var _loc5_:* = param1.$up;
         var _loc6_:* = param1.$down;
         if(param1.$ob.cd != null)
         {
            _loc7_ = param1.$ob;
            _loc8_ = _loc7_.cd - 1;
            _loc7_.cd = _loc8_;
         }
         if(Keyboard.J == param2 && int(_loc7_.cd) <= 0)
         {
            _loc7_.cd = 90 * 4;
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
               if(int(param1.$ob.cd) > 0)
               {
                  return;
               }
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"DSL/B",
                     "type":"SkillTongRen",
                     "fuck":12,
                     "time":0,
                     "goy":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"DSL/B",
                     "type":"SkillTongRen",
                     "fuck":12,
                     "time":0,
                     "goy":0,
                     "role":param1,
                     "x":param1.$bit.x - 30 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * -1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"DSL/B",
                     "type":"SkillTongRen",
                     "fuck":12,
                     "time":0,
                     "goy":0,
                     "role":param1,
                     "x":param1.$bit.x + 80 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.4
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"DSL/B",
                     "type":"SkillTongRen",
                     "fuck":12,
                     "time":0,
                     "goy":0,
                     "role":param1,
                     "x":param1.$bit.x - 80 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * -1.4
                  });
               }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         RoleMathType.setSpeed(param1,4);
         param1.$ob.aimode = "K";
         if(param1.$jumpForFuckBoolean)
         {
            param1.$mode = "D";
         }
         else
         {
            param1.$mode = "K";
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

