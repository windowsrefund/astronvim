return {
	v = {
		["<leader>"] = {
			d = {
				name = "DAP",
				s = {
					function()
						require("dap-python").debug_selection()
					end,
					"Python - Debug selection",
				},
			},
		},
	},
	n = {
		["<leader>"] = {
			d = {
				name = "DAP",
				b = {
					function()
						require("dap").toggle_breakpoint()
					end,
					"Toggle Breakpoint",
				},
				B = {
					function()
						require("dap").clear_breakpoints()
					end,
					"Clear Breakpoints",
				},
				c = {
					function()
						require("dap").continue()
					end,
					"Continue",
				},
				e = {
					function()
						require("dapui").eval()
					end,
					"Evaluate Line",
				},
				f = {
					function()
						require("dap-python").test_class()
					end,
					"Python - Test class",
				},
				i = {
					function()
						require("dap").step_into()
					end,
					"Step Into",
				},
				l = {
					function()
						require("dapui").float_element("breakpoints")
					end,
					"List Breakpoints",
				},
				m = {
					function()
						require("dap-python").test_method()
					end,
					"Python - Test method",
				},
				o = {
					function()
						require("dap").step_over()
					end,
					"Step Over",
				},
				q = {
					function()
						require("dap").close()
					end,
					"Close Session",
				},
				Q = {
					function()
						require("dap").terminate()
					end,
					"Terminate",
				},
				r = {
					function()
						require("dap").repl.toggle()
					end,
					"REPL",
				},
				s = {
					function()
						require("dapui").float_element("scopes")
					end,
					"Scopes",
				},
				t = {
					function()
						require("dapui").float_element("stacks")
					end,
					"Threads",
				},
				u = {
					function()
						require("dapui").toggle()
					end,
					"Toggle Debugger UI",
				},
				w = {
					function()
						require("dapui").float_element("watches")
					end,
					"Watches",
				},
				x = {
					function()
						require("dap.ui.widgets").hover()
					end,
					"Inspect",
				},
			},
		},
	},
}
