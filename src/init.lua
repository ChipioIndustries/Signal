--[[
	Signal.new()
	void Signal:fire(...)
	Connection Signal:connect(function(...))

	Connection.new(callback)
	Connection:disconnect()
]]

local HttpService = game:GetService("HttpService")

local Connection = require(script.Connection)

local Signal = {}
Signal.__index = Signal

function Signal.new()
	local self = {
		_callbacks = {}
	}

	setmetatable(self, Signal)

	table.freeze(self)

	return self
end

function Signal:connect(callback)
	assert(typeof(callback) == "function", "callback is not a function")

	local id = HttpService:GenerateGUID(false)
	self._callbacks[id] = callback

	local function disconnect()
		self._callbacks[id] = nil
	end

	local connection = Connection.new(disconnect)

	return connection
end

function Signal:fire(...)
	for _, callback in pairs(self._callbacks) do
		task.spawn(callback, ...)
	end
end

return Signal