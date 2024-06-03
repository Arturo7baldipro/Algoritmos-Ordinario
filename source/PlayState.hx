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

	override public function create()
	{
		super.create();

		personajes = new FlxTypedGroup<Personaje>();
		add(personajes);

		// Crea los personajes
		for (i in 0...6)
		{
			var personaje:Personaje = new Personaje();
			personaje = new Personaje(0, -20, curPersonajes[i]);
			personaje.ID = i;
			personaje.x = 90 + (i * 170);
			personaje.scale.set(0.5, 0.5);
			personajes.add(personaje);
		}

		for (i in 6...12)
		{
			var personaje:Personaje = new Personaje();
			personaje = new Personaje(0, -10, curPersonajes[i]);
			personaje.ID = i;
			personaje.x = -930 + (i * 170);
			personaje.y += 140;
			personaje.scale.set(0.5, 0.5);
			personajes.add(personaje);
		}

		for (i in 12...18)
		{
			var personaje:Personaje = new Personaje();
			personaje = new Personaje(0, -10, curPersonajes[i]);
			personaje.ID = i;
			personaje.x = -1950 + (i * 170);
			personaje.y += 290;
			personaje.scale.set(0.5, 0.5);
			personajes.add(personaje);
		}

		for (i in 18...24)
		{
			var personaje:Personaje = new Personaje();
			personaje = new Personaje(0, -10, curPersonajes[i]);
			personaje.ID = i;
			personaje.x = -2970 + (i * 170);
			personaje.y += 440;
			personaje.scale.set(0.5, 0.5);
			personajes.add(personaje);
		}

		// Para acceder aun sprite de un personaje
		personajes.forEach(function(spr:Personaje)
		{
			if (spr.ID == 1)
			{
				// spr.alpha = 0.6;
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

		if (FlxG.keys.justPressed.DOWN)
		{
			eliminar_Con_Personaje_Caracteristica(curPersonajes, "pelo");
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

	// Esto fue un bug pero por si acaso lo dejo por si lo necesitamos (Funciona)
	public function eliminar_Sin_Personaje_Caracteristica(array:Array<String>, caracteristica:String)
	{
		var curPersonajes:Array<String> = ["sombrero"];

		for (i in 0...array.length)
		{
			personajes.forEach(function(char:Personaje)
			{
				switch (caracteristica)
				{
					case "sombrero":
						if (char.curSombrero == "no" || char.curSombrero == "Ninguno")
						{
							char.kill();
						}
				}
			});
		}
	}

	public function eliminar_Con_Personaje_Caracteristica(array:Array<String>, caracteristica:String)
	{
		for (i in 0...array.length)
		{
			personajes.forEach(function(char:Personaje)
			{
				switch (caracteristica)
				{
					case "sombrero":
						if (char.curSombrero == "si")
						{
							char.kill();
						}
					case "pelo negro":
						if (char.curPelo == "negro")
						{
							char.kill();
						}
					case "pelo cafe":
						if (char.curPelo == "cafe")
						{
							char.kill();
						}
					case "pelo blanco":
						if (char.curPelo == "blanco")
						{
							char.kill();
						}
					case "pelo wero":
						if (char.curPelo == "wero")
						{
							char.kill();
						}
					case "pelo negrisro":
						if (char.curPelo == "negrisro")
						{
							char.kill();
						}
					case "pelo peliroja":
						if (char.curPelo == "peliroja")
						{
							char.kill();
						}
					case "lentes":
						if (char.curLentes == "si")
						{
							char.kill();
						}
				}
			});
		}
	}

	// Inteligencia
	public function InteligenciaInteligensiosa() {}
}
