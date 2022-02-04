return function()
	describe("Signal.lua", function()
		local Signal = require(script.Parent)

		it("Should create and fire a signal", function()
			local result = 0

			local function onSignal(value)
				task.wait(0.2)
				result += value
			end

			local signal = Signal.new()

			signal:connect(onSignal)
			signal:connect(onSignal)

			expect(function()
				signal:connect()
			end).to.throw()

			signal:fire(3)

			expect(result).to.equal(0)

			task.wait(0.3)

			expect(result).to.equal(6)
		end)
	end)
end