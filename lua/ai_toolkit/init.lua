local M = {}

local root = vim.fn.expand("~/code/ai-engineering-toolkit")

-------------------------------------------------------
-- Read a Markdown prompt
-------------------------------------------------------
local function load_prompt(path)
    local lines = vim.fn.readfile(root .. "/" .. path)

    if #lines == 0 then
        return nil
    end

    ---------------------------------------------------
    -- Extract title from first H1
    ---------------------------------------------------
    local title = "Untitled"

    local i = 1

    while i <= #lines do
        local line = lines[i]

        if line:match("^#%s+") then
            title = line:gsub("^#%s+", "")
            i = i + 1
            break
        end

        i = i + 1
    end

    ---------------------------------------------------
    -- Remaining lines become the prompt
    ---------------------------------------------------
    local body = table.concat(vim.list_slice(lines, i), "\n")

    return title, body
end

-------------------------------------------------------
-- Build one prompt
-------------------------------------------------------
local title, body = load_prompt("prompts/my-test.md")

--------- DEBUG
print("Title: " .. title)
print("----- BODY -----")
print(body)
print("----------------")
---------------

M[title] = {

    strategy = "chat",

    description = title,

    opts = {
        alias = "my-test",
        index = 1,
    },

    prompts = {
        {
            role = "user",
            content = body,
        },
    },
}

return M
