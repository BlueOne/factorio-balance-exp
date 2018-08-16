
for cond, script in pairs{
    ["balanceexp-enable-tech-cleanup"] = "tech_cleaning",
    ["balanceexp-enable-tech-alts"] = "tech_alts",
    ["balanceexp-enable-stacksizes"] = "stack_sizes",
} do
    if settings.startup[cond] then
        require("data." .. script)
    end
end

-- require("data.power_rebalance")
-- require("data.logistics_rebalance")
-- require("data.combat_rebalance")
