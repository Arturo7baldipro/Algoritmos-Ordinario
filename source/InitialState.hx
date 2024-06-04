import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class InitialState extends FlxState
{
	override function create()
	{
		var text = new FlxText();
		text.text = "Adivina Quien";
		text.color = FlxColor.WHITE;
		text.size = 16;
		text.screenCenter(X);
		add(text);

		var text2 = new FlxText();
		text2.text = "Presiona Enter para jugar";
		text2.color = FlxColor.WHITE;
		text2.size = 16;
		text2.y = text.y + 30;
		text2.screenCenter(X);
		add(text2);
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.justPressed.ENTER)
		{
			FlxG.switchState(new PlayState());
		}
	}
}
