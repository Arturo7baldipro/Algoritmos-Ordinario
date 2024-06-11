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

class PlayState extends FlxState
{
	var afroamericanoTXT:FlxText;
	var afroamericanoBTS:FlxButton;
	var caucasicoTXT:FlxText;
	var caucasicoBTS:FlxButton;
	var asiaticoTXT:FlxText;
	var asiaticoBTS:FlxButton;
	var playeraTXT:FlxText;
	var playeraBTS:FlxButton;
	var sueterTXT:FlxText;
	var sueterBTS:FlxButton;
	var trajeTXT:FlxText;
	var trajeBTS:FlxButton;
	var blusaTXT:FlxText;
	var blusaBTS:FlxButton;
	var gorraTXT:FlxText;
	var gorraBTS:FlxButton;
	var peloNegroTXT:FlxText;
	var peloNegroBTS:FlxButton;
	var peloCafeTXT:FlxText;
	var peloCafeBTS:FlxButton;
	var peloWeroTXT:FlxText;
	var peloWeroBTS:FlxButton;
	var peloPelirojoTXT:FlxText;
	var peloPelirojoBTS:FlxButton;
	var pielOscuraTXT:FlxText;
	var pielOscuraBTS:FlxButton;
	var pielCafeTXT:FlxText;
	var pielCafeBTS:FlxButton;
	var pielClaraTXT:FlxText;
	var pielClaraBTS:FlxButton;
	var hombreTXT:FlxText;
	var hombreBTS:FlxButton;
	var mujerTXT:FlxText;
	var mujerBTS:FlxButton;
	var jovenTXT:FlxText;
	var jovenBTS:FlxButton;
	var mayorTXT:FlxText;
	var mayorBTS:FlxButton;
	var belloFacialTXT:FlxText;
	var belloFacialBTS:FlxButton;
	var lentesTXT:FlxText;
	var lentesBTS:FlxButton;
	var peloBlancoTXT:FlxText;
	var peloBlancoBTS:FlxButton;

	var counter:Int = 0;
	var gameOver:Bool = false;
	var playerTurn:Bool = true;
	var personajesNombres = new FlxTypedGroup<FlxText>();

	var personajesPlayer = new FlxTypedGroup<Personaje>();

	var curPersonajesPlayer:Array<String> = [
		/*'Pepe', 'Sech'*/ 'juan', 'alejandro', 'andrea', 'andres', 'pedro', 'antonio', 'adolf', 'isabella', 'jenkins', 'carlos', 'jun', 'kazuma', 'kevin',
		'leticia', 'lucas', 'lucy', 'maria', 'miyagi', 'rafa', 'raul', 'regina', 'roberto', 'sofia', 'travis', 'valentina'
	];

	var personajesBot = new FlxTypedGroup<Personaje>();

	var curPersonajesBot:Array<String> = [
		/*'Pepe', 'Sech'*/ 'juan', 'alejandro', 'andrea', 'andres', 'pedro', 'antonio', 'adolf', 'isabella', 'jenkins', 'carlos', 'jun', 'kazuma', 'kevin',
		'leticia', 'lucas', 'lucy', 'maria', 'miyagi', 'rafa', 'raul', 'regina', 'roberto', 'sofia', 'travis', 'valentina'
	];

	// Con este variable se accede al personaje aleatorio
	var personajeAleatorio = new FlxTypedGroup<Personaje>();

	public static var personajeAleatorioTXT = new FlxTypedGroup<Personaje>();

	private var inputText:FlxInputText;

