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
	var personajesBot = new FlxTypedGroup<Personaje>();
	var curPersonajes:Array<String> = [
		/*'Pepe', 'Sech'*/ 'Juan', 'Alejandro', 'Andrea', 'Andres', 'Pedro', 'Antonio', 'Adolf', 'Isabella', 'Jenkins', 'Carlos', 'Jun', 'Kazuma', 'Kevin',
		'Leticia', 'Lucas', 'Lucy', 'Maria', 'Miyagi', 'Rafa', 'Raul', 'Regina', 'Roberto', 'Sofia', 'Travis', 'Valentina'
	];

	var curPersonajesBot:Array<String> = [
		/*'Pepe', 'Sech'*/ 'Juan', 'Alejandro', 'Andrea', 'Andres', 'Pedro', 'Antonio', 'Adolf', 'Isabella', 'Jenkins', 'Carlos', 'Jun', 'Kazuma', 'Kevin',
		'Leticia', 'Lucas', 'Lucy', 'Maria', 'Miyagi', 'Rafa', 'Raul', 'Regina', 'Roberto', 'Sofia', 'Travis', 'Valentina'
	];

	override public function create()
	{
		super.create();

		personajes = new FlxTypedGroup<Personaje>();
		personajesBot = new FlxTypedGroup<Personaje>();
		var opc = 0;

		add(personajes);
		add(personajesBot);

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

		// Coordenadas del bot
		for (i in 0...6)
		{
			var personaje:Personaje = new Personaje();
			personaje = new Personaje(0, -20, curPersonajesBot[i]);
			personaje.ID = i;

			personaje.scale.set(0.5, 0.5);
			personajesBot.add(personaje);
		}

		for (i in 6...12)
		{
			var personaje:Personaje = new Personaje();
			personaje = new Personaje(0, -10, curPersonajesBot[i]);
			personaje.ID = i;

			personaje.scale.set(0.5, 0.5);
			personajesBot.add(personaje);
		}

		for (i in 12...18)
		{
			var personaje:Personaje = new Personaje();
			personaje = new Personaje(0, -10, curPersonajesBot[i]);
			personaje.ID = i;

			personaje.scale.set(0.5, 0.5);
			personajesBot.add(personaje);
		}

		for (i in 18...24)
		{
			var personaje:Personaje = new Personaje();
			personaje = new Personaje(0, -10, curPersonajesBot[i]);
			personaje.ID = i;

			personaje.scale.set(0.5, 0.5);
			personajesBot.add(personaje);
		}

		// Ordena los personajes alfabéticamente

		// Actualiza la posición de los personajes en la interfaz
		// updatePersonajesDisplay();

		// Para acceder aun sprite de un personaje
		personajes.forEach(function(spr:Personaje)
		{
			if (spr.ID == 1) {}
		});

		var randomizer = new Randomizer();

		while (randomizer.numeros.length > 0)
		{
			var numeroAleatorio = randomizer.obtenerNumeroAleatorio();
			trace(numeroAleatorio); // Imprime el número aleatorio
			switch (numeroAleatorio)
			{
				// 21 opciones
				case 1: // blusa
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 2 || spr.ID == 15 || spr.ID == 16 || spr.ID == 20 || spr.ID == 24)
						{
							spr.kill();
						}
					});
				case 2: // traje
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 1 || spr.ID == 6 || spr.ID == 8 || spr.ID == 9 || spr.ID == 11 || spr.ID == 14 || spr.ID == 22)
						{
							spr.kill();
						}
					});
				case 3: // playera
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 0 || spr.ID == 4 || spr.ID == 7 || spr.ID == 10 || spr.ID == 12 || spr.ID == 13 || spr.ID == 17 || spr.ID == 18)
						{
							spr.kill();
						}
					});
				case 4: // sueter
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 3 || spr.ID == 5 || spr.ID == 19 || spr.ID == 21 || spr.ID == 23)
						{
							spr.kill();
						}
					});
				case 5: // tiene sombrero
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 0 || spr.ID == 18 || spr.ID == 19)
						{
							spr.kill();
						}
					});
				case 6: // pelo negro
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 0 || spr.ID == 1 || spr.ID == 5 || spr.ID == 7 || spr.ID == 10 || spr.ID == 11 || spr.ID == 12 || spr.ID == 13
							|| spr.ID == 14 || spr.ID == 23)
						{
							spr.kill();
						}
					});
				case 7: // pelo cafe
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 2 || spr.ID == 3 || spr.ID == 4 || spr.ID == 16 || spr.ID == 18 || spr.ID == 19 || spr.ID == 20 || spr.ID == 24)
						{
							spr.kill();
						}
					});
				case 8: // pelo wero
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 15)
						{
							spr.kill();
						}
					});
				case 9: // pelo pelirrojo
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 22)
						{
							spr.kill();
						}
					});
				case 10: // piel oscura
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 0 || spr.ID == 2)
						{
							spr.kill();
						}
					});
				case 11: // piel cafe
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 23 || spr.ID == 16)
						{
							spr.kill();
						}
					});
				case 12: // piel clara
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 1 || spr.ID == 3 || spr.ID == 4 || spr.ID == 5 || spr.ID == 6 || spr.ID == 7 || spr.ID == 8 || spr.ID == 9
							|| spr.ID == 10 || spr.ID == 11 || spr.ID == 12 || spr.ID == 13 || spr.ID == 14 || spr.ID == 15 || spr.ID == 17 || spr.ID == 18
							|| spr.ID == 19 || spr.ID == 20 || spr.ID == 21 || spr.ID == 22 || spr.ID == 24)
						{
							spr.kill();
						}
					});
				case 13: // hombre
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 0 || spr.ID == 1 || spr.ID == 2 || spr.ID == 3 || spr.ID == 5 || spr.ID == 6 || spr.ID == 8 || spr.ID == 9
							|| spr.ID == 10 || spr.ID == 11 || spr.ID == 12 || spr.ID == 13 || spr.ID == 14 || spr.ID == 15 || spr.ID == 17 || spr.ID == 18
							|| spr.ID == 19 || spr.ID == 23)
						{
							spr.kill();
						}
					});
				case 14: // mujer
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 4 || spr.ID == 7 || spr.ID == 13 || spr.ID == 14 || spr.ID == 16 || spr.ID == 20 || spr.ID == 22 || spr.ID == 24)
						{
							spr.kill();
						}
					});
				case 15: // joven
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 0 || spr.ID == 1 || spr.ID == 2 || spr.ID == 3 || spr.ID == 4 || spr.ID == 5 || spr.ID == 6 || spr.ID == 7
							|| spr.ID == 10 || spr.ID == 11 || spr.ID == 12 || spr.ID == 14 || spr.ID == 15 || spr.ID == 16 || spr.ID == 18 || spr.ID == 19
							|| spr.ID == 20 || spr.ID == 22 || spr.ID == 23 || spr.ID == 24)
						{
							spr.kill();
						}
					});
				case 16: // mayor de edad
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 21 || spr.ID == 17 || spr.ID == 13 || spr.ID == 9 || spr.ID == 8)
						{
							spr.kill();
						}
					});
				case 17: // bello facial
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 5 || spr.ID == 6 || spr.ID == 9 || spr.ID == 18 || spr.ID == 21 || spr.ID == 23)
						{
							spr.kill();
						}
					});
				case 18: // afroamericano
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 0 || spr.ID == 16 || spr.ID == 24)
						{
							spr.kill();
						}
					});
				case 19: // caucasico
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 1 || spr.ID == 2 || spr.ID == 3 || spr.ID == 4 || spr.ID == 5 || spr.ID == 6 || spr.ID == 7 || spr.ID == 8
							|| spr.ID == 9 || spr.ID == 12 || spr.ID == 13 || spr.ID == 14 || spr.ID == 15 || spr.ID == 18 || spr.ID == 19 || spr.ID == 20
							|| spr.ID == 21 || spr.ID == 22 || spr.ID == 23)
						{
							spr.kill();
						}
					});
				case 20: // asiatico
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 17 || spr.ID == 11 || spr.ID == 10)
						{
							spr.kill();
						}
					});
				case 21: // usa lentes
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 1 || spr.ID == 7 || spr.ID == 8 || spr.ID == 12 || spr.ID == 13 || spr.ID == 16 || spr.ID == 17 || spr.ID == 19
							|| spr.ID == 21 || spr.ID == 23 || spr.ID == 24)
						{
							spr.kill();
						}
					});
				case 22: // pelo blanco
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.ID == 8 || spr.ID == 9 || spr.ID == 17 || spr.ID == 21)
						{
							spr.kill();
						}
					});
			}
		}
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
}

public class Randomizer
{
	var numeros:Array<Int>;

	public function new()
	{
		// Inicializa el array con los números del 1 al 21
		numeros = new Array<Int>();
		for (i in 1...22)
		{
			numeros.push(i);
		}
	}

	public function obtenerNumeroAleatorio():Int
	{
		// Comprueba si el array está vacío
		if (numeros.length == 0)
		{
			throw "No quedan números";
		}

		// Genera un índice aleatorio
		var indiceAleatorio = Math.floor(Math.random() * numeros.length);

		// Obtiene y elimina el número en el índice aleatorio
		var numero = numeros[indiceAleatorio];
		numeros.splice(indiceAleatorio, 1);

		return numero;
	}
}
