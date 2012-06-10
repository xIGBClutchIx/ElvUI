local E, L, V, P, G = unpack(select(2, ...)); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local _, myclasscolor = UnitClass("player");
local valuer, valueg, valueb = RAID_CLASS_COLORS[myclasscolor].r, RAID_CLASS_COLORS[myclasscolor].g, RAID_CLASS_COLORS[myclasscolor].b

P.gridSize = 64
P.farmSize = 340

--Core
P['general'] = {
	["taingLog"] = false,
	["autoscale"] = true,
	["stickyFrames"] = true,
	['loginmessage'] = false,
	["interruptAnnounce"] = "RAID",
	["autoRepair"] = "GUILD",
	['vendorGrays'] = true,
	['autoAcceptInvite'] = false,
	
	-- fonts
	["fontsize"] = 11,
	["font"] = "Friz Quadrata TT",
	
	--colors
	["bordercolor"] = { r = .20,g = .20,b = .20 },
	["backdropcolor"] = { r = .16,g = .16,b = .16 },
	["backdropfadecolor"] = { r = .10,g = .10,b = .10, a = 0.9 },
	["valuecolor"] = {r = valuer,g = valueg,b = valueb},
	
	--panels
	['panelWidth'] = 382,
	['panelHeight'] = 200,
	['panelBackdropNameLeft'] = '',
	['panelBackdropNameRight'] = '',
	['panelBackdrop'] = 'SHOWBOTH',
	['expRepPos'] = 'MINIMAP_BOTTOM',				-- TOP_SCREEN or MINIMAP_BOTTOM

	--misc
	['mapTransparency'] = 1,
	['minimapSize'] = 176,
	['raidReminder'] = true,
	['minimapPanels'] = true,
	['tinyWorldMap'] = true,
};

--Bags
P['bags'] = {
    ['bagCols'] = 0,
    ['bankCols'] = 0,
    ['sortOrientation'] = 'BOTTOM-TOP',
	['xOffset'] = 0,
	['yOffset'] = 0,
	
	['bagBar'] = {
		['growthDirection'] = 'VERTICAL',
		['sortDirection'] = 'ASCENDING',
		['size'] = 30,
		['spacing'] = 4,
		['showBackdrop'] = false,
		['mouseover'] = false,
	},
};

--NamePlate
P["nameplate"] = {
	["markBGHealers"] = true,
	["width"] = 114,
	["height"] = 8,
	["cbheight"] = 5,
	["showlevel"] = true,
	["enhancethreat"] = true,
	["combat"] = false,
	["showhealth"] = true,
	["trackauras"] = true,
	["trackfilter"] = 'CCDebuffs',
	['goodscale'] = 1,
	['badscale'] = 1,
	["goodcolor"] = {r = 75/255,  g = 175/255, b = 76/255},
	["badcolor"] = {r = 0.78, g = 0.25, b = 0.25},
	["goodtransitioncolor"] = {r = 218/255, g = 197/255, b = 92/255},
	["badtransitioncolor"] = {r = 240/255, g = 154/255, b = 17/255}, 	
	["friendlynpc"] = {r = 0.31, g = 0.45, b = 0.63},
	["friendlyplayer"] = {r = 75/255,  g = 175/255, b = 76/255},
	["neutral"] = { r = 218/255, g = 197/255, b = 92/255 },
	["enemy"] = { r = 0.78, g = 0.25, b = 0.25 },	
};

--Auras
P['auras'] = {
	['perRow'] = 16,
}

--Chat
P['chat'] = {
	['url'] = true,
	['shortChannels'] = false,
	['hyperlinkHover'] = false,
	['throttleInterval'] = 60,
	['scrollDownInterval'] = 0,
	['font'] = 'Arial Narrow',
	['fontoutline'] = 'NONE',
	['sticky'] = true,
	['keywords'] = '%MYNAME%, Blaze, Blazii, Blæs',
	['keywordwarning'] = true,
	['keywordsound'] = 'ElvUI Whisper',
	['whisperwarning'] = true,
	['whispersound'] = 'ElvUI Whisper',
}