	override public function create()
	{
		super.create();

		// BTS = Button Si, TXT == text

		afroamericanoTXT = new FlxText(3, 388);
		afroamericanoTXT.text = "Afroamericano";
		afroamericanoTXT.size = 10;
		add(afroamericanoTXT);

		afroamericanoBTS = new FlxButton(afroamericanoTXT.x + 90, afroamericanoTXT.y, "Si", afroamericanoFunction_SI);
		add(afroamericanoBTS);

		caucasicoTXT = new FlxText(3, afroamericanoTXT.y + 20);
		caucasicoTXT.text = "Caucastico";
		caucasicoTXT.size = 10;
		add(caucasicoTXT);

		caucasicoBTS = new FlxButton(caucasicoTXT.x + 90, caucasicoTXT.y, "Si", caucasicoFunction_SI);
		add(caucasicoBTS);

		asiaticoTXT = new FlxText(3, caucasicoTXT.y + 20);
		asiaticoTXT.text = "Asiatico";
		asiaticoTXT.size = 10;
		add(asiaticoTXT);

		asiaticoBTS = new FlxButton(caucasicoTXT.x + 90, asiaticoTXT.y, "Si", asiaticoFunction_SI);
		add(asiaticoBTS);

		playeraTXT = new FlxText(3, asiaticoTXT.y + 20);
		playeraTXT.text = "Playera";
		playeraTXT.size = 10;
		add(playeraTXT);

		playeraBTS = new FlxButton(playeraTXT.x + 90, playeraTXT.y, "Si", playeraFunction_SI);
		add(playeraBTS);

		sueterTXT = new FlxText(3, playeraTXT.y + 20);
		sueterTXT.text = "Sueter";
		sueterTXT.size = 10;
		add(sueterTXT);

		sueterBTS = new FlxButton(sueterTXT.x + 90, sueterTXT.y, "Si", sueterFunction_SI);
		add(sueterBTS);

		trajeTXT = new FlxText(3, sueterTXT.y + 20);
		trajeTXT.text = "Traje";
		trajeTXT.size = 10;
		add(trajeTXT);

		trajeBTS = new FlxButton(trajeTXT.x + 90, trajeTXT.y, "Si", trajeFunction_SI);
		add(trajeBTS);

		blusaTXT = new FlxText(3, trajeTXT.y + 20);
		blusaTXT.text = "Blusa";
		blusaTXT.size = 10;
		add(blusaTXT);

		blusaBTS = new FlxButton(blusaTXT.x + 90, blusaTXT.y, "Si", blusaFunction_SI);
		add(blusaBTS);

		gorraTXT = new FlxText(3, blusaTXT.y + 20);
		gorraTXT.text = "Gorra";
		gorraTXT.size = 10;
		add(gorraTXT);

		gorraBTS = new FlxButton(gorraTXT.x + 90, gorraTXT.y, "Si", gorraFunction_SI);
		add(gorraBTS);

		peloNegroTXT = new FlxText(3, gorraTXT.y + 20);
		peloNegroTXT.text = "Pelo Negro";
		peloNegroTXT.size = 10;
		add(peloNegroTXT);

		peloNegroBTS = new FlxButton(peloNegroTXT.x + 90, peloNegroTXT.y, "Si", peloNegroFunction_SI);
		add(peloNegroBTS);

		peloCafeTXT = new FlxText(3, peloNegroTXT.y + 20);
		peloCafeTXT.text = "Pelo Cafe";
		peloCafeTXT.size = 10;
		add(peloCafeTXT);

		peloCafeBTS = new FlxButton(peloCafeTXT.x + 90, peloCafeTXT.y, "Si", peloCafeFunction_SI);
		add(peloCafeBTS);

		peloWeroTXT = new FlxText(3, peloCafeTXT.y + 20);
		peloWeroTXT.text = "Pelo Wero";
		peloWeroTXT.size = 10;
		add(peloWeroTXT);

		peloWeroBTS = new FlxButton(peloWeroTXT.x + 90, peloWeroTXT.y, "Si", peloWeroFunction_SI);
		add(peloWeroBTS);

		peloPelirojoTXT = new FlxText(3, peloWeroTXT.y + 20);
		peloPelirojoTXT.text = "Pelo Pelirojo";
		peloPelirojoTXT.size = 10;
		add(peloPelirojoTXT);

		peloPelirojoBTS = new FlxButton(peloPelirojoTXT.x + 90, peloPelirojoTXT.y, "Si", peloPelirojoFunction_SI);
		add(peloPelirojoBTS);

		pielOscuraTXT = new FlxText(3, peloPelirojoTXT.y + 20);
		pielOscuraTXT.text = "Piel Oscura";
		pielOscuraTXT.size = 10;
		add(pielOscuraTXT);

		pielOscuraBTS = new FlxButton(pielOscuraTXT.x + 90, pielOscuraTXT.y, "Si", pielOscuraFunction_SI);
		add(pielOscuraBTS);

		pielCafeTXT = new FlxText(3, pielOscuraTXT.y + 20);
		pielCafeTXT.text = "Piel Cafe";
		pielCafeTXT.size = 10;
		add(pielCafeTXT);

		pielCafeBTS = new FlxButton(pielCafeTXT.x + 90, pielCafeTXT.y, "Si", pielCafeFunction_SI);
		add(pielCafeBTS);

		pielClaraTXT = new FlxText(3, pielCafeTXT.y + 20);
		pielClaraTXT.text = "Piel Clara";
		pielClaraTXT.size = 10;
		add(pielClaraTXT);

		pielClaraBTS = new FlxButton(pielClaraTXT.x + 90, pielClaraTXT.y, "Si", pielClaraFunction_SI);
		add(pielClaraBTS);

		hombreTXT = new FlxText(afroamericanoTXT.x + 260, 388);
		hombreTXT.text = "Hombre";
		hombreTXT.size = 10;
		add(hombreTXT);

		hombreBTS = new FlxButton(hombreTXT.x + 90, hombreTXT.y, "Si", hombreFunction_SI);
		add(hombreBTS);

		mujerTXT = new FlxText(afroamericanoTXT.x + 260, hombreTXT.y + 20);
		mujerTXT.text = "Mujer";
		mujerTXT.size = 10;
		add(mujerTXT);

		mujerBTS = new FlxButton(mujerTXT.x + 90, mujerTXT.y, "Si", mujerFunction_SI);
		add(mujerBTS);

		jovenTXT = new FlxText(afroamericanoTXT.x + 260, mujerTXT.y + 20);
		jovenTXT.text = "Joven";
		jovenTXT.size = 10;
		add(jovenTXT);

		jovenBTS = new FlxButton(jovenTXT.x + 90, jovenTXT.y, "Si", jovenFunction_SI);
		add(jovenBTS);

		mayorTXT = new FlxText(afroamericanoTXT.x + 260, jovenTXT.y + 20);
		mayorTXT.text = "Mayor";
		mayorTXT.size = 10;
		add(mayorTXT);

		mayorBTS = new FlxButton(mayorTXT.x + 90, mayorTXT.y, "Si", mayorFunction_SI);
		add(mayorBTS);

		belloFacialTXT = new FlxText(afroamericanoTXT.x + 260, mayorTXT.y + 20);
		belloFacialTXT.text = "Bello Facial";
		belloFacialTXT.size = 10;
		add(belloFacialTXT);

		belloFacialBTS = new FlxButton(belloFacialTXT.x + 90, belloFacialTXT.y, "Si", belloFacialFunction_SI);
		add(belloFacialBTS);

		lentesTXT = new FlxText(afroamericanoTXT.x + 260, belloFacialTXT.y + 20);
		lentesTXT.text = "Lentes";
		lentesTXT.size = 10;
		add(lentesTXT);

		lentesBTS = new FlxButton(lentesTXT.x + 90, lentesTXT.y, "Si", lentesFunction_SI);
		add(lentesBTS);

		peloBlancoTXT = new FlxText(afroamericanoTXT.x + 260, lentesTXT.y + 20);
		peloBlancoTXT.text = "Pelo Blanco";
		peloBlancoTXT.size = 10;
		add(peloBlancoTXT);

		peloBlancoBTS = new FlxButton(peloBlancoTXT.x + 90, peloBlancoTXT.y, "Si", peloBlancoFuncion_SI);
		add(peloBlancoBTS);

		FlxG.mouse.visible = true;

		personajesPlayer = new FlxTypedGroup<Personaje>();
		add(personajesPlayer);

		personajesBot = new FlxTypedGroup<Personaje>();
		add(personajesBot);

		personajesNombres = new FlxTypedGroup<FlxText>();
		add(personajesNombres);

		// Ordena los personajesPlayer alfabéticamente
		curPersonajesPlayer = mergeSort(curPersonajesPlayer, compareStrings);

		// Crea los personajesPlayer
		createPersonajesPlayer();
		createPersonajesBot();

		createNombresPlayer();

		agregarPersonajeAleatorio();

		// Para acceder aun Personaje Especifico
		personajesPlayer.forEach(function(spr:Personaje)
		{
			if (spr.ID == 1)
			{
				// Prueba
			}
		});

		personajesBot.forEach(function(spr:Personaje)
		{
			spr.color = FlxColor.YELLOW;
		});

		inputText = new FlxInputText(335, 582, 100, "");
		inputText.maxLength = 10;
		add(inputText);

		var inputTXT:FlxText = new FlxText(inputText.x, inputText.y - 20);
		inputTXT.text = "Introducir Personaje";
		inputTXT.size = 10;
		add(inputTXT);

		// inteligenciaInteligensiosa();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		// Con Esto probe que el randomizador funciona
		if (FlxG.keys.justPressed.UP)
		{
			// agregarPersonajeAleatorio();

			personajeAleatorio.forEach(function(spr:Personaje)
			{
				if (spr.curCharacter == 'juan')
				{
					FlxG.camera.flash(FlxColor.WHITE, 1);
				}
			});
		}

		if (FlxG.keys.justPressed.ESCAPE)
		{
			openSubState(new GameOverSubstate());
		}

		// Funciona ((ahora mismo esta con las caracteristicas de sech))
		personajesPlayer.forEach(function(spr:Personaje)
		{
			if (spr.ID == 1)
			{
				//
			}
		});

		// Funciona (ahora mismo esta con las caracteristicas de sech)
		personajeAleatorio.forEach(function(spr:Personaje)
		{
			if (inputText.text == spr.curCharacter && FlxG.keys.justPressed.ENTER)
			{
				spr.kill();
				inputText.text = "";
				openSubState(new WinSubstate());
			}
			else if (inputText.text != spr.curCharacter && FlxG.keys.justPressed.ENTER)
			{
				inputText.text = "";
				openSubState(new GameOverSubstate());
			}
		});

		if (!gameOver)
		{
			if (!playerTurn)
			{
				if (counter >= 2)
				{
					bot_Adivina();
					playerTurn = true;
				}

				var counterString:String = Std.string(counter);
				trace("Ete Counter: " + counterString);
				// turno de la ai
				turnoInteligencia();
				playerTurn = true;
			}
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

	private function turnoInteligencia():Void
	{
		inteligenciaInteligensiosa();
	}

	private function thePlayerTurn():Void
	{
		if (playerTurn && !gameOver)
		{
			// Fin del turno del jugador
			playerTurn = false;
		}
	}

	// Inteligencia
	public function inteligenciaInteligensiosa()
	{
		counter++;
		var randomizer = new Randomizer();

		var numeroAleatorio = randomizer.obtenerNumeroAleatorio();
		// trace(numeroAleatorio); // Imprime el número aleatorio

		switch (numeroAleatorio)
		{
			// 21 opciones
			case 1: // blusa

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (spr.curRopa != 'blusa' && spr.ID == 2 || spr.ID == 15 || spr.ID == 16 || spr.ID == 20 || spr.ID == 24)
						{
							spr.kill();
						}
					});
				});

