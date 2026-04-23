type Pelicula = (String, Int, Int, String)

peliculas :: [Pelicula]
peliculas = [("¿Quieres ser John Malkovich?", 1999, 112,"Spike Jonze"),
             ("¿Y donde esta el piloto?", 1980, 88,"Jim Abrahams, David Zucker"),
             ("A Clockwork Orange", 1971, 136,"Stanley Kubrick"),
             ("America X", 1998, 119,"Tony Kaye"),
             ("Amor eterno", 2004, 133,"Jean-Pierre Jeunet"),
             ("Analizame", 1999, 103,"Harold Ramis"),
             ("Asesinos por naturaleza", 1994, 118,"Oliver Stone"),
             ("Borat: El segundo mejor reportero del glorioso pais Kazajistan viaja a America", 2006, 84,"Larry Charles"),
             ("Brüno", 2009, 81,"Larry Charles"),
             ("Buenos muchachos", 1990, 146,"Martin Scorsese"),
             ("Ciudad de Dios", 2002, 130,"Fernando Meirelles, Katia Lund"),
             ("Cloud Atlas: La red invisible", 2012, 172,"Tom Tykwer, Andy Wachowski"),
             ("Delicatessen", 1991, 99,"Marc Caro, Jean-Pierre Jeunet"),
             ("Django sin cadenas", 2012, 165,"Quentin Tarantino"),
             ("El abogado del diablo", 1997, 144,"Taylor Hackford"),
             ("El ciudadano", 1941, 119,"Orson Welles"),
             ("El club de la pelea", 1999, 139,"David Fincher"),
             ("El cocodrilo", 1999, 82,"Steve Miner"),
             ("El embajador del miedo", 2004, 129,"Jonathan Demme"),
             ("El habitante incierto", 2004, 90,"Guillem Morales"),
             ("El ilusionista", 2006, 110,"Neil Burger"),
             ("El maquinista", 2004, 101,"Brad Anderson"),
             ("El mundo esta loco loco", 2001, 112,"Jerry Zucker"),
             ("El padrino", 1972, 175,"Francis Ford Coppola"),
             ("El pianista", 2002, 150,"Roman Polanski"),
             ("El plan perfecto", 2006, 129,"Spike Lee"),
             ("El resplandor", 1980, 100,"Stanley Kubric"),
             ("El senor de los anillos: La comunidad del anillo", 2001, 178,"Peter Jackson"),
             ("Estamos todos locos", 1983, 107,"Terry Jones, Terry Gilliam"),
             ("Eterno resplandor de una mente sin recuerdos", 2004, 108,"Michel Gondry"),
             ("Ganster americano", 2007, 157,"Ridley Scott"),
             ("Gran Torino", 2008, 116,"Clint Eastwood"),
             ("Guerra de los mundos", 2005, 116,"Steven Spielberg"),
             ("Hechizo del tiempo", 1993, 101,"Harold Ramis"),
             ("Historias cruzadas", 2011, 146,"Tate Taylor"),
             ("Juegos sexuales", 1999, 97,"Roger Kumble"),
             ("Kill Bill, la venganza: Volumen I", 2003, 111,"Quentin Tarantino"),
             ("La caida", 2004, 156,"Oliver Hirschbiegel"),
             ("La edad de la inocencia", 1993, 139,"Martin Scorsese"),
             ("La niebla", 2007, 126,"Frank Darabont"),
             ("La noche del demonio", 2010, 103,"James Wan"),
             ("La ola", 2008, 107,"Dennis Gansel"),
             ("La vida de Brian", 1979, 94,"Terry Jones"),
             ("La vida de los otros", 2006, 137,"Florian Henckel von Donnersmarck"),
             ("Los caballeros de la mesa cuadrada", 1975, 91,"Terry Gilliam, Terry Jones"),
             ("Los otros", 2001, 101,"Alejandro Amenabar"),
             ("Los sospechosos de siempre", 1995, 106,"Bryan Singer"),
             ("Magdalene Sisters: En el nombre de Dios", 2002, 119,"Peter Mullan"),
             ("Magnolia", 1999, 188,"Paul Thomas Anderson"),
             ("Martha Marcy May Marlene", 2011, 102,"Sean Durkin"),
             ("Matrix", 1999, 136,"The Wachowski Brothers, The Wachowski Brothers"),
             ("Mississippi en llamas", 1988, 128,"Alan Parker"),
             ("Numero 23", 2007, 101,"Joel Schumacher"),
             ("Pandillas de Nueva York", 2002, 167,"Martin Scorsese"),
             ("Perros de la calle", 1992, 99,"Quentin Tarantino"),
             ("Petroleo sangriento", 2007, 158,"Paul Thomas Anderson"),
             ("Pi", 1998, 84,"Darren Aronofsky"),
             ("Promesas del este", 2007, 100,"David Cronenberg"),
             ("Psicopata americano", 2000, 102,"Mary Harron"),
             ("Requiem para un sueno", 2000, 102,"Darren Aronofsky"),
             ("Suenos de libertad", 1994, 142,"Frank Darabont"),
             ("Taxi Driver", 1976, 113,"Martin Scorsese"),
             ("The Butcher Boy", 1997, 110,"Neil Jordan"),
             ("The Weather Man", 2005, 102,"Gore Verbinski")]

             
--a--
verTodas :: [(String, Int, Int, String)] -> Int
verTodas [] = 0
verTodas ((_, _, t, _):xs) = t + verTodas xs

--b--
estrenos :: [(String, Int, Int, String)] -> [String]
estrenos [] = []
estrenos ((n, a, _, _):xs) 
    | a == 2025 = [(n)] ++ estrenos xs
    | otherwise = estrenos xs

--c--
filmografia :: [(String, Int, Int, String)] -> String -> [String]
filmografia [] _ = []
filmografia ((n, _, _, d):xs) nd
    | nd == d   = n : filmografia xs nd
    | otherwise = filmografia xs nd

--d--
duracion :: [(String, Int, Int, String)] -> String -> Int
duracion [] _ = -1
duracion ((n, _, d, _):xs) p
    | n == p   = d
    |otherwise = duracion xs p