--ClassTimers
P['classtimer'] = {
	['player'] = {
		['enable'] = true,
		['anchor'] = 'PLAYERDEBUFFS',
		["buffcolor"] = P.general.bordercolor,
		["debuffcolor"] = {r = 0.78, g = 0.25, b = 0.25},		
	},
	['target'] = {
		['enable'] = true,
		['anchor'] = 'TARGETDEBUFFS',
		["buffcolor"] = P.general.bordercolor,
		["debuffcolor"] = {r = 0.78, g = 0.25, b = 0.25},			
	},	
	['trinket'] = {
		['enable'] = true,
		['anchor'] = 'PLAYERANCHOR',
		["color"] = {r = 0.84, g = 0.75, b = 0.65},			
	},
}

--Skins
P['skins'] = {
	['embedRight'] = 'Skada',
}

--Datatexts
P['datatexts'] = {
	['panels'] = {
		['LeftChatDataPanel'] = {
			['left'] = 'Spell/Heal Power',
			['middle'] = 'Haste',
			['right'] = 'Mastery',
		},
		['RightChatDataPanel'] = {
			['left'] = 'DPS',
			['middle'] = 'Durability',	
			['right'] = 'Gold',
		},
		['LeftMiniPanel'] = 'Time',
		['RightMiniPanel'] = 'System',
		['ChatTab_Datatext_Panel'] = {
			['left'] = 'Call to Arms',
			['middle'] = 'Bags',
		},
		['Bottom_Datatext_Panel'] = {
			['left'] = 'Friends',
			['middle'] = 'Spec Switch',
			['right'] = 'Guild',
		},
	},
	['localtime'] = true,
	['time24'] = true,
}

--Tooltip
P['tooltip'] = {
	['anchor'] = 'SMART',
	['ufhide'] = false,
	['whostarget'] = true,
	['combathide'] = false,
}

