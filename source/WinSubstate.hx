import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class WinSubstate extends FlxSubState
{
	override function create()
	{
		var text = new FlxText();
		var personajeAdivinado:String;
		/*PlayState.personajeAleatorio.forEach(function(spr:Personaje)
			{
				personajeAdivinado = spr.curCharacter;
			});
		 */
		text.text = "Haz adivinado el personaje!";
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
