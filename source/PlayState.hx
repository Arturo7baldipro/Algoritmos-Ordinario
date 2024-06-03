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

		// Ordena los personajes alfabéticamente
		curPersonajes = mergeSort(curPersonajes, compareStrings);

		// Crea los personajes
		createPersonajes();

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

	// Función de comparación para ordenación alfabética
	public static function compareStrings(a:String, b:String):Int
	{
		a = a.toUpperCase();
		b = b.toUpperCase();

		if (a < b)
		{
			return -1;
		}
		else if (a > b)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}

	// Implementación de Merge Sort
	public static function mergeSort(array:Array<String>, compare:Dynamic):Array<String>
	{
		if (array.length <= 1)
		{
			return array;
		}

		var middle:Int = Std.int(array.length / 2);
		var left:Array<String> = mergeSort(array.slice(0, middle), compare);
		var right:Array<String> = mergeSort(array.slice(middle, array.length), compare);

		return merge(left, right, compare);
	}

	public static function merge(left:Array<String>, right:Array<String>, compare:Dynamic):Array<String>
	{
		var result:Array<String> = [];
		var i:Int = 0;
		var j:Int = 0;

		while (i < left.length && j < right.length)
		{
			if (compare(left[i], right[j]) <= 0)
			{
				result.push(left[i]);
				i++;
			}
			else
			{
				result.push(right[j]);
				j++;
			}
		}

		while (i < left.length)
		{
			result.push(left[i]);
			i++;
		}

		while (j < right.length)
		{
			result.push(right[j]);
			j++;
		}

		return result;
	}

	// Método para actualizar la interfaz gráfica con los personajes ordenados
	public function updatePersonajesDisplay():Void
	{
		personajes.clear();
		createPersonajes();
	}

	// Método para crear y posicionar los personajes en el orden correcto
	public function createPersonajes():Void
	{
		for (i in 0...6)
		{
			var personaje:Personaje = new Personaje(0, -20, curPersonajes[i]);
			personaje.ID = i;
			personaje.x = 90 + (i * 170);
			personaje.scale.set(0.5, 0.5);
			personajes.add(personaje);
		}

		for (i in 6...12)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajes[i]);
			personaje.ID = i;
			personaje.x = -930 + (i * 170);
			personaje.y += 140;
			personaje.scale.set(0.5, 0.5);
			personajes.add(personaje);
		}

		for (i in 12...18)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajes[i]);
			personaje.ID = i;
			personaje.x = -1950 + (i * 170);
			personaje.y += 290;
			personaje.scale.set(0.5, 0.5);
			personajes.add(personaje);
		}

		for (i in 18...24)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajes[i]);
			personaje.ID = i;
			personaje.x = -2970 + (i * 170);
			personaje.y += 440;
			personaje.scale.set(0.5, 0.5);
			personajes.add(personaje);
		}
	}
}
