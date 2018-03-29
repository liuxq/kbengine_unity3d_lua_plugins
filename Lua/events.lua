--[[
Auth:Lxq
like Unity Brocast Event System in lua.
]]

require "event"

local Event = {}
local events = {}

function Event.AddListener(eventStr, func, obj)
	if not eventStr or type(eventStr) ~= "string" then
		error("eventStr parameter in addlistener function has to be string, " .. type(eventStr) .. " not right.")
	end
	if not func or type(func) ~= "function" then
		error("func parameter in addlistener function has to be function, " .. type(func) .. " not right")
	end

	if not events[eventStr] then
		--create the Event with name
		events[eventStr] = event(eventStr, true)
	end

	--add this func
	events[eventStr]:AddListener(events[eventStr]:CreateListener(func, obj));

end

function Event.Brocast(eventStr, ...)
	if not events[eventStr] then
		error("brocast " .. eventStr .. " has no event.")
	else
		events[eventStr](...)
	end
end

function Event.RemoveListener(eventStr, func, obj)
	if not events[eventStr] then
		error("remove " .. eventStr .. " has no event.")
	else
		events[eventStr]:Remove(func, obj);
	end
end

return Event