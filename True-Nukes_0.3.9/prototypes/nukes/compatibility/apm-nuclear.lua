require("add-basic-uranium-nukes")

if (data.raw.technology["tritium-processing"]) then
  data.raw.technology["tritium-processing"].prerequisites[1] = "apm_nuclear_breeder"
end
data.raw.technology["thermonuclear-bomb"] = nil

if (data.raw.technology["expanded-atomics"]) then
  table.insert(data.raw.technology["expanded-atomics"].prerequisites, "nuclear-fuel-reprocessing")
end
if (data.raw.technology["californium-processing"]) then
  table.insert(data.raw.technology["californium-processing"].prerequisites, "apm_nuclear_breeder")
end

if (data.raw.technology["dense-neutron-flux"]) then
  data.raw.technology["dense-neutron-flux"].effects[1] = nil
end

if (data.raw.technology["tritium-breeder-fuel-cell"]) then
  data.raw.item["tritium-breeder-fuel-cell"].fuel_category = "apm_nuclear_breeder"
end
if (data.raw.technology["advanced-tritium-breeder-fuel-cell"]) then
  data.raw.item["advanced-tritium-breeder-fuel-cell"].fuel_category = "apm_nuclear_breeder"
end
