local attach_to_buffer = function(bufnr, pattern, command)
   
    --[[
        Use vim API to set lines in the buffer.
        Specify the buffer ID, start and end lines and then pass in
        the strings you want to write to the buffer.

        0, 0 would write on the first line of the file
        -1, -1 would always append to the end of the file
    --]]
    vim.api.nvim_create_autocmd("BufWritePost", {
        group = vim.api.nvim_create_augroup("TestAutocmd", { clear = true}),
        pattern = pattern,
        callback = function()
            local append_data = function (_, data)
                if data then
                     vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
                end
            end

            vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "Starting AutoRun..." })
            vim.fn.jobstart(command, {
                -- Only show full lines one line at a time
                stdout_buffered = true,
                on_stdout = append_data,
                on_srderr = append_data
                    
            })
        end,
    })
end

--[[
Create an nvim command which prompts for:
- Buffer number
- Pattern
- List of commands, split by space
--]]
vim.api.nvim_create_user_command("AutoRun", function()
    local bufnr = vim.fn.input("Buffer number: ")
    print("Attaching to buffer ", bufnr)
    local pattern = vim.fn.input("Pattern of files to target: ")
    local command = vim.split(vim.fn.input("List commands to run: "), " ")

    attach_to_buffer(tonumber(bufnr), pattern, command)
end, {})