--UnitFrame
P['unitframe'] = {
	['smoothbars'] = true,
	['statusbar'] = "Minimalist",
	['font'] = 'Old Sans Black',
	['fontsize'] = 12,
	['fontoutline'] = 'OUTLINE',
	['OORAlpha'] = 0.55,
	['debuffHighlighting'] = false,
	["smartRaidFilter"] = true,

	['colors'] = {
		['healthclass'] = false,
		['powerclass'] = true,
		['colorhealthbyvalue'] = false,
		['customhealthbackdrop'] = true,
		['classbackdrop'] = false,
		['classNames'] = true,
		['health'] = { r = 68/255,g = 68/255,b = 68/255 },
		['health_backdrop'] = { r = 97/255,g = 97/255,b = 97/255 },
		['tapped'] = { r = 0.55, g = 0.57, b = 0.61},
		['disconnected'] = { r = 0, g = 0, b = 0},
		['power'] = {
			["MANA"] = {r = 0.31, g = 0.45, b = 0.63},
			["RAGE"] = {r = 0.78, g = 0.25, b = 0.25},
			["FOCUS"] = {r = 0.71, g = 0.43, b = 0.27},
			["ENERGY"] = {r = 0.65, g = 0.63, b = 0.35},
			["RUNIC_POWER"] = {r = 0, g = 0.82, b = 1},
		},
		['reaction'] = {
			['BAD'] = { r = 0.78, g = 0.25, b = 0.25 },
			['NEUTRAL'] = { r = 218/255, g = 197/255, b = 92/255 },
			['GOOD'] = { r = 75/255, g = 175/255, b = 76/255 },
		},
	},

	['units'] = {
		['player'] = {
			['enable'] = true,
			['width'] = 260,
			['height'] = 55,
			['height'] = 54,
			['lowmana'] = 30,
			['combatfade'] = false,
			['healPrediction'] = true,
			['restIcon'] = true,
			['health'] = {
				['text'] = true,
				['text_format'] = 'current-percent',
				['position'] = 'TOPRIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text'] = true,
				['text_format'] = 'current',	
				['width'] = 'fill',
				['height'] = 15,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,
			},
			['altpower'] = {
				['enable'] = true,
				['width'] = 260,
				['height'] = 18,
			},
			['name'] = {
				['enable'] = true,
				['position'] = 'LEFT',
			},
			['portrait'] = {
				['enable'] = false,
				['width'] = 45,
				['overlay'] = false,
				['camDistanceScale'] = 1,
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 7,
				['numrows'] = 1,
				['growth-x'] = 'RIGHT',
				['growth-y'] = 'UP',
				['initialAnchor'] = 'BOTTOMLEFT',
				['attachTo'] = 'DEBUFFS',
				['anchorPoint'] = 'TOPLEFT',
				['fontsize'] = 10,
				['showPlayerOnly'] = true,
				['useFilter'] = 'TurtleBuffs',
				['durationLimit'] = 900,
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 7,
				['numrows'] = 1,
				['growth-x'] = 'LEFT',
				['growth-y'] = 'UP',
				['initialAnchor'] = 'BOTTOMRIGHT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'TOPRIGHT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = 'DebuffBlacklist',	
				['durationLimit'] = 0,
			},
			['castbar'] = {
				['enable'] = true,
				['width'] = 260,
				['height'] = 20,
				['icon'] = false,
				['latency'] = true,
				['displayTarget'] = false,
				['color'] = { r = .66,g = .66,b = .66 },
				['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
				['xOffset'] = 0,
				['yOffset'] = 0,
				['format'] = 'CURRENTMAX',
				["ticks"] = true,
				['spark'] = true,
			},
			['classbar'] = {
				['enable'] = true,
				['fill'] = 'spaced',
				['height'] = 8,
			},
		},	
		['target'] = {
			['enable'] = true,
			['width'] = 260,
			['height'] = 54,
			['healPrediction'] = true,
			['health'] = {
				['text'] = true,
				['text_format'] = 'current-percent',
				['position'] = 'TOPRIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text'] = true,
				['text_format'] = 'current',	
				['width'] = 'fill',
				['height'] = 15,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},
			['name'] = {
				['enable'] = true,
				['position'] = 'LEFT',
			},
			['portrait'] = {
				['enable'] = false,
				['width'] = 45,
				['overlay'] = false,
				['camDistanceScale'] = 1,
			},
			['buffs'] = {
				['enable'] = true,
				['perrow'] = 8,
				['numrows'] = 2,
				['growth-x'] = 'RIGHT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'TOPLEFT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',						
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = '',		
				['durationLimit'] = 0,
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 8,
				['numrows'] = 2,
				['growth-x'] = 'RIGHT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'TOPLEFT',
				['attachTo'] = 'BUFFS',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = '',	
				['durationLimit'] = 0,
			},
			['castbar'] = {
				['enable'] = true,
				['width'] = 260,
				['height'] = 18,
				['icon'] = false,
				['color'] = { r = .66,g = .66,b = .66 },
				['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
				['xOffset'] = 0,
				['yOffset'] = 84,
				['format'] = 'REMAINING',
				['spark'] = true,
			},	
			['combobar'] = {
				['enable'] = true,
				['fill'] = 'spaced',
				['height'] = 10,
			},				
		},
		['targettarget'] = {
			['enable'] = true,
			['width'] = 130,
			['height'] = 50,
			['health'] = {
				['text'] = false,
				['text_format'] = 'current-percent',
				['position'] = 'RIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text'] = false,
				['text_format'] = 'current',	
				['width'] = 'fill',
				['height'] = 10,
				['offset'] = 0,
				['position'] = 'LEFT',
				['hideonnpc'] = false,					
			},
			['name'] = {
				['enable'] = true,
				['position'] = 'CENTER',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 7,
				['numrows'] = 1,
				['growth-x'] = 'RIGHT',
				['growth-y'] = 'UP',
				['initialAnchor'] = 'BOTTOMLEFT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = '',		
				['durationLimit'] = 0,
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 5,
				['numrows'] = 1,
				['growth-x'] = 'LEFT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'TOPRIGHT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMRIGHT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = 'DebuffBlacklist',	
				['durationLimit'] = 0,
			},			
		},
		['focus'] = {
			['enable'] = true,
			['width'] = 200,
			['height'] = 40,
			['healPrediction'] = true,
			['health'] = {
				['text'] = true,
				['text_format'] = 'current-percent',
				['position'] = 'TOPRIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text'] = false,
				['text_format'] = 'current',	
				['width'] = 'fill',
				['height'] = 10,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},
			['name'] = {
				['enable'] = true,
				['position'] = 'LEFT',
			},
			['buffs'] = {
				['enable'] = true,
				['perrow'] = 7,
				['numrows'] = 1,
				['growth-x'] = 'RIGHT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'TOPLEFT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = '',		
				['durationLimit'] = 0,
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 7,
				['numrows'] = 1,
				['growth-x'] = 'RIGHT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'TOPLEFT',
				['attachTo'] = 'BUFFS',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = 'DebuffBlacklist',	
				['durationLimit'] = 0,
			},	
			['castbar'] = {
				['enable'] = true,
				['width'] = 200,
				['height'] = 15,
				['icon'] = false,
				['color'] = { r = .66,g = .66,b = .66 },
				['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
				['xOffset'] = 0,
				['yOffset'] = 66,
				['format'] = 'REMAINING',
				['spark'] = true,
			},					
		},	
		['focustarget'] = {
			['enable'] = true,
			['width'] = 150,
			['height'] = 40,
			['health'] = {
				['text'] = true,
				['text_format'] = 'current-percent',
				['position'] = 'TOPRIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text'] = false,
				['text_format'] = 'current',	
				['width'] = 'fill',
				['height'] = 10,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},
			['name'] = {
				['enable'] = true,
				['position'] = 'LEFT',
			},
			['buffs'] = {
				['enable'] = true,
				['perrow'] = 6,
				['numrows'] = 1,
				['growth-x'] = 'RIGHT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'TOPLEFT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = '',		
				['durationLimit'] = 0,
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 6,
				['numrows'] = 1,
				['growth-x'] = 'RIGHT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'TOPLEFT',
				['attachTo'] = 'BUFFS',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = 'DebuffBlacklist',	
				['durationLimit'] = 0,
			},			
		},				
		['pet'] = {
			['enable'] = true,
			['width'] = 130,
			['height'] = 36,
			['healPrediction'] = true,
			['health'] = {
				['text'] = false,
				['text_format'] = 'current-percent',
				['position'] = 'TOPRIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text'] = false,
				['text_format'] = 'current',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},
			['name'] = {
				['enable'] = true,
				['position'] = 'LEFT',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 7,
				['numrows'] = 1,
				['growth-x'] = 'RIGHT',
				['growth-y'] = 'UP',
				['initialAnchor'] = 'BOTTOMLEFT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = '',		
				['durationLimit'] = 0,
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 5,
				['numrows'] = 1,
				['growth-x'] = 'LEFT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'TOPRIGHT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMRIGHT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = 'DebuffBlacklist',	
				['durationLimit'] = 0,
			},			
		},
		['pettarget'] = {
			['enable'] = false,
			['width'] = 130,
			['height'] = 26,
			['health'] = {
				['text'] = false,
				['text_format'] = 'current-percent',
				['position'] = 'RIGHT',
			},
			['power'] = {
				['enable'] = false,
				['text'] = false,
				['text_format'] = 'current',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'LEFT',
				['hideonnpc'] = true,					
			},
			['name'] = {
				['enable'] = true,
				['position'] = 'CENTER',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 7,
				['numrows'] = 1,
				['growth-x'] = 'RIGHT',
				['growth-y'] = 'UP',
				['initialAnchor'] = 'BOTTOMLEFT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = '',		
				['durationLimit'] = 0,
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 5,
				['numrows'] = 1,
				['growth-x'] = 'LEFT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'TOPRIGHT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMRIGHT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = 'DebuffBlacklist',	
				['durationLimit'] = 0,
			},			
		},	
		['boss'] = {
			['enable'] = true,
			['growthDirection'] = 'DOWN',
			['width'] = 200,
			['height'] = 46,
			['health'] = {
				['text'] = true,
				['text_format'] = 'current-percent',
				['position'] = 'TOPRIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text'] = true,
				['text_format'] = 'current',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},
			['portrait'] = {
				['enable'] = false,
				['width'] = 35,
				['overlay'] = false,
				['camDistanceScale'] = 1,
			},				
			['name'] = {
				['enable'] = true,
				['position'] = 'LEFT',
			},
			['buffs'] = {
				['enable'] = true,
				['perrow'] = 8,
				['numrows'] = 1,
				['growth-x'] = 'LEFT',
				['growth-y'] = 'UP',
				['initialAnchor'] = 'BOTTOMRIGHT',
				['attachTo'] = 'DEBUFFS',
				['anchorPoint'] = 'TOPRIGHT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = '',		
				['durationLimit'] = 0,
				['sizeOverride'] = 0,
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 8,
				['numrows'] = 1,
				['growth-x'] = 'RIGHT',
				['growth-y'] = 'UP',
				['initialAnchor'] = 'BOTTOMLEFT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'TOPLEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = true,
				['useFilter'] = '',	
				['durationLimit'] = 0,
				['sizeOverride'] = 0,
			},	
			['castbar'] = {
				['enable'] = true,
				['width'] = 200,
				['height'] = 15,
				['icon'] = true,
				['color'] = { r = .66,g = .66,b = .66 },
				['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
				['format'] = 'REMAINING',
				['spark'] = true,
			},					
		},	
		['arena'] = {
			['enable'] = true,
			['growthDirection'] = 'UP',
			['pvpTrinket'] = true,
			['width'] = 240,
			['height'] = 46,
			['health'] = {
				['text'] = true,
				['text_format'] = 'current-percent',
				['position'] = 'TOPRIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text'] = true,
				['text_format'] = 'current',	
				['width'] = 'fill',
				['height'] = 8,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},			
			['name'] = {
				['enable'] = true,
				['position'] = 'LEFT',
			},
			['buffs'] = {
				['enable'] = true,
				['perrow'] = 3,
				['numrows'] = 1,
				['growth-x'] = 'LEFT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'RIGHT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = 'TurtleBuffs',		
				['durationLimit'] = 0,
				['sizeOverride'] = 46,
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 2,
				['numrows'] = 1,
				['growth-x'] = 'RIGHT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'LEFT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'RIGHT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = 'CCDebuffs',	
				['durationLimit'] = 0,
				['sizeOverride'] = 46,
			},	
			['castbar'] = {
				['enable'] = true,
				['width'] = 240,
				['height'] = 15,
				['icon'] = true,
				['color'] = { r = .66,g = .66,b = .66 },
				['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
				['format'] = 'REMAINING',
				['spark'] = true,
			},					
		},
		['party'] = {
			['enable'] = true,
			['frequentHealth'] = false,
			['visibility'] = "[@raid6,exists] hide;show",
			['point'] = 'LEFT', --Requires ReloadUI()
			['maxColumns'] = 1,
			['unitsPerColumn'] = 5,
			['columnSpacing'] = 3,
			['xOffset'] = 3,
			['yOffset'] = -3,
			['groupBy'] = 'GROUP',
			["showParty"] = true,
			["showRaid"] = true,
			["showSolo"] = false,
			["showPlayer"] = true,
			['healPrediction'] = false,
			['columnAnchorPoint'] = "TOP",
			['width'] = 74,
			['height'] = 44,
			['health'] = {
				['text'] = false,
				['text_format'] = 'current-percent',
				['position'] = 'RIGHT',
				['orientation'] = 'HORIZONTAL',
				['frequentUpdates'] = false,
			},
			['power'] = {
				['enable'] = true,
				['text'] = false,
				['text_format'] = 'current',	
				['width'] = 'fill',
				['height'] = 8,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},			
			['name'] = {
				['enable'] = true,
				['position'] = 'TOP',
				['length'] = 'SHORT',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 4,
				['numrows'] = 1,
				['growth-x'] = 'LEFT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'RIGHT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = '',		
				['durationLimit'] = 0,
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 4,
				['numrows'] = 1,
				['growth-x'] = 'RIGHT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'LEFT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = 'DebuffBlacklist',	
				['durationLimit'] = 0,
				['sizeOverride'] = 0,
			},	
			['buffIndicator'] = {
				['enable'] = true,
				['size'] = 6,
				['fontsize'] = 8,
				['colorIcons'] = true,
			},
			['roleIcon'] = {
				['enable'] = true,
				['position'] = 'BOTTOMRIGHT',
			},			
			['petsGroup'] = {
				['enable'] = true,
				['width'] = 74,
				['height'] = 22,
				['initialAnchor'] = 'BOTTOM',
				['anchorPoint'] = 'TOP',
				['xOffset'] = 0,
				['yOffset'] = 28,
			},
			['targetsGroup'] = {
				['enable'] = true,
				['width'] = 74,
				['height'] = 22,
				['initialAnchor'] = 'BOTTOM',
				['anchorPoint'] = 'TOP',
				['xOffset'] = 0,
				['yOffset'] = 3,
			},				
		},
		['raid10'] = {
			['enable'] = true,
			['visibility'] = '[@raid6,noexists][@raid11,exists] hide;show',
			['point'] = 'LEFT',
			['maxColumns'] = 2,
			['unitsPerColumn'] = 5,
			['columnSpacing'] = 3,
			['xOffset'] = 3,
			['yOffset'] = -3,
			['groupBy'] = 'GROUP',
			["showParty"] = true,
			["showRaid"] = true,
			["showSolo"] = false,
			["showPlayer"] = true,
			['healPrediction'] = false,
			['columnAnchorPoint'] = "TOP",
			['width'] = 74,
			['height'] = 44,
			['health'] = {
				['text'] = false,
				['text_format'] = 'deficit',
				['position'] = 'BOTTOM',
				['orientation'] = 'HORIZONTAL',
				['frequentUpdates'] = false,
			},
			['power'] = {
				['enable'] = true,
				['text'] = false,
				['text_format'] = 'current',	
				['width'] = 'fill',
				['height'] = 8,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},			
			['name'] = {
				['enable'] = true,
				['position'] = 'TOP',
				['length'] = 'SHORT',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 4,
				['numrows'] = 1,
				['growth-x'] = 'LEFT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'RIGHT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = '',		
				['durationLimit'] = 0,
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 4,
				['numrows'] = 1,
				['growth-x'] = 'RIGHT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'LEFT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = 'DebuffBlacklist',	
				['durationLimit'] = 0,
			},	
			['buffIndicator'] = {
				['enable'] = true,
				['size'] = 6,
				['fontsize'] = 8,
				['colorIcons'] = true,
			},
			['rdebuffs'] = {
				['enable'] = false,
				['fontsize'] = 10,
				['size'] = 26,
			},
			['roleIcon'] = {
				['enable'] = true,
				['position'] = 'BOTTOMRIGHT',
			},					
		},			
		['raid25'] = {
			['enable'] = true,
			['visibility'] = '[@raid11,noexists][@raid26,exists] hide;show',
			['point'] = 'LEFT',
			['maxColumns'] = 5,
			['unitsPerColumn'] = 5,
			['columnSpacing'] = 3,
			['xOffset'] = 3,
			['yOffset'] = -3,
			['groupBy'] = 'GROUP',
			["showParty"] = true,
			["showRaid"] = true,
			["showSolo"] = false,
			["showPlayer"] = true,
			['healPrediction'] = false,
			['columnAnchorPoint'] = "TOP",
			['width'] = 74,
			['height'] = 44,
			['health'] = {
				['text'] = false,
				['text_format'] = 'deficit',
				['position'] = 'BOTTOM',
				['orientation'] = 'HORIZONTAL',
				['frequentUpdates'] = false,
			},
			['power'] = {
				['enable'] = true,
				['text'] = false,
				['text_format'] = 'current',	
				['width'] = 'fill',
				['height'] = 8,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},			
			['name'] = {
				['enable'] = true,
				['position'] = 'TOP',
				['length'] = 'SHORT',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 4,
				['numrows'] = 1,
				['growth-x'] = 'LEFT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'RIGHT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = '',		
				['durationLimit'] = 0,
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 4,
				['numrows'] = 1,
				['growth-x'] = 'RIGHT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'LEFT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = 'DebuffBlacklist',	
				['durationLimit'] = 0,
			},	
			['buffIndicator'] = {
				['enable'] = true,
				['size'] = 6,
				['fontsize'] = 8,
				['colorIcons'] = true,
			},
			['rdebuffs'] = {
				['enable'] = false,
				['fontsize'] = 10,
				['size'] = 26,
			},
			['roleIcon'] = {
				['enable'] = true,
				['position'] = 'BOTTOMRIGHT',
			},					
		},					
		['raid40'] = {
			['enable'] = true,
			['frequentHealth'] = false,
			['visibility'] = '[@raid26,noexists] hide;show',
			['point'] = 'LEFT',
			['maxColumns'] = 8,
			['unitsPerColumn'] = 5,
			['columnSpacing'] = 3,
			['xOffset'] = 3,
			['yOffset'] = -3,
			['groupBy'] = 'GROUP',
			["showParty"] = true,
			["showRaid"] = true,
			["showSolo"] = false,
			["showPlayer"] = true,
			['healPrediction'] = false,
			['columnAnchorPoint'] = "TOP",
			['width'] = 74,
			['height'] = 36,
			['health'] = {
				['text'] = false,
				['text_format'] = 'deficit',
				['position'] = 'BOTTOM',
				['orientation'] = 'HORIZONTAL',
				['frequentUpdates'] = false,
			},
			['power'] = {
				['enable'] = false,
				['text'] = false,
				['text_format'] = 'current',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},			
			['name'] = {
				['enable'] = true,
				['position'] = 'TOP',
				['length'] = 'SHORT',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 3,
				['numrows'] = 1,
				['growth-x'] = 'LEFT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'RIGHT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = '',		
				['durationLimit'] = 0,
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 4,
				['numrows'] = 1,
				['growth-x'] = 'RIGHT',
				['growth-y'] = 'DOWN',
				['initialAnchor'] = 'LEFT',
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontsize'] = 10,
				['showPlayerOnly'] = false,
				['useFilter'] = '',	
				['durationLimit'] = 0,
			},	
			['rdebuffs'] = {
				['enable'] = false,
				['fontsize'] = 10,
				['size'] = 22,
			},
			['roleIcon'] = {
				['enable'] = true,
				['position'] = 'BOTTOMRIGHT',
			},				
			['buffIndicator'] = {
				['enable'] = true,
				['size'] = 6,
				['fontsize'] = 8,
				['colorIcons'] = true,
			},			
		},	
		['tank'] = {
			['enable'] = true,
			['width'] = 120,
			['height'] = 28,
		},	
		['assist'] = {
			['enable'] = true,
			['width'] = 120,
			['height'] = 28,
		},
	},
}


