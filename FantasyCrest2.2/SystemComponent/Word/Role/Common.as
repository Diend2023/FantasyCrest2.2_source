package SystemComponent.Word.Role
{
   import SystemComponent.SystemLoading;
   import SystemEye.GameData;
   
   public class Common
   {
      
      public function Common()
      {
         super();
      }
      
      public static function loadCommonRoleData(param1:String) : void
      {
         SystemLoading.addTask("File/indexFile/roledata/" + param1 + ".data","data",param1);
         GameData.loadPkg(param1);
      }
   }
}

