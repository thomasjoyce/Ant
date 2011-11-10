--====================================================================--
-- level_data.lua
--
-- by David McCuskey
--
-- Sample code is MIT licensed, the same license which covers Lua itself
-- http://en.wikipedia.org/wiki/MIT_License
-- Copyright (C) 2011 David McCuskey. All Rights Reserved.
--====================================================================--

local game_data = {

	--== Level 1 ==--
	level1 = {
		info = {
			icon = "level1btn",
			level = "level1",
			restartLevel = "level1",
			nextLevel = "level2",
			characterName = "ghost",
			enemyName = "monster",
		},
		backgroundItems = {
			{ name="altbackground-one", x=0, y=160, reference="CenterLeft" },
			{ name="altbackground-two", x=480, y=160, reference="CenterLeft" },

			{ name="clouds-left", x=240, y=160 },
			{ name="clouds-right", x=720, y=160 },
			{ name="clouds-left", x=1200, y=160 },
			{ name="clouds-right", x=1680, y=160 },

			{ name="trees-left", x=240, y=160 },
			{ name="trees-right", x=720, y=160 },

			{ name="ground-light", x=150, y=190 },
		},
		physicsForgroundItems = {
			{ name="ground-one", x=0, y=320, reference="BottomLeft" },
			{ name="ground-two", x=480, y=320, reference="BottomLeft" },
		},
		physicsGameItems = {
			-- bottom vertical items
			{ name="vert-slab", x=600, y=215 },
			{ name="vert-slab", x=646, y=215 },
			{ name="vert-plank", x=623, y=215 },
			{ name="vert-plank", x=723, y=215 },
			{ name="vert-plank", x=821, y=215 },

			{ name="vert-slab", x=800, y=215 },
			{ name="vert-slab", x=843, y=215 },

			{ name="horiz-plank", x=674, y=162 },
			{ name="horiz-plank", x=772, y=162 },
			{ name="horiz-plank", x=723, y=142 },
			{ name="tombstone", x=650, y=128 },
			{ name="tombstone", x=796, y=128 },
			{ name="monster", x=745, y=125 },
			{ name="monster", x=700, y=125 },
		},
	},

	--== Level 2 ==--
	level2 = {
		info = {
			icon = "level2btn",
			level = "level2",
			restartLevel = "level2",
			nextLevel = "level3",
			characterName = "ghost",
			enemyName = "monster",
		},
		backgroundItems = {
			{ name="background-one", x=0, y=160, reference="CenterLeft" },
			{ name="background-two", x=480, y=160, reference="CenterLeft" },

			{ name="clouds-left", x=240, y=160 },
			{ name="clouds-right", x=720, y=160 },
			{ name="clouds-left", x=1200, y=160 },
			{ name="clouds-right", x=1680, y=160 },

			{ name="trees-left", x=240, y=160 },
			{ name="trees-right", x=720, y=160 },

			{ name="red-glow", x=725, y=160, alpha=0.5 },
			{ name="ground-light", x=150, y=190 },
		},
		physicsForgroundItems = {
			{ name="ground-one", x=0, y=320, reference="BottomLeft" },
			{ name="ground-two", x=480, y=320, reference="BottomLeft" },
		},
		physicsGameItems = {
			-- bottom vertical items
			{ name="vert-slab", x=575, y=215 },
			{ name="vert-slab", x=575, y=155 },
			{ name="vert-plank", x=623, y=215 },
			{ name="vert-plank", x=723, y=215 },
			{ name="vert-plank", x=821, y=215 },
			{ name="vert-slab", x=871, y=215 },
			{ name="vert-slab", x=871, y=155 },
			-- horizontal planks
			{ name="horiz-plank", x=674, y=160 },
			{ name="horiz-plank", x=772, y=160 },
			{ name="horiz-plank", x=723, y=140 },
			-- top vertical slabs
			{ name="vert-slab", x=685, y=102 },
			{ name="vert-slab", x=760, y=102 },
			{ name="horiz-plank", x=723, y=62 },
			-- tombstones
			{ name="tombstone", x=674, y=230 },
			{ name="tombstone", x=723, y=33 },
			-- enemies
			{ name="monster", x=772, y=235 },
			{ name="monster", x=723, y=120 },
		},
	},
	
	--== Level 3 ==--
	level3 = {
		info = {
			icon = "level3btn",
			level = "level3",
			restartLevel = "level3",
			nextLevel = "level4",
			characterName = "ghost",
			enemyName = "monster",
		},
		backgroundItems = {
			
			{ name="clouds-left", x=240, y=160 },
			{ name="clouds-right", x=720, y=160 },
			{ name="clouds-left", x=1200, y=160 },
			{ name="clouds-right", x=1680, y=160 },

			{ name="ground-light", x=150, y=190 },
		},
		physicsForgroundItems = {
			{ name="ground-one", x=0, y=320, reference="BottomLeft" },
			{ name="ground-two", x=480, y=320, reference="BottomLeft" },
		},
		physicsGameItems = {
		
		    { name="slingpole-front", x=125, y=125},
		    { name="slingpole-back",  x=125, y=235}, 
		    { name="elastic-sling"},
		    { name="ant", x=125, y=205 },
		
			-- bottom vertical items
			{ name="vert-slab", x=575, y=215 },
			{ name="vert-slab", x=575, y=155 },
			{ name="vert-plank", x=623, y=215 },
			{ name="vert-plank", x=723, y=215 },
			{ name="vert-plank", x=821, y=215 },
			{ name="vert-slab", x=871, y=215 },
			{ name="vert-slab", x=871, y=155 },
			-- horizontal planks
			{ name="horiz-plank", x=674, y=160 },
			{ name="horiz-plank", x=772, y=160 },
			{ name="horiz-plank", x=723, y=140 },
			-- top vertical slabs
			{ name="vert-slab", x=685, y=102 },
			{ name="vert-slab", x=760, y=102 },
			{ name="horiz-plank", x=723, y=62 },
			-- tombstones
			{ name="tombstone", x=674, y=230 },
			{ name="tombstone", x=723, y=33 },
			-- enemies
			{ name="monster", x=772, y=235 },
		--	{ name="monster", x=681, y=102 },
		--	{ name="monster", x=676, y=235 },
		--	{ name="monster", x=600, y=235 },
		--	{ name="monster", x=670, y=235 },
		},
	},
	
	--== Level 4 ==--
	level4 = {
		info = {
			icon = "level3btn",
			level = "level4",
			restartLevel = "level4",
			nextLevel = "level5",
			characterName = "ghost",
			enemyName = "monster",
		},
		backgroundItems = {
			{ name="altbackground-one", x=0, y=160, reference="CenterLeft" },
			{ name="altbackground-two", x=480, y=160, reference="CenterLeft" },

			{ name="clouds-left", x=240, y=160 },
			{ name="clouds-right", x=720, y=160 },
			{ name="clouds-left", x=1200, y=160 },
			{ name="clouds-right", x=1680, y=160 },

			{ name="trees-left", x=240, y=160 },
			{ name="trees-right", x=720, y=160 },

			{ name="ground-light", x=150, y=190 },
		},
		physicsForgroundItems = {
			{ name="ground-one", x=0, y=320, reference="BottomLeft" },
			{ name="ground-two", x=480, y=320, reference="BottomLeft" },
		},
		physicsGameItems = {
		    { name="vert-plank", x=800, y=215 },
	        { name="vert-plank", x=800, y=215 },
		    { name="vert-plank", x=800, y=215 },
			{ name="vert-plank", x=800, y=215 },
		},
	},
	
	--== Level 5 ==--
	level5 = {
		info = {
			icon = "level3btn",
			level = "level5",
			restartLevel = "level5",
			nextLevel = "level6",
			characterName = "ghost",
			enemyName = "monster",
		},
		backgroundItems = {
			{ name="altbackground-one", x=0, y=160, reference="CenterLeft" },
			{ name="altbackground-two", x=480, y=160, reference="CenterLeft" },

			{ name="clouds-left", x=240, y=160 },
			{ name="clouds-right", x=720, y=160 },
			{ name="clouds-left", x=1200, y=160 },
			{ name="clouds-right", x=1680, y=160 },

			{ name="trees-left", x=240, y=160 },
			{ name="trees-right", x=720, y=160 },

			{ name="ground-light", x=150, y=190 },
		},
		physicsForgroundItems = {
			{ name="ground-one", x=0, y=320, reference="BottomLeft" },
			{ name="ground-two", x=480, y=320, reference="BottomLeft" },
		},
		physicsGameItems = {
	    	{ name="vert-plank", x=800, y=215 },
	        { name="vert-plank", x=800, y=215 },
		    { name="vert-plank", x=800, y=215 },
			{ name="vert-plank", x=800, y=215 },
			{ name="vert-plank", x=800, y=215 },
		},
	},
	
	--== Level 6 ==--
	level6 = {
		info = {
			icon = "level3btn",
			level = "level6",
			restartLevel = "level6",
			nextLevel = "level6",
			characterName = "ghost",
			enemyName = "monster",
		},
		backgroundItems = {
			{ name="altbackground-one", x=0, y=160, reference="CenterLeft" },
			{ name="altbackground-two", x=480, y=160, reference="CenterLeft" },

			{ name="clouds-left", x=240, y=160 },
			{ name="clouds-right", x=720, y=160 },
			{ name="clouds-left", x=1200, y=160 },
			{ name="clouds-right", x=1680, y=160 },

			{ name="trees-left", x=240, y=160 },
			{ name="trees-right", x=720, y=160 },

			{ name="ground-light", x=150, y=190 },
		},
		physicsForgroundItems = {
			{ name="ground-one", x=0, y=320, reference="BottomLeft" },
			{ name="ground-two", x=480, y=320, reference="BottomLeft" },
		},
		physicsGameItems = {
		    	{ name="vert-plank", x=800, y=215 },
		        { name="vert-plank", x=800, y=215 },
			    { name="vert-plank", x=800, y=215 },
				{ name="vert-plank", x=800, y=215 },
				{ name="vert-plank", x=800, y=215 },
				{ name="vert-plank", x=800, y=215 },
			
		},
	},
}


return game_data
