local source_dir = arg[1]

if not source_dir then
    io.stderr:write("Usage: lua scripts/convert_prompts.lua <source-directory>\n")
    os.exit(1)
end

local destination_root = "prompts"

------------------------------------------------------------
-- Helpers
------------------------------------------------------------

local function trim(s)
    return (s:gsub("^%s+", ""):gsub("%s+$", ""))
end

local function read_file(path)
    local f = assert(io.open(path, "r"))
    local text = f:read("*a")
    f:close()
    return text
end

local function write_file(path, text)
    local f = assert(io.open(path, "w"))
    f:write(text)
    f:close()
end

local function mkdir_p(path)
    os.execute('mkdir -p "' .. path .. '"')
end

------------------------------------------------------------
-- Convert one file
------------------------------------------------------------

local function convert_file(source, destination)

    print("Converting:")
    print("  " .. source)
    print("  -> " .. destination)

    local text = read_file(source)

    local frontmatter, body =
        text:match("^%-%-%-\n(.-)\n%-%-%-\n(.*)$")

    if not frontmatter then
        print("  Skipped (no frontmatter)\n")
        return
    end

    local name
    local description

    for line in frontmatter:gmatch("[^\r\n]+") do

        local key, value =
            line:match("^([%w_%-]+):%s*(.+)$")

        if key == "name" then
            name = trim(value)
        elseif key == "description" then
            description = trim(value)
        end
    end

    if not name then
        print("  Missing 'name'\n")
        return
    end

    description = description or ""

    body = body:gsub("^%s+", "")

    local output = {}

    table.insert(output, "# " .. name)

    if description ~= "" then
        table.insert(output, "")
        table.insert(output, "> " .. description)
    end

    table.insert(output, "")
    table.insert(output, body)

    local destination_dir = destination:match("(.+)/[^/]+$")
    mkdir_p(destination_dir)

    write_file(destination, table.concat(output, "\n"))

    print("  OK\n")
end

------------------------------------------------------------
-- Main
------------------------------------------------------------

local command = string.format('find "%s" -type f -name "*.md"', source_dir)

local p = io.popen(command)

for source in p:lines() do

    --------------------------------------------------------
    -- Preserve directory structure
    --------------------------------------------------------

    local relative = source:sub(#source_dir + 2)

    local destination =
        destination_root .. "/" .. source_dir .. "/" .. relative

    convert_file(source, destination)

end

p:close()

print("Done.")
