function onEvent(name,value1,value2)

    if name == "Set Property" then
        
        if value2 == '' then
      	  setProperty("defaultCamZoom",value1)
	debugPrint(value2 )
	else
 
		setProperty('defaultCamZoom', value2);
	end
            
    end


end

function onTweenCompleted(name)

if name == 'camz' then


      	 setProperty("defaultCamZoom",getProperty('camGame.zoom')) 

end


end