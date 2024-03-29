return {
	remote = "origin",
	channel = "nightly",
	version = "latest",
	branch = "main",
	commit = nil,
	pin_plugins = true, -- pin to stable only
	skip_prompts = false, -- skip prompts about breaking changes
	show_changelog = true,
	auto_reload = true, -- autoreload and sync packer after a successful update
}
