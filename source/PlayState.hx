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
	var personajes = new FlxTypedGroup<FlxSprite>();
	var etePersonajes:Array<String> = ['Pepe', 'Tematch'];

	override public function create()
	{
		super.create();
		/*
				personaje = new Personaje(500, 100, "Tematch");
				add(personaje);
			 


			acesorio = new FlxText(sombrero.x + 200);
			acesorio.text = personaje.curAccesorio;
			acesorio.antialiasing = false;
			add(acesorio);
		 */

		personajes = new FlxTypedGroup<FlxSprite>();
		add(personajes);

		for (i in 0...etePersonajes.length)
		{
			var personaje:FlxSprite = new FlxSprite();
			personaje = new Personaje(100, 0, etePersonajes[i]);
			personaje.ID = i;
			personaje.x = 10 + (i * 200);
			personajes.add(personaje);
		}
		var prueba = etePersonajes[1];

		var prueba = FlxG.random.int(0, etePersonajes.length);

		linealSearch(etePersonajes, "Tematch");
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
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
}
