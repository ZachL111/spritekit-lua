package.path = "src/?.lua;" .. package.path
local policy = require("policy")

local signal_case_1 = { demand = 85, capacity = 75, latency = 24, risk = 21, weight = 4 }
assert(policy.score(signal_case_1) == 87)
assert(policy.classify(signal_case_1) == "review")
local signal_case_2 = { demand = 80, capacity = 76, latency = 14, risk = 23, weight = 9 }
assert(policy.score(signal_case_2) == 106)
assert(policy.classify(signal_case_2) == "review")
local signal_case_3 = { demand = 67, capacity = 79, latency = 8, risk = 16, weight = 7 }
assert(policy.score(signal_case_3) == 129)
assert(policy.classify(signal_case_3) == "review")
