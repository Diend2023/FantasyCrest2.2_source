package SystemEye
{
   import SystemComponent.*;
   import SystemComponent.CardClass.*;
   import SystemComponent.Word.*;
   import flash.geom.*;
   import person.animation.easyShow.apps.*;
   
   public class ComponentResourcesManage
   {
      
      public static var $stage:Main;
      
      public static var $word:SystemWord;
      
      public static var $Ob:Object = new Object();
      
      public function ComponentResourcesManage()
      {
         super();
      }
      
      public static function CG() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in $Ob)
         {
            if($Ob[_loc1_] !== null)
            {
               if(!($Ob[_loc1_] is GameMain))
               {
                  $Ob[_loc1_].CG();
               }
               else
               {
                  $Ob[_loc1_].parent.removeChild($Ob[_loc1_]);
               }
               delete $Ob[_loc1_];
            }
         }
         $Ob = null;
         $Ob = new Object();
      }
      
      public static function askResources(param1:String, param2:String, param3:Object, param4:Boolean = false) : void
      {
         if($Ob[param2] == null)
         {
            if(param4)
            {
               CG();
            }
            switch(param1)
            {
               case "Button":
                  $Ob[param2] = new SystemButton(param3.array,param3.text);
                  $Ob[param2].$function = param3.event;
                  $Ob[param2].name = param2;
                  $stage.addChild($Ob[param2]);
                  break;
               case "SelectCard":
                  $Ob[param2] = new CardSelect();
                  $stage.addChild($Ob[param2]);
                  break;
               case "SelectRole":
                  $Ob[param2] = new SystemSelectBox1D3();
                  $stage.addChild($Ob[param2]);
                  $Ob[param2].selectMode = param3.mode;
                  break;
               case "Word":
                  $Ob[param2] = new SystemWord();
                  $stage.addChild($Ob[param2]);
                  $Ob[param2].initSystemWord();
                  $word = $Ob[param2];
                  break;
               case "EasyGIF":
                  $Ob[param2] = new EasyGIF(param3.bitmapData,param3.xml);
                  $stage.addChild($Ob[param2]);
                  break;
               case "FightVS":
                  $Ob[param2] = new FightVS();
                  $stage.addChild($Ob[param2]);
                  break;
               case "FightEND":
                  $Ob[param2] = new SystemEND();
                  $stage.addChild($Ob[param2]);
                  break;
               case "SelectMAP":
                  $Ob[param2] = new SystemMAPSelect();
                  $stage.addChild($Ob[param2]);
                  $Ob[param2].span();
                  break;
               case "SystemUpdate":
                  $Ob[param2] = new SystemUpdate();
                  $stage.addChild($Ob[param2]);
            }
         }
      }
      
      public static function setXY(param1:String, param2:Point) : void
      {
         $Ob[param1].x = param2.x;
         $Ob[param1].y = param2.y;
         param2 = null;
      }
   }
}

