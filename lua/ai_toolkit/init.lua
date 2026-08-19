local M = {}

local root = vim.fn.expand("~/code/ai-engineering-toolkit")

-------------------------------------------------------
-- Read a Markdown prompt
-------------------------------------------------------
local function load_prompt(path)
    local lines = vim.fn.readfile(path)

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
-- Discover prompts recursively
-------------------------------------------------------
local function discover_prompts()
    local prompt_dir = root .. "/prompts"

    local files = vim.fs.find(function(name)
        return name:match("%.md$")
    end, {
        path = prompt_dir,
        type = "file",
        limit = math.huge,
    })

    return files
end

-------------------------------------------------------
-- Build prompt library
-------------------------------------------------------
for _, file in ipairs(discover_prompts()) do

    local title, body = load_prompt(file)

    if title and body then

        local alias = vim.fn.fnamemodify(file, ":t:r")

        local content = body

        ------------------------------------------------
        -- Dynamic editor context
        ------------------------------------------------
        if body:find("#{selection}", 1, true) then

            content = function(context)

                local prompt = body

                prompt = prompt:gsub(
                    "#{selection}",
                    context.code or ""
                )

                return prompt
            end

        end

        M[title] = {
            strategy = "chat",

            description = title,

            opts = {
                alias = alias,
                index = 1,
                type = "prompt",
            },

            prompts = {
                {
                    role = "user",
                    content = content,
                },
            },
        }

    end
end

return M
