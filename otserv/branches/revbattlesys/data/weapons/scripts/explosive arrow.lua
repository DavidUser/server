local combat = createCombatObject(COMBAT_TYPE_HITPOINTS)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_DAMAGE_FIRE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_BURSTARROW)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, 0, 0, -150)

local area = createCombatArea( { {1, 1, 1}, {1, 3, 1}, {1, 1, 1} } )
setCombatArea(combat, area)

function onUseWeapon(cid, var)
	doCombat(cid, combat, var)
end
