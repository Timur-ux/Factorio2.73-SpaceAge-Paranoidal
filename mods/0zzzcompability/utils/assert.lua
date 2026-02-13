local Assert = {}

Assert.Assert = function(cond, message)
	assert(cond, message)
end

Assert.AssertOutdated = function(cond, message)
	assert(cond, message .. " Maybe current fix outdated?")
end

setmetatable(Assert, {
	__call = function(AssertTable, cond, message)
		return AssertTable.Assert(cond, message)
	end,
})

return Assert
