import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class GameOverSubstate extends FlxSubState
{
	override function create()
	{
		var text = new FlxText();
		text.text = "Game Over, Se acabo el juego";
		text.color = FlxColor.WHITE;
		text.size = 16;
		text.screenCenter(X);
		add(text);
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.justPressed.ENTER)
		{
			returnState();
		}
	}

	function returnState()
	{
		close();
		FlxG.switchState(new InitialState());
	}
}
