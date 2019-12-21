local ThreatLib = LibStub and LibStub("LibThreatClassic2", true)
if not ThreatLib then return end

local ONYXIA_ID = 10184
local FIREBALL_ID = 18392

ThreatLib:GetModule("NPCCore"):RegisterModule(ONYXIA_ID, function(Onyxia)
	function Onyxia:Init()
        self:RegisterCombatant(ONYXIA_ID, true)
		self:RegisterSpellHandler("SPELL_CAST_SUCCESS", self.Fireball, FIREBALL_ID)
	end

    function Onyxia:Fireball(sourceGUID, destGUID, spellId)
        -- TODO wipe threat on target
        -- ThreatLib:Debug("oyxia fireball triggered", sourceGUID, destGUID, spellId)
	end
end)
