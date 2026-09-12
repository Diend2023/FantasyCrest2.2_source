package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import flash.geom.Point;
   
   public class SkillYing extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillYing()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         if(param2.$target == "Y/B")
         {
            return "AS/huo";
         }
         return JianTX;
      }
      
      public static function Hrut(param1:SkillShow = null) : int
      {
         switch(param1.$skillType)
         {
            case "LongShanQiang":
               return -15;
            case "Y/B":
               return 70;
            case "BJR/X":
               return -15;
            case "BJR/J":
               return 180;
            case "JX/D":
               return param1.$role.$frameString == "猛龙" ? 175 : 25;
            default:
               return 25;
         }
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         return 1;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         var _loc3_:Point = null;
         if(param2.bitmapData !== null)
         {
            switch(param2.$skillType)
            {
               case "BJR/X":
                  if(param1.$frameInt == 9)
                  {
                     param2.$gox = 3;
                  }
                  else if(param1.$frameInt == 11)
                  {
                     param2.$gox = -18;
                  }
                  if(param1.$frameInt == 15 && param1.$frameString == "回旋剑")
                  {
                     param2.$time = 0;
                  }
                  break;
               case "Y/Z":
                  if(param1.$frameInt == 5)
                  {
                     param2.$gox = 5;
                     param2.$goy = -7;
                  }
                  if(param2.$time == 5)
                  {
                     --param2.$time;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "name":"Y/B",
                        "type":"SkillYing",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param2.$x,
                        "y":param2.$y,
                        "scaleX":param1.$scaleX * 1.5
                     });
                     param2.CG();
                  }
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "LongShanQiang":
               return 4;
            case "BJR/X":
            case "Y/Q":
            case "BJR/J":
               return 2;
            default:
               return 10;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "Y/Q":
               return 12;
            case "BJR/J":
               return -5;
            default:
               return 2;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "BJR/X":
               param2.$x = param3.$x;
         }
      }
      
      public static function CGSkill(param1:SkillShow) : void
      {
         switch(param1.$skillType)
         {
            case "NZ/HBuff":
               param1.$role.$ob.lei = false;
         }
      }
   }
}

