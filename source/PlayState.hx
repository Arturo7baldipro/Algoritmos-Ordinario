package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.ui.FlxInputText;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

using StringTools;

class PlayState extends FlxState
{
	var nombre:FlxText;
	var sombrero:FlxText;
	var acesorio:FlxText;
	var personajes = new FlxTypedGroup<Personaje>();
	var curPersonajes:Array<String> = ['Pepe', 'Sech'];
	var arr:Array<Array<String>> = [[], [], []];
	private var flashButton:FlxButton;
	private var inputText:FlxInputText;

	override public function create()
	{
		super.create();

		personajes = new FlxTypedGroup<Personaje>();
		add(personajes);

		// Crea los personajes
		for (i in 0...curPersonajes.length)
		{
			var personaje:Personaje = new Personaje();
			personaje = new Personaje(100, 0, curPersonajes[i]);
			personaje.ID = i;
			personaje.x = 10 + (i * 200);
			personajes.add(personaje);
		}

		// Para acceder aun sprite de un personaje
		personajes.forEach(function(spr:Personaje)
		{
			if (spr.ID == 1)
			{
				spr.alpha = 0.6;
			}
		});

		// Testeo en los botones
		flashButton = new FlxButton(FlxG.width / 2 - 40, FlxG.height / 2 - 20, "Ete boton", flashScreen);
		add(flashButton);

		inputText = new FlxInputText(FlxG.width / 2 - 80, FlxG.height / 2, 160, "");
		inputText.maxLength = 10;
		add(inputText);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		// Prueba para detectar si funciona la busqueda lineal
		if (FlxG.keys.justPressed.UP)
		{
			linealSearch(curPersonajes, "adrian");
		}

		if (inputText.text == "Activo")
		{
			flashScreen();
			inputText.text = ""; // Limpia todo el texto cuando se escribe
		}

		// Funciona (ahora mismo esta con las caracteristicas de sech)
		personajes.forEach(function(spr:Personaje)
		{
			if (spr.ID == 1)
			{
				if (inputText.text == spr.curCharacter)
				{
					flashScreen();
					inputText.text = "";
				}
			}
		});
	}

	// Funciona
	public function linealSearch(array:Array<String>, search:String)
	{
		for (i in 0...array.length)
		{
			if (array.contains(search))
			{
				FlxG.camera.flash(FlxColor.RED, 1);
			}
			FlxG.camera.flash(FlxColor.BLUE, 1);
		}
	}

	// Cosa del inputText
	private function checkInputText(input:FlxInputText):Void
	{
		if (input.text == "Activo")
		{
			flashScreen();
		}
	}

	private function flashScreen():Void
	{
		// Hacer que la pantalla parpadee (Para detectar si pasa algo)
		FlxG.camera.flash(FlxColor.WHITE, 0.5);
	}
}
