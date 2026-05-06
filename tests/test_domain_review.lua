package.path = "src/?.lua;" .. package.path
local review = require("domain_review")

local item = { signal = 51, slack = 22, drag = 27, confidence = 70 }
assert(review.score(item) == 113)
assert(review.lane(item) == "watch")
