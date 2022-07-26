
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

local NameColors = {
	IsEnabled = true,
	Configuration = {},

	Options = {},
	Assignments = {}
}

------------------------
-- PRIVATE PROPERTIES --
------------------------

export type NameColor = {
	Name: string,
	Color: Color3
}

-----------------------
-- PUBLIC PROPERTIES --
-----------------------

-- Configuration

-- mainly for debugging, but also makes it so you don't have to delete everything to disable the assigned options
NameColors.Configuration.UseAssignedColor = false

NameColors.Configuration.UseTeamColor = true
NameColors.Configuration.UseClassicNameColor = true
NameColors.Configuration.DefaultColor = Color3.fromRGB(170, 170, 170)

-- Name color options

NameColors.Options = {

	{
		Name = "Serenity Owner",
		Color = Color3.fromHex("#B026FF"), -- Dark pastel red
	}


}

-- Name color assignments

NameColors.Assignments.Players = {

	{
		OptionName = "Contributor",

		UserId = 3509384967, -- https://www.roblox.com/users/3509384967/profile
		IsPlayer = true
	},

}

NameColors.Assignments.Attributes = {

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

return NameColors