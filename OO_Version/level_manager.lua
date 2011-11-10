--====================================================================--
-- level_manager.lua
--
-- by David McCuskey
--
-- Sample code is MIT licensed, the same license which covers Lua itself
-- http://en.wikipedia.org/wiki/MIT_License
-- Copyright (C) 2011 David McCuskey. All Rights Reserved.
-- Copyright (C) 2010 ANSCA Inc. All Rights Reserved.
--====================================================================--

--====================================================================--
-- Imports
--====================================================================--

local Objects = require( "dmc_objects" )
local Utils = require( "dmc_utils" )
local ui = require( "ui" )
local level_data = require( "level_data" )

-- setup some aliases to make code cleaner
local inheritsFrom = Objects.inheritsFrom
local CoronaBase = Objects.CoronaBase


--====================================================================--
-- Setup, Constants
--====================================================================--

local tapSound = audio.loadSound( "assets/sounds/tapsound.wav" )

local level_manager = nil -- this will be our singleton


--====================================================================--
-- Level Manager class
--====================================================================--

local LevelManager = inheritsFrom( CoronaBase )
LevelManager.NAME = "Level Manager"


-- _init()
--
-- one of the base methods to override for dmc_objects
--
function LevelManager:_init( options )

	-- don't forget this !!!
	self:superCall( "_init" )

end


-- _createView()
--
-- one of the base methods to override for dmc_objects
--
function LevelManager:_createView()

	--== Shading

	local shadeRect = display.newRect( 0, 0, 480, 320 )
	shadeRect:setFillColor( 0, 0, 0, 255 )
	shadeRect.alpha = 0
	self:insert( shadeRect )
	transition.to( shadeRect, { time=100, alpha=0.85 } )

	--== Background

	local levelSelectionBg = display.newImageRect( "assets/backgrounds/levelselection.png", 450, 380 )
	levelSelectionBg.x = 240; levelSelectionBg.y = 120
	levelSelectionBg.isVisible = false
	self:insert( levelSelectionBg )
	timer.performWithDelay( 200, function() levelSelectionBg.isVisible = true; end, 1 )

	--== Level 1 Button

	local level1Btn = ui.newButton{
		defaultSrc = "assets/buttons/level1btn.png",
		defaultX = 114,
		defaultY = 114,
		overSrc = "assets/buttons/level1btn-over.png",
		overX = 114,
		overY = 114,
		onEvent = Utils.createObjectCallback( self, self.level1ButtonHandler ),
		id = "Level1Button",
		text = "",
		font = "Helvetica",
		textColor = { 255, 255, 255, 255 },
		size = 16,
		emboss = false
	}

	level1Btn.x = 104 level1Btn.y = 95
	level1Btn.isVisible = false

	self:insert( level1Btn )
	timer.performWithDelay( 200, function() level1Btn.isVisible = true; end, 1 )

	--== Level 2 Button

	local level2Btn = ui.newButton{
		defaultSrc = "assets/buttons/level2btn.png",
		defaultX = 114,
		defaultY = 114,
		overSrc = "assets/buttons/level2btn-over.png",
		overX = 114,
		overY = 114,
		onEvent = Utils.createObjectCallback( self, self.level2ButtonHandler ),
		id = "Level2Button",
		text = "",
		font = "Helvetica",
		textColor = { 255, 255, 255, 255 },
		size = 16,
		emboss = false
	}

	level2Btn.x = level1Btn.x + 134; level2Btn.y = 95
	level2Btn.isVisible = false

	self:insert( level2Btn )
	timer.performWithDelay( 200, function() level2Btn.isVisible = true; end, 1 )
	
	
	--== Level 3 Button

	local level3Btn = ui.newButton{
		defaultSrc = "assets/buttons/level3btn.png",
		defaultX = 114,
		defaultY = 114,
		overSrc = "assets/buttons/level3btn-over.png",
		overX = 114,
		overY = 114,
		onEvent = Utils.createObjectCallback( self, self.level3ButtonHandler ),
		id = "Level3Button",
		text = "",
		font = "Helvetica",
		textColor = { 255, 255, 255, 255 },
		size = 16,
		emboss = false
	}

	level3Btn.x = level2Btn.x + 134; level3Btn.y = 95
	level3Btn.isVisible = false

	self:insert( level3Btn )
	timer.performWithDelay( 200, function() level3Btn.isVisible = true; end, 1 )

	--== Level 4 Button

	local level4Btn = ui.newButton{
		defaultSrc = "assets/buttons/level3btn.png",
		defaultX = 114,
		defaultY = 114,
		overSrc = "assets/buttons/level3btn-over.png",
		overX = 114,
		overY = 114,
		onEvent = Utils.createObjectCallback( self, self.level4ButtonHandler ),
		id = "Level4Button",
		text = "",
		font = "Helvetica",
		textColor = { 255, 255, 255, 255 },
		size = 16,
		emboss = false
	}

	level4Btn.x = 104; level4Btn.y = 220
	level4Btn.isVisible = false

	self:insert( level4Btn )
	timer.performWithDelay( 200, function() level4Btn.isVisible = true; end, 1 )

	--== Level 5 Button

	local level5Btn = ui.newButton{
		defaultSrc = "assets/buttons/level3btn.png",
		defaultX = 114,
		defaultY = 114,
		overSrc = "assets/buttons/level3btn-over.png",
		overX = 114,
		overY = 114,
		onEvent = Utils.createObjectCallback( self, self.level5ButtonHandler ),
		id = "Level5Button",
		text = "",
		font = "Helvetica",
		textColor = { 255, 255, 255, 255 },
		size = 16,
		emboss = false
	}

	level5Btn.x = level4Btn.x + 134; level5Btn.y = 220
	level5Btn.isVisible = false

	self:insert( level5Btn )
	timer.performWithDelay( 200, function() level5Btn.isVisible = true; end, 1 )
	
	--== Level 6 Button

	local level6Btn = ui.newButton{
		defaultSrc = "assets/buttons/level3btn.png",
		defaultX = 114,
		defaultY = 114,
		overSrc = "assets/buttons/level3btn-over.png",
		overX = 114,
		overY = 114,
		onEvent = Utils.createObjectCallback( self, self.level6ButtonHandler ),
		id = "Level6Button",
		text = "",
		font = "Helvetica",
		textColor = { 255, 255, 255, 255 },
		size = 16,
		emboss = false
	}

	level6Btn.x = level5Btn.x + 134; level6Btn.y = 220
	level6Btn.isVisible = false

	self:insert( level6Btn )
	timer.performWithDelay( 200, function() level6Btn.isVisible = true; end, 1 )

	--== Close Button

	local closeBtn = ui.newButton{
		defaultSrc = "assets/buttons/closebtn.png",
		defaultX = 44,
		defaultY = 44,
		overSrc = "assets/buttons/closebtn-over.png",
		overX = 44,
		overY = 44,
		onEvent = Utils.createObjectCallback( self, self.cancelButtonHandler ),
		id = "CloseButton",
		text = "",
		font = "Helvetica",
		textColor = { 255, 255, 255, 255 },
		size = 16,
		emboss = false
	}

	closeBtn.x = 28; closeBtn.y = 26
	closeBtn.isVisible = false

	self:insert( closeBtn )
	timer.performWithDelay( 201, function() closeBtn.isVisible = true; end, 1 )

	self:hide()

