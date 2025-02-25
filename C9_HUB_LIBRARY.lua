local C9 = {}

function C9:CreateWindow(title)
    local Window = {}
    Window.title = title
    Window.tabs = {}
--[[    Window.keybind = Enum.KeyCode.F4
    Window.draggable = true
    Window.minimizable = true]]--

    function Window:CreateTab(tabName)
        local Tab = {}
        Tab.name = tabName
        Tab.elements = {}

        function Tab:CreateButton(text, callback)
            local Button = { text = text, callback = callback }
            table.insert(Tab.elements, Button)
        end

        function Tab:CreateLabel(text)
            local Label = { text = text }
            table.insert(Tab.elements, Label)
        end

        function Tab:CreateToggle(text, callback)
            local Toggle = { text = text, state = false, callback = callback }
            table.insert(Tab.elements, Toggle)
        end

        function Tab:CreateSlider(text, min, max, callback)
            local Slider = { text = text, min = min, max = max, value = min, callback = callback }
            table.insert(Tab.elements, Slider)
        end

        function Tab:CreateInput(text, callback)
            local Input = { text = text, callback = callback }
            table.insert(Tab.elements, Input)
        end

        function Tab:CreateCheckbox(text, callback)
            local Checkbox = { text = text, state = false, callback = callback }
            table.insert(Tab.elements, Checkbox)
        end

        function Tab:CreateDropdown(text, options, callback)
            local Dropdown = { text = text, options = options, selected = options[1], callback = callback }
            table.insert(Tab.elements, Dropdown)
        end

        function Tab:CreateColorPicker(text, callback)
            local ColorPicker = { text = text, color = Color3.new(1, 1, 1), callback = callback }
            table.insert(Tab.elements, ColorPicker)
        end

        table.insert(Window.tabs, Tab)
        return Tab
    end

--[[    function Window:SetKeybind(key)
        Window.keybind = key
    end

    function Window:EnableDraggable(state)
        Window.draggable = state
    end

    function Window:EnableMinimize(state)
        Window.minimizable = state
    end
    return Window
end]]--

return C9