return {
	"kawre/leetcode.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		lang = "rust",
		description = {
			position = "right",
			width = "30%",
		},
		injector = {
			["rust"] = {
				before = { "#[allow(dead_code)]", "fn main(){}", "#[allow(dead_code)]", "struct Solution;" },
			},
		},
		hooks = {
			["question_enter"] = {
				function(question)
					local problem_dir = vim.fn.stdpath("data") .. "/leetcode/Cargo.toml"
					local content = [[
						[package]
						name = "leetcode"
						version = "0.1.0"
						edition = "2024"

						[lib]
						name = "%s"
						path = "%s"
						]]

					local file = io.open(problem_dir, "w")
					if file then
						local formatted = (content:gsub(" +", "")):format(question.q.frontend_id, question:path())
						file:write(formatted)
						file:close()
					else
						print("Failed to open file: " .. problem_dir)
					end
				end,
			},
		},
	},
}
