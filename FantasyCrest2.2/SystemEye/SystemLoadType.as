package SystemEye
{
   import SystemComponent.*;
   import SystemComponent.Word.Role.*;
   import eye.Draw.*;
   import flash.utils.*;
   
   public class SystemLoadType
   {
      
      public function SystemLoadType()
      {
         super();
      }
      
      public static function loadMAP(param1:String) : void
      {
         SystemLoading.addTask("File/indexFile/img/map/" + param1 + "0001.png","photo",param1);
         SystemLoading.addTask("File/indexFile/img/map/" + param1 + "0002.png","photo","bit" + param1);
         SystemLoading.addTask("File/indexFile/img/map/" + param1 + "0003.jpg","photo","bj" + param1);
         SystemLoading.addTask("File/indexFile/img/map/" + param1 + ".mp3","sound",param1);
         GameData.$mapTarget = param1;
      }
      
      public static function loadRoleSkillData(param1:String) : void
      {
         SystemLoading.addTask("File/indexFile/img/skill/" + param1 + ".png","photo",param1);
         SystemLoading.addTask("File/indexFile/img/skill/" + param1 + ".xml","text",param1);
         if(BitmapDataDraw.cacheArray.indexOf(param1) == -1)
         {
            BitmapDataDraw.cacheArray.push(param1);
         }
      }
      
      public static function loadRoleData(param1:String) : void
      {
         var $class:Class = null;
         var name:* = undefined;
         var _loc_3:* = undefined;
         name = param1;
         try
         {
            $class = getDefinitionByName("SystemComponent.Word.Role." + name) as Class;
            _loc_3 = $class;
            _loc_3["loadData"]();
         }
         catch(e:Error)
         {
            Common.loadCommonRoleData(name);
         }
      }
      
      public static function loadHredSkillData(param1:String) : void
      {
         SystemLoading.addTask("File/indexFile/img/hred/" + param1 + ".png","photo","HRED" + param1);
      }
   }
}

