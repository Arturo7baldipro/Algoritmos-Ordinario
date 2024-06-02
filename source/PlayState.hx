package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var nombre:FlxText;
	var sombrero:FlxText;
	var acesorio:FlxText;
	var personajes = new FlxTypedGroup<Personaje>();
	var curPersonajes:Array<String> = [
		/*'Pepe', 'Sech'*/ 'Juan', 'Alejandro', 'Andrea', 'Andres', 'Pedro', 'Antonio', 'Adolf', 'Isabella', 'Jenkins', 'Carlos', 'Jun', 'Kazuma', 'Kevin',
		'Leticia', 'Lucas', 'Lucy', 'Maria', 'Miyagi', 'Rafa', 'Raul', 'Regina', 'Roberto', 'Sofia', 'Travis', 'Valentina'
	];
	var arr:Array<Array<String>> = [[], [], []];

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
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		// Prueba para detectar si funciona la busqueda lineal
		if (FlxG.keys.justPressed.UP)
		{
			linealSearch(curPersonajes, "adrian");
		}
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

	// Inteligencia
	public function InteligenciaInteligensiosa() {}
}
