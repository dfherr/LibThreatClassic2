if not _G.THREATLIB_LOAD_MODULES then return end -- only load if LibThreatClassic2.lua allows it
if not LibStub then return end
local ThreatLib, MINOR = LibStub("LibThreatClassic2", true)
if not ThreatLib then return end

local BROODLORD_ID = 12017
local KNOCK_AWAY_ID = 18670

ThreatLib:GetModule("NPCCore-r"..MINOR):RegisterModule(BROODLORD_ID, function(Broodlord)
	function Broodlord:Init()
        self:RegisterCombatant(BROODLORD_ID, true)
		self:RegisterSpellDamageHandler(BROODLORD_ID, KNOCK_AWAY_ID, self.KnockAway)
	end

	function Broodlord:KnockAway(sourceGUID, unitId)
        self:ModifyThreat(sourceGUID, unitId, 0.5, 0)
	end
end)
