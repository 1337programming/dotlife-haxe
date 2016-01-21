package ;
import flixel.FlxSprite;

class Corpse extends FlxSprite
{

	public function new() 
	{
		super();
		var rand:Int = Math.round(Math.random() * 4);
		switch rand {
			case 1: loadGraphic("assets/images/corpse1.png", false, 16, 16);
			case 2: loadGraphic("assets/images/corpse2.png", false, 16, 16);
			case 3: loadGraphic("assets/images/corpse3.png", false, 16, 16);
			case 4: loadGraphic("assets/images/corpse4.png", false, 16, 16);
			default: loadGraphic("assets/images/corpse1.png", false, 16, 16);
		}
	}
	
}