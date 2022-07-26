
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

local ChatColors = {
	IsEnabled = false,
	Configuration = {},

	Options = {},
	Assignments = {}
}

------------------------
-- PRIVATE PROPERTIES --
------------------------

export type ChatColor = {
	Name: string,
	Color: Color3
}

-----------------------
-- PUBLIC PROPERTIES --
-----------------------

-- Configuration

ChatColors.Configuration.DefaultColor = Color3.fromRGB(176, 38, 225)

-- Chat color options

ChatColors.Options = {

	{
		Name = "Roblox Employee",
		Color = Color3.fromRGB(255, 215, 0), -- Classic admin yellow
	},

	{
		Name = "Roblox Intern",
		Color = Color3.fromRGB(175, 221, 255), -- Classic intern blue
	},

	{
		Name = "Roblox Quality Assurance",
		Color = Color3.fromRGB(175, 221, 255), -- Classic intern blue
	},

}

-- Chat color assignments

ChatColors.Assignments.Players = {

}

ChatColors.Assignments.Passes = {

}

ChatColors.Assignments.Badges = {

}

ChatColors.Assignments.Teams = {

}

ChatColors.Assignments.CollectionTags = {

}

ChatColors.Assignments.Attributes = {

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

return ChatColors