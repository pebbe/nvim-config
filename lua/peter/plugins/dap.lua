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
	dap.listeners.before.event_terminated['dapui_config'] = function()
		ui.close()
	end
	dap.listeners.before.event_exited['dapui_config'] = function()
		ui.close()
	end
end

local status_vt, vt = pcall(require, 'nvim-dap-virtual-text')
if status_vt then
	vt.setup()
end
