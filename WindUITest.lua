function k:Collapsible(options)
    local _, element = y.Collapsible:New({
        Title = options.Title,
        Parent = self.UIElements.ContainerFrame,
        Window = self.Window,
        Icon = options.Icon
    })
    element.Wrapper.Parent = self.UIElements.ContainerFrame
    element.Parent = self

    -- biar wrapper dan content selalu ikut isi
    element.Content.AutomaticSize = Enum.AutomaticSize.Y
    element.Wrapper.AutomaticSize = Enum.AutomaticSize.Y

    -- pastikan lebar wrapper selalu penuh
    element.Wrapper.Size = UDim2.new(1, 0, 0, 0)

    -- listener: kalau parent window berubah size, update lebar wrapper
    self.UIElements.ContainerFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
        element.Wrapper.Size = UDim2.new(1, 0, 0, element.Content.AbsoluteSize.Y)
    end)

    local elementsLib = {
        Button = a.load'q',
        Toggle = a.load't',
        Slider = a.load'u',
        Keybind = a.load'v',
        Input = a.load'w',
        Dropdown = a.load'x',
        Code = a.load'A',
        Colorpicker = a.load'B',
        Section = a.load'C'
    }

    for name, lib in pairs(elementsLib) do
        element[name] = function(_, props)
            props.Parent = element.Content
            props.Window = self.Window
            props.WindUI = self.WindUI
            local frame, obj = lib:New(props)

            local F
            for G, H in pairs(obj) do
                if typeof(H) == "table" and G:match("Frame$") then
                    F = H
                    break
                end
            end
            if F then
                function obj.SetTitle(_, text) F:SetTitle(text) end
                function obj.SetDesc(_, text) F:SetDesc(text) end
                function obj.Destroy(_) F:Destroy() end
            end

            return obj
        end
    end

    function element:Paragraph(props)
        props.Parent = element.Content
        props.Window = self.Window
        props.WindUI = self.WindUI
        local para = self.Parent:Paragraph(props)
        return para
    end

    function element:Divider()
        local div = self.Parent:Divider()
        div.Parent = element.Content 
        return div
    end

    return element
end