--Actionbar
P["actionbar"] = {
	["macrotext"] = true,
	["hotkeytext"] = true,
	['fontsize'] = 11,
	["enablecd"] = true,
	["treshold"] = 3,
	['useMaxPaging'] = false,
	["expiringcolor"] = { r = 1, g = 0, b = 0 },
	["secondscolor"] = { r = 1, g = 1, b = 0 },
	["minutescolor"] = { r = 1, g = 1, b = 1 },
	["hourscolor"] = { r = 0.4, g = 1, b = 1 },
	["dayscolor"] = { r = 0.4, g = 0.4, b = 1 },	
	['bar1'] = {
		['enabled'] = true,
		['buttons'] = 12,
		['mouseover'] = false,
		['buttonsPerRow'] = 12,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = true,
		['heightMult'] = 2,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,		
		['paging'] = {
			["DRUID"] = "[bonusbar:1,nostealth] 7; [bonusbar:1,stealth] 8; [bonusbar:2] 8; [bonusbar:3] 9; [bonusbar:4] 10;",
			["WARRIOR"] = "[bonusbar:1] 7; [bonusbar:2] 8; [bonusbar:3] 9;",
			["PRIEST"] = "[bonusbar:1] 7;",
			["ROGUE"] = "[bonusbar:1] 7; [form:3] 7;",	
		},
		['visibility'] = "",
	},
	['bar2'] = {
		['enabled'] = true,
		['mouseover'] = false,
		['buttons'] = 12,
		['buttonsPerRow'] = 12,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = false,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,		
		['paging'] = {},
		['visibility'] = "[vehicleui] hide;show",
	},
	['bar3'] = {
		['enabled'] = false,
		['mouseover'] = false,
		['buttons'] = 12,
		['buttonsPerRow'] = 12,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = false,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,
		['paging'] = {},
		['visibility'] = "[vehicleui] hide;show",
	},
	['bar4'] = {
		['enabled'] = true,
		['mouseover'] = true,
		['buttons'] = 6,
		['buttonsPerRow'] = 3,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = true,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,
		['paging'] = {},
		['visibility'] = "[vehicleui] hide;show",
	},
	['bar5'] = {
		['enabled'] = true,
		['mouseover'] = true,
		['buttons'] = 6,
		['buttonsPerRow'] = 3,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = true,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,
		['paging'] = {},
		['visibility'] = "[vehicleui] hide;show",
	},
	['barPet'] = {
		['enabled'] = true,
		['mouseover'] = false,
		['buttons'] = NUM_PET_ACTION_SLOTS,
		['buttonsPerRow'] = 1,
		['point'] = 'TOPRIGHT',
		['backdrop'] = true,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,
		['visibility'] = "[pet,novehicleui,nobonusbar:5] show;hide",
	},
	['barShapeShift'] = {
		['enabled'] = true,
		['mouseover'] = false,
		['buttonsPerRow'] = 1,
		['buttons'] = NUM_SHAPESHIFT_SLOTS,
		['point'] = 'TOPLEFT',
		['backdrop'] = false,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 28,
		["buttonspacing"] = 4,
	},
	['barTotem'] = {
		['enabled'] = true,
		['mouseover'] = false,
	},
};