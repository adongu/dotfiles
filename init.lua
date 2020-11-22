-- HammerSpoon configs https://github.com/Hammerspoon/hammerspoon/releases/tag/0.9.82

-- -- i - move up
-- hs.hotkey.bind({"option"}, "I", function()
--   hs.eventtap.keyStroke({}, "up")
-- end)

-- -- k - move down
-- hs.hotkey.bind({"option"}, "K", function()
--   hs.eventtap.keyStroke({}, "down")
-- end)

-- -- j - move left
-- hs.hotkey.bind({"option"}, "J", function()
--   hs.eventtap.keyStroke({}, "left")
-- end)

-- -- l - move right
-- hs.hotkey.bind({"option"}, "L", function()
--   hs.eventtap.keyStroke({}, "right")
-- end)

local fastKeyStroke = function(modifiers, character)
  local event = require("hs.eventtap").event
  event.newKeyEvent(modifiers, string.lower(character), true):post()
  event.newKeyEvent(modifiers, string.lower(character), false):post()
end

-- Direction in one letter
local hyperOne = {"option"}

hs.fnutils.each({
  -- Movement
  { key='j', mod={}, direction='left'},
  { key='k', mod={}, direction='down'},
  { key='i', mod={}, direction='up'},
  { key='l', mod={}, direction='right'},
  -- { key='n', mod={'cmd'}, direction='left'},  -- beginning of line
  -- { key='p', mod={'cmd'}, direction='right'}, -- end of line
  -- { key='.', mod={'alt'}, direction='right'}, -- forward word
  -- { key='m', mod={'alt'}, direction='left'},  -- back word
}, 
  function(hotkey)
    hs.hotkey.bind(hyperOne, hotkey.key,
      function() fastKeyStroke(hotkey.mod, hotkey.direction) end,
      nil,
      function() fastKeyStroke(hotkey.mod, hotkey.direction) end
    )
  end
)

-- Move in direction of one word

hs.hotkey.bind({"⌃", "option"}, "I", 
  function() hs.eventtap.keyStroke({"option"}, "up") end,
  nil,
  function() hs.eventtap.keyStroke({"option"}, "up") end
)

hs.hotkey.bind({"⌃", "option"}, "K", 
  function() hs.eventtap.keyStroke({"option"}, "down") end,
  nil,
  function() hs.eventtap.keyStroke({"option"}, "down") end
)

hs.hotkey.bind({"⌃", "option"}, "J",
  function() hs.eventtap.keyStroke({"option"}, "left") end,
  nil,
  function() hs.eventtap.keyStroke({"option"}, "left") end
)

hs.hotkey.bind({"⌃", "option"}, "L",
  function() hs.eventtap.keyStroke({"option"}, "right") end,
  nil,
  function() hs.eventtap.keyStroke({"option"}, "right") end
)

-- backspace to allow ctrl + backspace to delete right side characters
hs.hotkey.bind({"⌃"}, "delete",
  function() fastKeyStroke({}, "forwarddelete") end,
  nil,
  function() fastKeyStroke({}, "forwarddelete") end
)