			case 2: // traje

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curRopa != 'traje' && spr.ID == 1 || spr.ID == 6 || spr.ID == 8 || spr.ID == 9 || spr.ID == 11 || spr.ID == 14 || spr.ID == 22)
						{
							spr.kill();
						}
					});
				});

			case 3: // playera

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curRopa != 'playera' && spr.ID == 0 || spr.ID == 4 || spr.ID == 7 || spr.ID == 10 || spr.ID == 12 || spr.ID == 13
							|| spr.ID == 17 || spr.ID == 18)
						{
							spr.kill();
						}
					});
				});

			case 4: // sueter

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curRopa != 'sueter' && spr.ID == 3 || spr.ID == 5 || spr.ID == 19 || spr.ID == 21 || spr.ID == 23)
						{
							spr.kill();
						}
					});
				});

			case 5: // tiene sombrero

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curSombrero != 'si' && spr.ID == 0 || spr.ID == 18 || spr.ID == 19)
						{
							spr.kill();
						}
					});
				});

			case 6: // pelo negro

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curPelo != 'negro' && spr.ID == 0 || spr.ID == 1 || spr.ID == 5 || spr.ID == 7 || spr.ID == 10 || spr.ID == 11
							|| spr.ID == 12 || spr.ID == 13 || spr.ID == 14 || spr.ID == 23)
						{
							spr.kill();
						}
					});
				});

			case 7: // pelo cafe

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curPelo != 'cafe' && spr.ID == 2 || spr.ID == 3 || spr.ID == 4 || spr.ID == 16 || spr.ID == 18 || spr.ID == 19
							|| spr.ID == 20 || spr.ID == 24)
						{
							spr.kill();
						}
					});
				});

			case 8: // pelo wero

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curPelo != 'wero' && spr.ID == 15)
						{
							spr.kill();
						}
					});
				});

			case 9: // pelo pelirrojo

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curPelo != 'pelirojo' && spr.ID == 22)
						{
							spr.kill();
						}
					});
				});

			case 10: // piel oscura

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curPiel != 'oscura' && spr.ID == 0 || spr.ID == 2)
						{
							spr.kill();
						}
					});
				});

			case 11: // piel cafe

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curPiel != 'cafe' && spr.ID == 23 || spr.ID == 16)
						{
							spr.kill();
						}
					});
				});

			case 12: // piel clara

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curPiel != 'clara' && spr.ID == 1 || spr.ID == 3 || spr.ID == 4 || spr.ID == 5 || spr.ID == 6 || spr.ID == 7
							|| spr.ID == 8 || spr.ID == 9 || spr.ID == 10 || spr.ID == 11 || spr.ID == 12 || spr.ID == 13 || spr.ID == 14 || spr.ID == 15
							|| spr.ID == 17 || spr.ID == 18 || spr.ID == 19 || spr.ID == 20 || spr.ID == 21 || spr.ID == 22 || spr.ID == 24)
						{
							spr.kill();
						}
					});
				});

			case 13: // hombre

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curSexo != 'hombre' && spr.ID == 0 || spr.ID == 1 || spr.ID == 2 || spr.ID == 3 || spr.ID == 5 || spr.ID == 6
							|| spr.ID == 8 || spr.ID == 9 || spr.ID == 10 || spr.ID == 11 || spr.ID == 12 || spr.ID == 13 || spr.ID == 14 || spr.ID == 15
							|| spr.ID == 17 || spr.ID == 18 || spr.ID == 19 || spr.ID == 23)
						{
							spr.kill();
						}
					});
				});

			case 14: // mujer

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curSexo != 'mujer' && spr.ID == 4 || spr.ID == 7 || spr.ID == 13 || spr.ID == 14 || spr.ID == 16 || spr.ID == 20
							|| spr.ID == 22 || spr.ID == 24)
						{
							spr.kill();
						}
					});
				});

			case 15: // joven

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curEdad != 'joven' && spr.ID == 0 || spr.ID == 1 || spr.ID == 2 || spr.ID == 3 || spr.ID == 4 || spr.ID == 5
							|| spr.ID == 6 || spr.ID == 7 || spr.ID == 10 || spr.ID == 11 || spr.ID == 12 || spr.ID == 14 || spr.ID == 15 || spr.ID == 16
							|| spr.ID == 18 || spr.ID == 19 || spr.ID == 20 || spr.ID == 22 || spr.ID == 23 || spr.ID == 24)
						{
							spr.kill();
						}
					});
				});

			case 16: // mayor de edad

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curEdad != 'mayor' && spr.ID == 21 || spr.ID == 17 || spr.ID == 13 || spr.ID == 9 || spr.ID == 8)
						{
							spr.kill();
						}
					});
				});

			case 17: // bello facial

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curBelloFacial != 'si' && spr.ID == 5 || spr.ID == 6 || spr.ID == 9 || spr.ID == 18 || spr.ID == 21 || spr.ID == 23)
						{
							spr.kill();
						}
					});
				});

			case 18: // afroamericano

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curRaza != 'afroamericano' && spr.ID == 0 || spr.ID == 16 || spr.ID == 24)
						{
							spr.kill();
						}
					});
				});

			case 19: // caucasico

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curRaza != 'caucasica' && spr.ID == 1 || spr.ID == 2 || spr.ID == 3 || spr.ID == 4 || spr.ID == 5 || spr.ID == 6
							|| spr.ID == 7 || spr.ID == 8 || spr.ID == 9 || spr.ID == 12 || spr.ID == 13 || spr.ID == 14 || spr.ID == 15 || spr.ID == 18
							|| spr.ID == 19 || spr.ID == 20 || spr.ID == 21 || spr.ID == 22 || spr.ID == 23)
						{
							spr.kill();
						}
					});
				});

			case 20: // asiatico

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curRaza != 'asiatica' && spr.ID == 17 || spr.ID == 11 || spr.ID == 10)
						{
							spr.kill();
						}
					});
				});

			case 21: // usa lentes

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curLentes != 'si' && spr.ID == 1 || spr.ID == 7 || spr.ID == 8 || spr.ID == 12 || spr.ID == 13 || spr.ID == 16
							|| spr.ID == 17 || spr.ID == 19 || spr.ID == 21 || spr.ID == 23 || spr.ID == 24)
						{
							spr.kill();
						}
					});
				});

			case 22: // pelo blanco

				personajeAleatorio.forEach(function(sprA:Personaje)
				{
					personajesBot.forEach(function(spr:Personaje)
					{
						if (sprA.curPelo != 'blanco' && spr.ID == 1 || spr.ID == 7 || spr.ID == 8 || spr.ID == 12 || spr.ID == 13 || spr.ID == 16
							|| spr.ID == 17 || spr.ID == 19 || spr.ID == 21 || spr.ID == 23 || spr.ID == 24)
						{
							spr.kill();
						}
					});
				});
		}

		/*
			personajeAleatorio.forEach(function(sprA:Personaje)
			{
				if (personajesBot.length > 0)
				{
					var personajeAdivinado = personajesBot.members[numeroAleatorio];
					if (personajeAdivinado != null)
					{
						trace("El bot adivina que el personaje es: " + personajeAdivinado.curCharacter);
						openSubState(new GameOverSubstate());
					}
				}
				else
				{
					trace("No quedan personajes para adivinar.");
				}
			});
		 */
	}

	public function bot_Adivina()
	{
		var randomizer = new RandomizerPersonajeRandom();

		var numeroAleatorio = randomizer.obtenerNumeroAleatorio();
		trace(numeroAleatorio); // Imprime el número aleatorio

		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			if (personajesBot.length > 0)
			{
				var indiceAleatorio = Math.floor(Math.random() * personajesBot.length);
				var personajeAdivinado = personajesBot.members[indiceAleatorio];
				if (personajeAdivinado != null)
				{
					trace("El bot adivina que el personaje es: " + personajeAdivinado.curCharacter);
					personajesBot.remove(personajesBot.members[indiceAleatorio], true);
				}
				if (sprA.curCharacter == personajeAdivinado.curCharacter)
				{
					trace("El bot adivino el personaje es: " + sprA.curCharacter);
					openSubState(new GameOverSubstate());
				}
			}
			else
			{
				trace("No quedan personajes para adivinar.");
				openSubState(new WinSubstate());
			}
		});
	}

	// Función de comparación para ordenar alfabeticamente
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

	private function onTextChanged(inputText:FlxInputText):Void
	{
		// Convertir texto a minúsculas
	}

	// Método para actualizar la interfaz gráfica con los personajesPlayer ordenados
	public function updatePersonajesDisplay():Void
	{
		personajesPlayer.clear();
		createPersonajesPlayer();
	}

	// Método para crear y posicionar los personajesPlayer
	public function createPersonajesPlayer():Void
	{
		for (i in 0...6)
		{
			var personaje:Personaje = new Personaje(0, -20, curPersonajesPlayer[i]);
			personaje.ID = i;
			personaje.x = -50 + (i * 80);
			personaje.y -= 30;
			personaje.scale.set(0.25, 0.25);
			personajesPlayer.add(personaje);
		}

		for (i in 6...12)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajesPlayer[i]);
			personaje.ID = i;
			personaje.x = -530 + (i * 80);
			personaje.y += 50;
			personaje.scale.set(0.25, 0.25);
			personajesPlayer.add(personaje);
		}

		for (i in 12...18)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajesPlayer[i]);
			personaje.ID = i;
			personaje.x = -1010 + (i * 80);
			personaje.y += 140;
			personaje.scale.set(0.25, 0.25);
			personajesPlayer.add(personaje);
		}

		for (i in 18...24)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajesPlayer[i]);
			personaje.ID = i;
			personaje.x = -1490 + (i * 80);
			personaje.y += 230;
			personaje.scale.set(0.25, 0.25);
			personajesPlayer.add(personaje);
		}
	}

	// Método para crear y posicionar los personajesBot
	public function createPersonajesBot():Void
	{
		for (i in 0...6)
		{
			var personaje:Personaje = new Personaje(0, -20, curPersonajesBot[i]);
			personaje.ID = i;
			personaje.x = 640 + (i * 80);
			personaje.y -= 30;
			personaje.scale.set(0.25, 0.25);
			personajesBot.add(personaje);
		}

		for (i in 6...12)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajesBot[i]);
			personaje.ID = i;
			personaje.x = 160 + (i * 80);
			personaje.y += 50;
			personaje.scale.set(0.25, 0.25);
			personajesBot.add(personaje);
		}

		for (i in 12...18)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajesBot[i]);
			personaje.ID = i;
			personaje.x = -320 + (i * 80);
			personaje.y += 140;
			personaje.scale.set(0.25, 0.25);
			personajesBot.add(personaje);
		}

		for (i in 18...24)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajesBot[i]);
			personaje.ID = i;
			personaje.x = -800 + (i * 80);
			personaje.y += 230;
			personaje.scale.set(0.25, 0.25);
			personajesBot.add(personaje);
		}
	}

	// Crea nombres de los personajes
	public function createNombresPlayer():Void
	{
		for (i in 0...6)
		{
			var personajetxt:FlxText = new FlxText();
			personajetxt.ID = i;
			personajetxt.text = curPersonajesPlayer[i];
			personajetxt.x = 60 + (i * 75);
			personajetxt.y += 20;
			personajetxt.size = 10;
			personajesNombres.add(personajetxt);
		}

		for (i in 6...12)
		{
			var personajetxt:FlxText = new FlxText();
			personajetxt.ID = i;
			personajetxt.text = curPersonajesPlayer[i];
			personajetxt.x = -420 + (i * 80);
			personajetxt.size = 10;
			personajetxt.y += 115;
			personajesNombres.add(personajetxt);
		}

		for (i in 12...18)
		{
			var personajetxt:FlxText = new FlxText();
			personajetxt.ID = i;
			personajetxt.text = curPersonajesPlayer[i];
			personajetxt.x = -900 + (i * 80);
			personajetxt.size = 10;
			personajetxt.y += 210;
			personajesNombres.add(personajetxt);
		}

		for (i in 18...24)
		{
			var personajetxt:FlxText = new FlxText();
			personajetxt.ID = i;
			personajetxt.text = curPersonajesPlayer[i];
			personajetxt.x = -1490 + (i * 85);
			personajetxt.size = 10;
			personajetxt.y += 300;
			personajesNombres.add(personajetxt);
		}
	}

	private function flashScreen():Void
	{
		// Hacer que la pantalla parpadee (Para detectar si pasa algo)
		FlxG.camera.flash(FlxColor.WHITE, 0.5);
	}

	public function afroamericanoFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curRaza == 'afroamericana' && sprA.curRaza != 'afroamericana')
				{
					spr.kill();
				}
			});
		});
		afroamericanoTXT.kill();
		afroamericanoBTS.kill();
	}

	public function caucasicoFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curRaza == 'caucasica' && sprA.curRaza != 'caucasica')
				{
					spr.kill();
				}
			});
		});
		caucasicoTXT.kill();
		caucasicoBTS.kill();
	}

	public function asiaticoFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curRaza == 'asiatica' && sprA.curRaza != 'asiatica')
				{
					spr.kill();
				}
			});
		});
		asiaticoTXT.kill();
		asiaticoBTS.kill();
	}

	public function playeraFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curRopa == 'playera' && sprA.curRopa != 'playera')
				{
					spr.kill();
				}
			});
		});
		playeraTXT.kill();
		playeraBTS.kill();
	}

	public function sueterFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curRopa == 'sueter' && sprA.curRopa != 'sueter')
				{
					spr.kill();
				}
			});
		});
		sueterTXT.kill();
		sueterBTS.kill();
	}

	public function trajeFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curRopa == 'traje' && sprA.curRopa != 'traje')
				{
					spr.kill();
				}
			});
		});
		trajeTXT.kill();
		trajeBTS.kill();
	}

	public function blusaFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curRopa == 'blusa' && sprA.curRopa != 'blusa')
				{
					spr.kill();
				}
			});
		});
		blusaTXT.kill();
		blusaBTS.kill();
	}

	public function gorraFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curSombrero == 'si' && sprA.curSombrero != 'si')
				{
					spr.kill();
				}
			});
		});
		gorraTXT.kill();
		gorraBTS.kill();
	}

	public function peloNegroFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curPelo == 'negro' && sprA.curPelo != 'negro')
				{
					spr.kill();
				}
			});
		});
		peloNegroTXT.kill();
		peloNegroBTS.kill();
	}

	public function peloCafeFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curPelo == 'cafe' && sprA.curPelo != 'cafe')
				{
					spr.kill();
				}
			});
		});
		peloCafeTXT.kill();
		peloCafeBTS.kill();
	}

	public function peloWeroFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curPelo == 'wero' && sprA.curPelo != 'wero')
				{
					spr.kill();
				}
			});
		});
		peloWeroTXT.kill();
		peloWeroBTS.kill();
	}

	public function peloPelirojoFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curPelo == 'pelirojo' && sprA.curPelo != 'pelirojo')
				{
					spr.kill();
				}
			});
		});
		peloPelirojoTXT.kill();
		peloPelirojoBTS.kill();
	}

	public function pielOscuraFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curPiel == 'oscura' && sprA.curPiel != 'oscura')
				{
					spr.kill();
				}
			});
		});
		pielOscuraTXT.kill();
		pielOscuraBTS.kill();
	}

	public function pielCafeFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curPiel == 'cafe' && sprA.curPiel != 'cafe')
				{
					spr.kill();
				}
			});
		});
		pielCafeTXT.kill();
		pielCafeBTS.kill();
	}

	public function pielClaraFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curPiel == 'clara' && sprA.curPiel != 'clara')
				{
					spr.kill();
				}
			});
		});
		pielClaraTXT.kill();
		pielClaraBTS.kill();
	}

	public function hombreFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curSexo == 'pelirojo' && sprA.curSexo != 'pelirojo')
				{
					spr.kill();
				}
			});
		});
		hombreTXT.kill();
		hombreBTS.kill();
	}

	public function mujerFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curSexo == 'mujer' && sprA.curSexo != 'mujer')
				{
					spr.kill();
				}
			});
		});
		mujerTXT.kill();
		mujerBTS.kill();
	}

	public function jovenFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curEdad == 'joven' && sprA.curEdad != 'joven')
				{
					spr.kill();
				}
			});
		});
		jovenTXT.kill();
		jovenBTS.kill();
	}

	public function mayorFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curEdad == 'mayor' && sprA.curEdad != 'mayor')
				{
					spr.kill();
				}
			});
		});
		mayorTXT.kill();
		mayorBTS.kill();
	}

	public function belloFacialFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curBelloFacial == 'si' && sprA.curBelloFacial != 'si')
				{
					spr.kill();
				}
			});
		});
		belloFacialTXT.kill();
		belloFacialBTS.kill();
	}

	public function lentesFunction_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curLentes == 'si' && sprA.curLentes != 'si')
				{
					spr.kill();
				}
			});
		});
		lentesTXT.kill();
		lentesBTS.kill();
	}

	public function peloBlancoFuncion_SI()
	{
		thePlayerTurn();
		personajeAleatorio.forEach(function(sprA:Personaje)
		{
			personajesPlayer.forEach(function(spr:Personaje)
			{
				if (spr.curPelo == 'blanco' && sprA.curPelo != 'blanco')
				{
					spr.kill();
				}
			});
		});
		peloBlancoTXT.kill();
		peloBlancoBTS.kill();
	}

	// IMPORTANTE: Solo usar una vez la funcion ya que si se usa mas de una vez agregara otro personaje a la lista y si eso pasa el bot tendra mas personajes que advinar (feo)
	public function agregarPersonajeAleatorio():Void
	{
		var indice:Int = FlxG.random.int(0, personajesBot.length - 1);
		var personajeAleatorio:Personaje = cast(personajesBot.members[indice], Personaje);

		var nuevoPersonaje:Personaje = new Personaje(0, 0, personajeAleatorio.curCharacter);

		this.personajeAleatorio.add(nuevoPersonaje);

		trace(nuevoPersonaje.curCharacter);

		// Añadimos el personaje a la pantalla
		// add(nuevoPersonaje);
	}
}

class Randomizer
{
	public var numeros:Array<Int>;

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

// Ta feo el FlxRando, NO LO USEN ENSERIO EL FLXRANDOM QUE MENCIONE ESTA MUY FEO ESTE ESTA MEJOR
class RandomizerPersonajeRandom
{
	public var numeros:Array<Int>;

	public function new()
	{
		// Inicializa el array con los números del 1 al 21
		numeros = new Array<Int>();
		for (i in 1...24)
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