end
-- _undoCreateView()
--
-- one of the base methods to override for dmc_objects
--
function LevelManager:_undoCreateView()
	for i=self.display.numChildren, 1, -1 do
		self.display[ i ]:removeSelf()
	end
end


--== Class Methods


function LevelManager:cancelButtonHandler( event )
	if event.phase == "release" then
		audio.play( tapSound )
		self:dispatchEvent( { name="level", type="cancelled" } )
	end

	return true
end

function LevelManager:level1ButtonHandler( event )
	if event.phase == "release" then
		audio.play( tapSound )
		self:dispatchEvent( { name="level", type="selected", data=level_data[ 'level1' ] } )
	end

	return true
end

function LevelManager:level2ButtonHandler( event )
	if event.phase == "release" then
		audio.play( tapSound )
		self:dispatchEvent( { name="level", type="selected", data=level_data[ 'level2' ] } )
	end

	return true
end

function LevelManager:level3ButtonHandler( event )
	if event.phase == "release" then
		audio.play( tapSound )
		self:dispatchEvent( { name="level", type="selected", data=level_data[ 'level3' ] } )
	end

	return true
end

function LevelManager:level4ButtonHandler( event )
	if event.phase == "release" then
		audio.play( tapSound )
		self:dispatchEvent( { name="level", type="selected", data=level_data[ 'level4' ] } )
	end

	return true
end

function LevelManager:level5ButtonHandler( event )
	if event.phase == "release" then
		audio.play( tapSound )
		self:dispatchEvent( { name="level", type="selected", data=level_data[ 'level5' ] } )
	end

	return true
end

function LevelManager:level6ButtonHandler( event )
	if event.phase == "release" then
		audio.play( tapSound )
		self:dispatchEvent( { name="level", type="selected", data=level_data[ 'level6' ] } )
	end

	return true
end

function LevelManager:getLevelData( name )
	return level_data[ name ]
end

function LevelManager:getNextLevelData( currentLevelName )
	local nextLevelName = level_data[ currentLevelName ].info.nextLevel
	return self:getLevelData( nextLevelName )
end



--[[
function createLevelManagerSingleton()
	print("createLevelManagerSingleton")
	level_manager = LevelManager:new()
end
createLevelManagerSingleton()
]]--


-- create our singleton of the level manager
local lvm = nil
if not lvm then
	lvm = LevelManager:new()
end

return lvm
