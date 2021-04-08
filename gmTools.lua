print("gmTools by Liberty")
print("Tapez /gmtools ou /gmt pour afficher l'aide.")

--[[
Note à moi même, normalement ça marche:

Plus qu'à faire
Zuldazar,Nazmir,Voldun,stormsong,drustvar,tiragarde,warcampaign,mechagon. Côté Horde.
Et absolument tout côté ally. LOL.

Un jour j'le ferait.
J'suis sûr.

Fait:
Commande d'aide
Nazjatar H/A
CAPE H/A
Renforcement H/A

Si j'ai la flemme j'ferait des .lo q tout ce qui y'as de plus simple au lieu de la table.

]]--


-- Commande help 
SLASH_GMTOOLS1 = "/gmtools";
SLASH_GMTOOLS2 = "/gmt";
function SlashCmdList.GMTOOLS(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Les commandes ont toutes une lettre définissant la faction: 'h' pour la horde, 'a' pour l'alliance.")
	print("/gmTools", " Affiche l'aide")
	print("/hazeroth |  /aazeroth - Obtention du Coeur d'Azeroth Horde / Alliance")
	print("/warhorde1  |  */waralliance1 - Campagne Militaire Partie 1 Horde / Alliance")
	print("/warhorde2  |  */waralliance2 - Campagne Militaire Partie 2 Horde / Alliance")
	print("/warhorde3  |  */waralliance3 - Campagne Militaire Partie 3 Horde / Alliance")
	print("/warhorde4  |  */waralliance4 - Campagne Militaire Partie 4 Horde / Alliance")
	print("/warhorde5  |  */waralliance5 - Campagne Militaire Partie 5 Horde / Alliance")
	print("/warhorde6  |  */waralliance6 - Campagne Militaire Partie 6 Horde / Alliance")
	print("/warhorde7  |  */waralliance7 - Campagne Militaire 8.1 CHAP1 Horde / Alliance")
	print("/warhorde8  |  */waralliance8 - Campagne Militaire 8.1 CHAP2 Horde / Alliance")
	print("/warhorde9  |  */waralliance9 - Campagne Militaire 8.1 CHAP3 Horde / Alliance")
	print("/warhorde10  |  */waralliance10 - Campagne Militaire 8.1 CHAP4 Horde / Alliance")
	print("/warhorde11  |  */waralliance11 - Campagne Militaire 8.1 CHAP5 Horde / Alliance")
	print("/warhorde12  |  */waralliance11 - Campagne Militaire 8.1.5 CHAP1 Horde / Alliance")
	print("/warhorde13  |  */waralliance11 - Campagne Militaire 8.1.5 CHAP2 Horde / Alliance")
	print("/fsaurcroc  |  /fsylvanas - Campagne 8.1.5 Fidélité Saurcroc/Sylvanas")
	print("/nazh1  |  /naza1 - Chapitre 1 Horde / Alliance NAZJATAR")
	print("/nazh2  |  /naza2 - Chapitre 2 Horde / Alliance NAZJATAR")
	print("/nazh3  |  /naza3 - Chapitre 3 Horde / Alliance NAZJATAR")
	print("/cape - Quêtes Cape légendaire H&A")
	print("/rcoeur - Renforcement du coeur H&A")
	print("/dalaran - Quêtes acquisition Pierre de foyer Dalaran")
end

-- Dalaran
local dalaranf = {"44663"};
SLASH_DALARAN1 = "/dalaran";
function SlashCmdList.DALARAN(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Commande début Coeur Azeroth: Horde")
	print("(Obtention du coeur)")
	    for k, v in pairs(dalaranf) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end

--COEUR D'AZEROTH
--HORDE
local hcoeurazeroth = {"53372", "51796", "53028"};
SLASH_HCOEURAZEROTH1 = "/hazeroth";
function SlashCmdList.HCOEURAZEROTH(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Commande début Coeur Azeroth: Horde")
	print("(Obtention du coeur)")
	    for k, v in pairs(hcoeurazeroth) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end
--ALLIANCE
local acoeurazeroth = {"53370", "51795", "52946"};
SLASH_ACOEURAZEROTH1 = "/aazeroth";
function SlashCmdList.ACOEURAZEROTH(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Commande début Coeur Azeroth: Alliance")
	print("(Obtention du coeur)")
	    for k, v in pairs(acoeurazeroth) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end


-- WAR CAMPAIGN --

--[[
					HORDE 
	1ère Partie, pour débloquer les expéditions :
--]]

local hwarcampaignune = {"52746", "53333", "51770","51771", "53079","52749","51986","51985","51984","47512","47513","47514","51916","52451"};
SLASH_HWARCAMPAIGNUNE1 = "/warhorde1";
function SlashCmdList.HWARCAMPAIGNUNE(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire Horde: 1ère Partie ")
	    for k, v in pairs(hwarcampaignune) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
	C_Timer.After(0.5, function() print("Il faut accomplir les 3 Têtes de pont (foothold) pour débloquer la quête Union de Zandalar 51916, + la réputation révéré partout, ou une seule tête de pont pour 52451 (sans besoin de réput), si le joueur a déjà unlock les expés sur un autre perso.")end)
end

--[[
	2ème Partie, Premier Assaut : CriteriaID 40454:
--]]
local hwarcampaigndeux = {"51589", "51590","51591","51592","51593","51594","51595","51596","51597","51598","51599","51601"};
SLASH_HWARCAMPAIGNDEUX1 = "/warhorde2";
function SlashCmdList.HWARCAMPAIGNDEUX(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire Horde: 2ème Partie, Premier Assaut: ")
	C_Timer.After(0.5, function() print("Réputation CriteriaID 40454")end)
	    for k, v in pairs(hwarcampaigndeux) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end

--[[
	3ème Partie, La tombe du Maréchal : Requiert Amical 4500 Réputation - CriteriaID 40510
--]]

local hwarcampaigntrois = {"51784", "51785","51786","51787","51788","51789"};
SLASH_HWARCAMPAIGNTROIS1 = "/warhorde3";
function SlashCmdList.HWARCAMPAIGNTROIS(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire Horde: 3ème Partie, La tombe du Maréchal : ")
	C_Timer.After(0.5, function() print("Requiert Amical 4500 Réputation - CriteriaID 40510")end)
	    for k, v in pairs(hwarcampaigntrois) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end


--[[
	4ème Partie, Mort d'un Eaugure : Requiert Honoré 3000 Réputation  - CriteriaID 40511
--]]


local hwarcampaignquatre = {"51797", "51798","51805","51818","51819","51830", "51837","52122"};
SLASH_HWARCAMPAIGNQUATRE1 = "/warhorde4";
function SlashCmdList.HWARCAMPAIGNQUATRE(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire Horde: 4ème Partie, Mort d'un Eaugure")
	C_Timer.After(0.5, function() print("Requiert Honoré 3000 Réputation  - CriteriaID 40511")end)
	    for k, v in pairs(hwarcampaignquatre) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end

--[[
	5ème Partie, Au fond de la mer: 
	Requiert Honoré 7500 Réputation  - CriteriaID 40867
--]]

local hwarcampaigncinq = {"52764", "52765","52766","52767","52768","52769", "52770","52772","52773","52774","52978"};
SLASH_HWARCAMPAIGNCINQ1 = "/warhorde5";
function SlashCmdList.HWARCAMPAIGNCINQ(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire Horde: 5ème Partie, Au fond de la mer")
	C_Timer.After(0.5, function() print("Requiert Honoré 7500 Réputation  - CriteriaID 40867")end)
	    for k, v in pairs(hwarcampaigncinq) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end

--[[
	6ème Partie, L'assaut de Boralus :
	Requiert Révéré - CriteriaID 40868
--]]

local hwarcampaignsix = {"52183", "52186","52187","52185","52184","52188", "52189","52190","52990","52191","52192","52861","53003"};
SLASH_HWARCAMPAIGNSIX1 = "/warhorde6";
function SlashCmdList.HWARCAMPAIGNSIX(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire Horde: 6ème Partie, L'assaut de Boralus :")
	C_Timer.After(0.5, function() print("Requiert Révéré - CriteriaID 40868")end)
	    for k, v in pairs(hwarcampaignsix) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end

--[[
		Campagne Militaire 8.1
	1er Chapitre, L'assaut de Norwington
--]]

local hwarcampaignsept = {"53850", "53852","53856","53879","53880", "53912","53913","53973","53981"};
SLASH_HWARCAMPAIGNSEPT1 = "/warhorde7";
function SlashCmdList.HWARCAMPAIGNSEPT(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire 8.1 Horde: 1er Chapitre, L'assaut de Norwington")
	    for k, v in pairs(hwarcampaignsept) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end


--[[
		Campagne Militaire 8.1
	2ème Chapitre, Les aventures de M.E Gallywix :
--]]

local hwarcampaignhuit = {"53941", "54123","54124","53942","54128","54004", "54007","54008","54009","54022","54028","54094"};
SLASH_HWARCAMPAIGNHUIT1 = "/warhorde8";
function SlashCmdList.HWARCAMPAIGNHUIT(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire 8.1 Horde: 2ème Chapitre, Les aventures de M.E Gallywix ")
	    for k, v in pairs(hwarcampaignhuit) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end

--[[
		Campagne Militaire 8.1
	3ème Chapitre, Evasion de Tol Dagor 
--]]

local hwarcampaignneuf = {"54121", "54175","54176","54177","54178","54179"};
SLASH_HWARCAMPAIGNNEUF1 = "/warhorde9";
function SlashCmdList.HWARCAMPAIGNNEUF(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire 8.1 Horde: 3ème Chapitre, Evasion de Tol Dagor")
	    for k, v in pairs(hwarcampaignneuf) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end

--[[
		Campagne Militaire 8.1
	4ème chapitre, La fureur des Zandalari :
--]]

local hwarcampaigndix = {"54139", "54140","54156","54157","54207","54211", "54212","54213","54224","54244","54249","54269","54270","54271","54275","54280"};
SLASH_HWARCAMPAIGNDIX1 = "/warhorde10";
function SlashCmdList.HWARCAMPAIGNDIX(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire 8.1 Horde: 4ème chapitre, La fureur des Zandalari")
	    for k, v in pairs(hwarcampaigndix) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end

--[[
		Campagne Militaire 8.1
	5ème Chapitre, Des chemins Divergeants
--]]

local hwarcampaignonze = {"54282", "54164","54165"};
SLASH_HWARCAMPAIGNONZE1 = "/warhorde11";
function SlashCmdList.HWARCAMPAIGNONZE(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire 8.1 Horde: 5ème Chapitre, Des chemins Divergeants")
	    for k, v in pairs(hwarcampaignonze) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end


--[[
		Campagne Militaire 8.1.5
	Chapitre Saurcroc, Le destin de Saurcroc
--]]

local hwarcampaigndouze = {"54097", "54099","54100","54101","54102","54103","54104","54105","54106"};
SLASH_HWARCAMPAIGNDOUZE1 = "/warhorde12";
SLASH_HWARCAMPAIGNDOUZE2 = "/destinsaurcroc";
function SlashCmdList.HWARCAMPAIGNDOUZE(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire 8.1.5 Horde: Chapitre Saurcroc, Le destin de Saurcroc")
	    for k, v in pairs(hwarcampaigndouze) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end

--[[
		Campagne Militaire 8.1.5
	Loyaliste: Fidèle Sylvas / Saurcroc
--]]

local fideleasylvanas = {"54754","54961","55034","55052", "55778", "55780", "55782", "56495", "56833","57130","57148","57149","57150","57151","57152"};
SLASH_FIDELESYLVANAS1 = "/fidelesylvanas";
SLASH_FIDELESYLVANAS2 = "/fsylvanas";
function SlashCmdList.FIDELESYLVANAS(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire 8.1/2 Horde: Fidèle à Sylvanas")
	    for k, v in pairs(fideleasylvanas) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end

local fidelesaurcroc = {"54107","54108","54109","55124","54999","55047","56496","57088","57090","57091","57092","57093","57094","57095"};
SLASH_FIDELESAURCROC1 = "/fidelesaurcroc";
SLASH_FIDELESAURCROC2 = "/fsaurcroc";
function SlashCmdList.FIDELESAURCROC(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire 8.1/2 Horde: Fidèle à Saurcroc")
	    for k, v in pairs(fidelesaurcroc) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end

--[[
		Campagne Militaire 8.1.5
	2ème Chapitre, Sombres Conséquences :
--]]

local hwarcampaigntreize = {"55048", "55049","55050","55051"};
SLASH_HWARCAMPAIGNTREIZE1 = "/warhorde13";
function SlashCmdList.HWARCAMPAIGNTREIZE(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire 8.1.5 Horde: 2ème Chapitre, Sombres Conséquences :")
	    for k, v in pairs(hwarcampaigntreize) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end


--[[
		Campagne Militaire 8.1.5
	2ème Chapitre, Sombres Conséquences :
--]]

local hwarcampaigntreize = {"54961", "55124","54958","54959","54997","54960"};
SLASH_HWARCAMPAIGNTREIZE1 = "/warhorde13";
function SlashCmdList.HWARCAMPAIGNTREIZE(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire 8.1.5 Horde: 1er Chapitre, Preuves de Loyauté")
	    for k, v in pairs(hwarcampaigntreize) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end


--[[
					ALLIANCE: 
	1ère Partie, pour débloquer les expéditions :
--]]

local awarcampaignune = {"52544", "53332","51714","51715","53074","52654","47189","51308","51088","51283","51918","52450"};
SLASH_AWARCAMPAIGNUNE1 = "/warally1";
SLASH_AWARCAMPAIGNUNE2 = "/waralliance1";
function SlashCmdList.AWARCAMPAIGNUNE(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire Alliance 8.0 : 1ère Partie, pour débloquer les expéditions")
	    for k, v in pairs(awarcampaignune) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
	C_Timer.After(1, function() print("Il faut bien accomplir les 3 Têtes de pont (foothold) pour débloquer la quête l'union de Kultiras 51918, ou si déjà faite sur un alt, juste commencer une pour faire 52450.") end)
end

--[[
					ALLIANCE: 
	2ème Partie, Du sang sur du Sable : CriteriaID 40573
--]]

local awarcampaigndeux = {"52026", "52027","52028","52029","52030","52031","52032","52033","52034","52035","52036","52038","52039","52040","52041","52042","52146"};
SLASH_AWARCAMPAIGNDEUX1 = "/warally2";
SLASH_AWARCAMPAIGNDEUX2 = "/waralliance2";
function SlashCmdList.AWARCAMPAIGNDEUX(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Campagne Militaire Alliance 8.0 : 2ème Partie, Du sang sur du Sable")
	    for k, v in pairs(awarcampaigndeux) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
	C_Timer.After(0.5, function() print("CriteriaID 40573") end)
end



-- NAZJATAR GLOBAL

-- Nazjatar 1 Horde
local nazhun = {"56030", "56044","55054","54018","54021","56063","54012","55092","54015","56429","55094","55053"};
SLASH_NAZHUN1 = "/nazh1";
function SlashCmdList.NAZHUN(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Commande Nazjatar HORDE")
	print("Chapitre 1: Bienvenue à Nazjatar")
	    for k, v in pairs(nazhun) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end

-- Nazjatar 2 Horde
local nazhdeux = {"55862", "55863", "55864", "55865","55866", "55967", "56046", "56047","56045","55870","55867","55868","55869","56236"};
SLASH_NAZHDEUX1 = "/nazh2";
function SlashCmdList.NAZHDEUX(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Commande Nazjatar HORDE")
	print("Chapitre 2: Les secrets des flots")
	    for k, v in pairs(nazhdeux) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end


-- Nazjatar 3 Horde
local nazhtrois = {"55469", "55482", "55485", "55486", "55488", "55489", "55490", "55799", "56356"};
SLASH_NAZHTROIS1 = "/nazh3";
function SlashCmdList.NAZHTROIS(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Commande Nazjatar HORDE")
	print("Chapitre 3: Marée Changeante")
	    for k, v in pairs(nazhtrois) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end


-- Nazjatar 1 Alliance
local nazaun = {"56031", "56043","55095","54969","56640","56641","56642","56643","56644","55175","54972"};
SLASH_NAZAUN1 = "/naza1";
function SlashCmdList.NAZAUN(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Commande Nazjatar Alliance")
	print("Chapitre 1: Bienvenue à Nazjatar")
	    for k, v in pairs(nazaun) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end

-- Nazjatar 2 Alliance
local nazadeux = {"55593", "55595", "55597", "55598","55599", "55600", "56038", "56039","56037","55860","55601","55861","55937","56234"};
SLASH_NAZADEUX1 = "/naza2";
function SlashCmdList.NAZADEUX(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Commande Nazjatar Alliance")
	print("Chapitre 2: Les secrets des flots")
	    for k, v in pairs(nazadeux) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end


-- Nazjatar 3 Alliance
local nazatrois = {"55558", "55560", "55561", "55565", "55569", "55570", "55571", "55573", "55574","55694","56741","56325","56358"};
SLASH_NAZHTROIS1 = "/naza3";
function SlashCmdList.NAZHTROIS(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Commande Nazjatar Alliance")
	print("Chapitre 3: Marée Changeante")
	    for k, v in pairs(nazatrois) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end


-- FIN NAZJATAR

-- Cape légendaire H/A
local nzothcape = {"58506","56374","56209","56375","56472","56376","56377","56536","56537","56538","56539","56771","56540","56541","56542","58737","57220","57221","57222","57290","57362","58634","57373","57374","58615","58631","58632","57524"};
SLASH_CAPELEG1 = "/cape";
function SlashCmdList.CAPELEG(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Commande Cape légendaire")
	print("Commune au deux factions.")
	    for k, v in pairs(nzothcape) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end


-- Renforcement du coeur H/A
local renforcementcoeur = {"55851","55533","55374","55400","55407","55425","55497","55618","57010","56162","56350","57004","55361","55362","55363","56156"};
SLASH_RENFORT1 = "/rcoeur";
function SlashCmdList.RENFORT(msg, editbox)
	local _, _, _, _, _, active = GetChannelDisplayInfo(2)
	print("Renforcement du Coeur D'Azeroth;")
	print("HORDE ET ALLIANCE.")
	    for k, v in pairs(renforcementcoeur) do
        SendChatMessage(".lo q " .. v, "SAY")
    end
end