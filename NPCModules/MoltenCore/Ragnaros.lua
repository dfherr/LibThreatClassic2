local ThreatLib = LibStub and LibStub("LibThreatClassic2", true)
if not ThreatLib then return end

local RAGNAROS_ID = 11502
local WRATH_ID = 20566

ThreatLib:GetModule("NPCCore"):RegisterModule(RAGNAROS_ID, function(Ragnaros)
	function Ragnaros:Init()
		self:RegisterCombatant(RAGNAROS_ID, true)
		self:RegisterSpellHandler("SPELL_CAST_SUCCESS", self.Wrath, WRATH_ID)
	end

	function Ragnaros:Wrath()
		self:WipeRaidThreatOnMob(RAGNAROS_ID)
	end
end)
