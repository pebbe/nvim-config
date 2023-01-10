local status_go, go = pcall(require, 'dap-go')
if status_go then
	go.setup()
end

local status_ui, ui = pcall(require, 'dapui')
if status_ui then
	ui.setup()
end

local status_dap, dap = pcall(require, 'dap')
if status_dap and status_ui then
	dap.listeners.after.event_initialized['dapui_config'] = function()
		ui.open()
	end
	--[[
  dap.listeners.before.event_terminated['dapui_config'] = function()
    ui.close()
  end
  dap.listeners.before.event_exited['dapui_config'] = function()
    ui.close()
  end
  --]]
end

local status_vt, vt = pcall(require, 'nvim-dap-virtual-text')
if status_vt then
	vt.setup()
end

if not dap then
	return
end

dap.adapters.lldb = {
	type = 'executable',
	command = '/usr/bin/lldb-vscode-13',
	name = 'lldb',
}

dap.configurations.c = {
	{
		name = 'Launch',
		type = 'lldb',
		request = 'launch',
		program = function()
			return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		end,
		cwd = '${workspaceFolder}',
		stopOnEntry = false,
		args = {},

		-- 💀
		-- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
		--
		--    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
		--
		-- Otherwise you might get the following error:
		--
		--    Error on launch: Failed to attach to the target process
		--
		-- But you should be aware of the implications:
		-- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
		-- runInTerminal = false,
	},
}
dap.configurations.cpp = dap.configurations.c
dap.configurations.rust = dap.configurations.c

dap.adapters.python = {
	type = 'executable',
	command = '/usr/bin/python3',
	args = { '-m', 'debugpy.adapter' },
}

dap.configurations.python = {
	{
		-- The first three options are required by nvim-dap
		type = 'python',
		request = 'launch',
		name = 'Launch',
		program = '${file}',
	},
}

-- https://github.com/jbyuki/one-small-step-for-vimkind
dap.configurations.lua = {
	{
		type = 'nlua',
		request = 'attach',
		name = 'Attach to running Neovim instance',
	},
}
dap.adapters.nlua = function(callback, _)
	callback({ type = 'server', host = '127.0.0.1', port = 8186 })
end
