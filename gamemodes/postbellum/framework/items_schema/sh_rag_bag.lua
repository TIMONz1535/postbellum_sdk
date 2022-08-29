--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("cits_base");
ITEM.name = "Тряпичный мешок"
ITEM.plural = "Тряпичных мешоков"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_bagimp.mdl"
ITEM.weight = 0.5
ITEM.category = "Сумки"
ITEM.isRareItem = true
ITEM.description = "Маленький, но вместительный для своих размеров тряпичный мешочек."
ITEM.addInvSpace = 12
ITEM.wearBodyId = 6;
ITEM.wearBodyState = 3;
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};


-- Called when a player attempts to buy the item from salesman.
function ITEM:CanBuy(player)
    if (player:HasItemByID("cps_gear") or player:HasItemByID("cps_bag") or player:HasItemByID("backpack") or player:HasItemByID("pouch")
        or player:HasItemByID("small_bag") or player:HasItemByID("big_backpack") or player:HasItemByID("rag_bag")) then
		Clockwork.player:Notify(player, "Вы не можете взять больше "..self.plural.."!")

		return false
	end
end

-- Called when a player attempts to take the item from storage.
function ITEM:CanTakeStorage(player, storageTable)
    if (player:HasItemByID("cps_gear") or player:HasItemByID("cps_bag") or player:HasItemByID("backpack") or player:HasItemByID("pouch")
        or player:HasItemByID("small_bag") or player:HasItemByID("big_backpack") or player:HasItemByID("rag_bag")) then
		Clockwork.player:Notify(player, "Вы не можете взять больше "..self.plural.."!")

		return false
	end
end;

-- Called when a player attempts to pick up the item.
function ITEM:CanPickup(player, quickUse, itemEntity)
    if (player:HasItemByID("cps_gear") or player:HasItemByID("cps_bag") or player:HasItemByID("backpack") or player:HasItemByID("pouch")
        or player:HasItemByID("small_bag") or player:HasItemByID("big_backpack") or player:HasItemByID("rag_bag")) then
		Clockwork.player:Notify(player, "Вы не можете взять больше "..self.plural.."!")

		return false
	end
end;

-- Called when a player attempts to sell the item to salesman.
function ITEM:CanSell(player)
	if (player:GetInventoryWeight() > (player:GetMaxWeight() - self("addInvSpace"))) then
		Clockwork.player:Notify(player, "Вы не можете продать тряпичный мешок, пока носите в ней вещи!");
		
		return false;
	end;
end

-- Called when a player attempts to give the item to storage.
function ITEM:CanGiveStorage(player, storageTable)
	if (player:GetInventoryWeight() > (player:GetMaxWeight() - self("addInvSpace"))) then
		Clockwork.player:Notify(player, "Вы не можете выбросить тряпичный мешок, пока носите в ней вещи!");
		
		return false;
	end;
end

-- Called when a player drops the item.
function ITEM:OnDrop(player, position)
	if (player:GetInventoryWeight() > (player:GetMaxWeight() - self("addInvSpace"))) then
		Clockwork.player:Notify(player, "Вы не можете выбросить тряпичный мешок, пока носите в ней вещи!");
		
		return false;
	end;
end;

ITEM:Register()