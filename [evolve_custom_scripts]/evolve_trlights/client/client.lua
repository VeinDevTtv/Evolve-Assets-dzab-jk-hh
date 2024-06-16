local entityEnumerator = {
    __gc = function(enum)
      if enum.destructor and enum.handle then
        enum.destructor(enum.handle)
      end
      enum.destructor = nil
      enum.handle = nil
    end
  }
  
  local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(function()
      local iter, id = initFunc()
      if not id or id == 0 then
        disposeFunc(iter)
        return
      end
      
      local enum = {handle = iter, destructor = disposeFunc}
      setmetatable(enum, entityEnumerator)
      
      local next = true
      repeat
        coroutine.yield(id)
        next, id = moveFunc(iter)
      until not next
      
      enum.destructor, enum.handle = nil, nil
      disposeFunc(iter)
    end)
  end
  
  function enumerate_vehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
  end

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(100)
        for car in enumerate_vehicles() do
            local hasTrailer, vTrailer = GetVehicleTrailerVehicle(car)
            if hasTrailer and DoesEntityExist(vTrailer) then
                if GetIsVehicleEngineRunning(car) then
                    SetVehicleEngineOn(vTrailer, true, true, false)
                    SetVehicleLights(vTrailer, 2)
                else
                    SetVehicleEngineOn(vTrailer, false, true, false)
                    SetVehicleLights(vTrailer, 0)
                end
            end
        end
    end
end)
