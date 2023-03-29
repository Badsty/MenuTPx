Citizen.CreateThread(function()

    while true do

        Citizen.Wait(10)

        if IsControlJustPressed(1,166) then
            menu()
        end

    end

end)

function menu()

    local badsty = RageUI.CreateMenu("Badsty","Téléportation")

    RageUI.Visible(badsty, not RageUI.Visible(badsty))

    while badsty do
        
        Citizen.Wait(0)

        RageUI.IsVisible(badsty,true,true,true,function()
        
            RageUI.ButtonWithStyle("QG","Se téléporter au QG !", {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then 
                    local ped = PlayerPedId()   
                    SetEntityCoords(ped, 4890.99,-4925.31,3.37)
                end
            end)
             RageUI.ButtonWithStyle("Paleto Bay","Se téléporter au Paleto Bay !", {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then 
                    local ped = PlayerPedId()   
                    SetEntityCoords(ped, 141.14,6612.6,32.03)
                end
            end)   
             RageUI.ButtonWithStyle("Parking Casino","Se téléporter au Parking Casino !", {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then 
                    local ped = PlayerPedId()   
                    SetEntityCoords(ped, 886.29,-0.59,78.76)
                end
            end)   
             RageUI.ButtonWithStyle("Parking Central","Se téléporter au Parking Central !", {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then 
                    local ped = PlayerPedId()   
                    SetEntityCoords(ped, 216.41,-810.25,30.71)
                end
            end)
            RageUI.ButtonWithStyle("Benny's","Se téléporter au Benny's !", {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then 
                    local ped = PlayerPedId()   
                    SetEntityCoords(ped, -210.6634979248,-1322.7960205078,30.890403747559)
                end
            end)
            -- RageUI.ButtonWithStyle("Exemple","Se téléporter au .....!", {RightLabel = "→"}, true, function(Hovered, Active, Selected)
               -- if Selected then 
                  --  local ped = PlayerPedId()   
                  --  SetEntityCoords(ped, -210.6634,-1322.7960,30.89040)
               -- end
            -- end)    
        
        end, function()
        end)

        if not RageUI.Visible(badsty) then
            badsty=RMenu:DeleteType("Titre", true)
        end

    end

end