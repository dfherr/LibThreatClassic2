local ThreatLib = LibStub and LibStub("LibThreatClassic2", true)
if not ThreatLib then return end

local MOLTEN_GIANT_ID = 11658
local KNOCK_AWAY_ID = 18945

ThreatLib:GetModule("NPCCore"):RegisterModule(MOLTEN_GIANT_ID, function(MoltenGiant)
	function MoltenGiant:Init()
		self:RegisterCombatant(RAGNAROS_ID, true)
		self:RegisterSpellDamageHandler(MOLTEN_GIANT_ID, KNOCK_AWAY_ID, self.KnockAway)
	end

	function MoltenGiant:KnockAway()
		self:ModifyThreat(sourceGUID, unitId, 0.5, 0)
	end
end)
