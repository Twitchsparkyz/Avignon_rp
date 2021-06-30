--Truck
Config	=	{}

 -- Limit, unit can be whatever you want. Originally grams (as average people can hold 25kg)
Config.Limit = 25

-- Default weight for an item:
	-- weight == 0 : The item do not affect character inventory weight
	-- weight > 0 : The item cost place on inventory
	-- weight < 0 : The item add place on inventory. Smart people will love it.
Config.DefaultWeight = 1




-- If true, ignore rest of file
Config.WeightSqlBased = false

-- I Prefer to edit weight on the config.lua and I have switched Config.WeightSqlBased to false:

Config.localWeight = {

black_money = 0.00001,
	--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ POLE EMPLOI ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--

	 alive_chicken = 1,                          --Poulet vivant
	 slaughtered_chicken = 2,                    --Poulet abattu
	 packaged_chicken = 2,                       --Poulet en barquette
	 fish = 1,                                   --Poisson
	 stone = 2,                                  --Pierre
	 washed_stone =2,                            --Pierre Lavée
	 copper = 2,                                 --Cuivre
	 iron = 2,                                   --Fer
	 gold = 2,                                   --Or
	 diamond = 2,                                --Diamant
	 wood = 1,                                   --Bois
	 cutted_wood = 0.5,                            --Bois coupé
	 packaged_plank = 1,                         --Paquet de planches
	 petrol = 0.5,                                 --Pétrole
   petrol_raffin = 0.5,                          --Pétrole Raffiné
	 essence = 1,                                --Essence
	 wool = 0.5,                                   --Laine
	 fabric = 0.2,                                 --Tissu
	 clothe = 0.1,                                 --Vêtement
   caisse_alcool = 0.2,                           --Caisse Alcool
   caisse_traiter = 0.2,                          --Caisse Alcool Traiter


	--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ Bahamas ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
 
    jager = 50,                                  --Jägermeister
    coffee = 50,                                 --Café
    vodka = 50,                                  --Vodka
    rhum = 50,                                   --Rhum
    whisky = 50,                                 --Whisky
    tequila = 50,                                --Tequila
    martini = 50,                                --Martini blanc
    soda = 50,                                   --Soda
    cola = 50,                                   --Coca Cola
    cafe = 50,                                   --Café Nexpresso
    jusfruit = 50,                               --Jus de fruits
    icetea = 50,                                 --Ice Tea
    energy = 50,                                 --Redbull
    drpepper = 50,                               --Dr. Pepper
    limonade = 50,                               --Limonade
    bolcacahuetes = 50,                          --Bol de cacahuètes
    bolnoixcajou = 50,                           --Bol de noix de cajou
    bolpistache = 50,                            --Bol de pistaches
    bolchips = 50,                               --Bol de chips
    saucisson = 50,                              --Saucisson
    grapperaisin = 50,                           --Grappe de raisin
    jagerbomb = 50,                              --Jägerbomb
    golem = 50,                                  --Golem
    whiskycoca = 50,                             --Whisky-coca
    vodkaenergy = 50,                            --Vodka-Redbull
    vodkafruit = 50,                             --Vodka-jus de fruits
    rhumfruit = 50,                              --Rhum-jus de fruits
    teqpaf = 50,                                 --Teq'paf"
    rhumcoca = 50,                               --Rhum-coca
    mojito = 50,                                 --Mojito
    ice = 50,                                    --Glaçon
    diabolo = 50,                                --Diabolo grenadine
    mixapero = 50,                               --Mix Apéritif
    metreshooter = 50,                           --Mètre de shooter
    jagercerbere = 50,                           --Jäger Cerbère
    magnum = 50,                                 --Champagne Magnum
    menthe = 50,                                 --Feuille de menthe
    pastis = 50,                                 --Pastis 51
    get = 50,                                    --Get 27

  
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ drogues ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--   

   coke = 0.5,                                    --gramme de coke
	 coke_pooch = 2,                             --pochon de coke
	 crack = 1,                                   -- Alcool Inbuvable
   crack_pooch = 2,                            -- Eau de YUYU
	 ecstasy = 0.5,                                 --Gramme Ecstasy
	 ecstasy_pooch = 2,                          --Pochon decstasy
	 ketamine = 1,                                -- Gramme Ketamine
   ketamine_pooch = 2,                         --Pochon de ketamine
	 meth = 0.5,                                    --gramme meth
	 meth_pooch = 2,                             --pochon de meth
	 acetone = 1,                                 --Acetone
   lithium = 1,                                 --Lithium
   methlab = 2,                                 --Methilamine
	 opium = 0.5,                                   --gramme opium
	 opium_pooch = 2,                            --pochon opium
	 weed = 0.5,                                    --gramme de weed
	 weed_pooch = 2,                             --pochon de weed
	 billet = 1,                                  --Gramme Héroine
   billet_pooch = 2,                           --Pochon d'héroine

  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ shop ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--    

   bread = 0.2,                                   --Pain
   water = 0.2,                                   --Volvic
   pringlesfr = 0.2,                              --Pringles au frommage
   pringlespo = 0.2,                              --Pringles au poulet
   pringlesba = 0.2,                              --Pringles au Barbecu
   pringlescr = 0.2,                              --Pringles creme oignons
   kinderbueno = 0.2,                             --Kinder bueno
   kindercountry = 0.2,                           --Kinder country
   bounty = 0.2,                                  --Bounty
   mars = 0.2,                                    --Mars
   twix = 0.2,                                    --Twix
   snickers = 0.2,                                --Snickers
   sandwichpo = 0.2,                              --Sandwich poulet
   sandwichbo = 0.2,                              --Sandwich boeuf
   sandwichoe = 0.2,                              --Sandwich oeuf crudité
   canettco = 0.2,                                --Cannette de Coca
   canettor = 0.2,                                --Cannette Orangina
   canettic = 0.2,                                --Cannette Ice tea
   canettoa = 0.2,                                --Cannette Oasis

  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ Dolce vita ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--

	 pizzaf = 1,                                 --Pizza frommage
	 pizzamo = 1,                                --Pizza Mozzarella
	 pizzama = 1,                                --Pizza Margaritta
	 pizzaan = 1,                                --Pizza Anchois
	 pizzaqfr = 1,                               --Pizza au 4 fromages
	 pizzaro = 1,                                --Pizza Royale
	 panzzani = 1,                               --Pattes en saulces
	 panzzanip = 1,                              --Pattes au Pesto


  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ Vignerons ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--

	 raisin = 1,                                 --Raisin
	 jus_raisin = 0.8,                           --Jus de raisin
	 grand_cru = 4,                              --Grand cru
	 vine = 1,                                   --Vin

  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ mairie ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--

	 enquetes = 1,                               --document
	 affaires = 1,                               --affaire classé

  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ Tabac ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--

   
	tabac    = 1,                                 --Tabac
	winston  = 1,                                 --Winston
	spliff   = 1,                                 --Bedo
	marlboro = 1,                                 --Marlboro



  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ autres ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
  --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
   bandage = 5,                                  --Bandage
   medikit = 5,                                  --Medikit
   buprenorphine = 5,                            --Médicament contre la drogue
   disulfirame = 5,                              --Médicament contre l'alcool
   net_cracker = 15,                             --Ordinateur pirate
   thermite = 15,                                 --Bombe thermique
    caisseketchup = 1,                          --macdo
    sachetketchup = 0.01                        --macdo
;
	
}


Config.VehicleModel = {
guardian = 120
}

Config.VehicleLimit = {
    [0] = 50, --Compact
    [1] = 75, --Sedan
    [2] = 100, --SUV
    [3] = 50, --Coupes
    [4] = 75, --Muscle
    [5] = 50, --Sports Classics
    [6] = 50, --Sports
    [7] = 50, --Super
    [8] = 10, --Motorcycles
    [9] = 100, --Off-road
    [10] = 300, --Industrial
    [11] = 400, --Utility
    [12] = 500, --Vans
    [13] = 0, --Cycles
    [14] = 200, --Boats
    [15] = 100, --Helicopters
    [16] = 0, --Planes
    [17] = 200, --Service
    [18] = 200, --Emergency
    [19] = 0, --Military
    [20] = 300, --Commercial
    [21] = 0, --Trains
    
}