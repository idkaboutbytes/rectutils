--!strict
--!native

const RectUtils = require('.')

return function()
	describe('RectUtils.contains', function()
		it('returns true for a point inside the rect', function()
			local rect = Rect.new(Vector2.new(0, 0), Vector2.new(10, 10))
			expect(RectUtils.contains(rect, Vector2.new(5, 5))).to.equal(true)
		end)

		it('returns false for a point outside the rect', function()
			local rect = Rect.new(Vector2.new(0, 0), Vector2.new(10, 10))
			expect(RectUtils.contains(rect, Vector2.new(15, 5))).to.equal(false)
		end)
	end)
end
