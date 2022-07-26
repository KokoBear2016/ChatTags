--[[

	Prefixes
	- Module
	Author: Nicholas Foreman (Azutreo - https://www.roblox.com/users/9221415/profile)

	A list of options and how to assign them for prefixes

--]]

---------------------
-- ROBLOX SERVICES --
---------------------

local ReplicatedStorage = game:GetService("ReplicatedStorage")

---------------------------
-- KNIT AND DEPENDENCIES --
---------------------------

-- local Knit = require(ReplicatedStorage.Packages.Knit)
local Enums = require(script.Parent.Parent.Util.Enums) -- Avoid cyclic table reference

-------------------
-- CREATE MODULE --
-------------------

local Prefixes = {
	IsEnabled = true,
	Configuration = {},

	Options = {},
	Assignments = {}
}

------------------------
-- PRIVATE PROPERTIES --
------------------------

export type Prefix = {
	Name: string,
	Text: string,
	Color: Color3
}

-----------------------
-- PUBLIC PROPERTIES --
-----------------------

-- Configuration

Prefixes.Configuration.UseDefaultPrefix = false
Prefixes.Configuration.DefaultPrefix = {
	Name = "Default",
	Text = "[Player]",
	Color = Color3.fromRGB(170, 170, 170),
}

-- Prefix Options

Prefixes.Options = {

	{
		Name = "Serenity Owner",
		Text = "[Serenity Owner]",
		Color = Color3.fromHex("#B026FF"), -- Dark pastel red
	},
}

-- Prefix Assignments

Prefixes.Assignments.Players = {

	{
		OptionName = "Contributor",

		UserId = 3509384967, -- https://www.roblox.com/users/3509384967/profile
		IsPlayer = true
	},
}

Prefixes.Assignments.Badges = {

	{
		OptionName = "Random for Example Purposes",

		BadgeId = 2127628406, -- https://www.roblox.com/badges/2127628406/serenity
		HasBadge = false
	},

}

Prefixes.Assignments.Teams = {

	{
		OptionName = "Random for Example Purposes",

		TeamName = "Random for Example Purposes",
		IsOnTeam = true
	},

}

Prefixes.Assignments.CollectionTags = {

	{
		OptionName = "Random for Example Purposes",

		CollectionTagName = "RandomExampleTag",
		HasTag = true
	},

}

Prefixes.Assignments.Attributes = {

	{
		OptionName = "Random for Example Purposes",

		AttributeName = "RandomExampleAttribute",
		AttributeValue = true
	},

}

-----------------------
-- PRIVATE FUNCTIONS --
-----------------------

----------------------
-- PUBLIC FUNCTIONS --
----------------------

---------------------------
-- MODULE INITIALIZATION --
---------------------------

-------------------
-- RETURN MODULE --
-------------------

return Prefixes