package;

import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, InitialState, 60, 60, true, false));
		var skipSplash:Bool = true;
	}
}
