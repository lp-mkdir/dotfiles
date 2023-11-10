local Worktree = require("git-worktree")

-- Function to log the contents of a table
local function logTable(table)
    for key, value in pairs(table) do
        print(key .. ": " .. tostring(value))
    end
end

Worktree.on_tree_change(function(op, metadata)
  if op == Worktree.Operations.Switch then
    print("Switched from " .. metadata.prev_path .. " to " .. metadata.path)
    
    -- Log the contents of the metadata table
    print("Metadata contents:")
    logTable(metadata)
  end
end)

