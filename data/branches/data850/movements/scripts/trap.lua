function onStepIn(cid, item, pos)
	if (isInArray(TRAP_OFF, item.itemid) == TRUE) then
		if (isPlayer(cid) == TRUE) then
			doTargetCombatHealth(0, cid, COMBAT_PHYSICALDAMAGE, -50, -100, CONST_ME_NONE)
			doTransformItem(item.uid, item.itemid + 1)
		end
	elseif (item.itemid == 2579) then
		if (isPlayer(cid) ~= TRUE) then
			doTargetCombatHealth(0, cid, COMBAT_PHYSICALDAMAGE, -15, -30, CONST_ME_NONE)
			doTransformItem(item.uid, item.itemid - 1)
		end
	end
	return TRUE
end

function onStepOut(cid, item, pos)
	doTransformItem(item.uid, item.itemid - 1)
	return TRUE
end

function onRemoveItem(item, tile, pos)
	if (getDistanceBetween(getThingPos(item.uid), pos) > 0) then
		doTransformItem(item.uid, item.itemid - 1)
		doSendMagicEffect(getThingPos(item.uid), CONST_ME_POFF)
	end
	return TRUE
end

function onAddItem(item, tileitem, pos)
	doTransformItem(tileitem.uid, tileitem.itemid - 1)
	doSendMagicEffect(pos, CONST_ME_POFF)
	return TRUE
end
