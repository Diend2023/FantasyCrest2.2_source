package SystemEye
{
   import SystemComponent.Word.*;
   
   public class NSGameData
   {
      
      public static var dqapp:String;
      
      public static var ns_object:Object;
      
      public static var onlie:Boolean = false;
      
      public static var ns:Boolean = false;
      
      public static var $tox:int = -1;
      
      public static var $lv:int = 1;
      
      public static var $exp:int = 0;
      
      private static var ns_role_hp_mp:Vector.<int> = new Vector.<int>();
      
      public function NSGameData()
      {
         super();
      }
      
      public static function upexp(param1:int) : Boolean
      {
         var _loc5_:* = undefined;
         var _loc2_:* = null;
         $exp += param1;
         var _loc3_:* = 25 + 50 * $lv * $lv;
         var _loc4_:* = false;
         if($exp > _loc3_)
         {
            $exp -= _loc3_;
            _loc5_ = $lv + 1;
            $lv = _loc5_;
            _loc4_ = true;
         }
         if(ComponentResourcesManage.$stage.$lvexp)
         {
            ComponentResourcesManage.$stage.$lvexp.update();
            if(param1 !== 0)
            {
               _loc2_ = ComponentResourcesManage.$word.$hpmpArray[0];
               ns_object[_loc2_.$role.$target] = {
                  "lv":$lv,
                  "exp":$exp
               };
            }
         }
         return _loc4_;
      }
      
      public static function get expBL() : Number
      {
         var _loc1_:* = 25 + 50 * $lv * $lv;
         return $exp / _loc1_;
      }
      
      public static function get lv() : Number
      {
         return $lv / 10;
      }
      
      public static function initRoleData() : void
      {
         ns_object = new Object();
         var _loc1_:* = GameData.select_xml;
         var _loc2_:* = _loc1_.select.role.length();
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_)
         {
            ns_object[_loc1_.select.role[_loc3_].@head] = {
               "lv":1,
               "exp":0
            };
            _loc3_++;
         }
      }
      
      public static function get hp() : int
      {
         return ns_role_hp_mp[0];
      }
      
      public static function get mp() : int
      {
         return ns_role_hp_mp[1];
      }
      
      public static function againRole(param1:int, param2:int) : void
      {
         ns_role_hp_mp[0] = param1;
         ns_role_hp_mp[1] = param2;
         upexp(0);
      }
   }
}

