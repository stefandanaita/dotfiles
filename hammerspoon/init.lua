hyper = { "cmd", "alt", "ctrl", "shift" }

local function toggleApp(name)
	local app = hs.application.find(name)
	if not app or app:isHidden() then
		hs.application.launchOrFocus(name)
	elseif hs.application.frontmostApplication() ~= app then
		app:activate()
	else
		app:hide()
	end
end

-- Global app toggles
hs.hotkey.bind(hyper, "space", function()
	toggleApp("Ghostty")
end)
hs.hotkey.bind(hyper, "c", function()
	toggleApp("Visual Studio Code")
end)
hs.hotkey.bind(hyper, "s", function()
	toggleApp("Slack")
end)
hs.hotkey.bind(hyper, "a", function()
	toggleApp("Arc")
end)
hs.hotkey.bind(hyper, "n", function()
	toggleApp("Notion")
end)
hs.hotkey.bind(hyper, "q", function()
	toggleApp("ChatGPT")
end)

-- Reload config
hs.hotkey.bind(hyper, "r", function()
	hs.reload()
end)

hs.alert("DSA Hammerspoon config loaded")

