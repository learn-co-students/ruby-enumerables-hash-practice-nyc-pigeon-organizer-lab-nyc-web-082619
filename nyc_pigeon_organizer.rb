def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {} 
  
  pigeon_data.each do |property, property_hash| #access :color and colors-hash
   property_hash.each do |values, pigeon_array| #access colors-hash and array value
    pigeon_array.each do |name| #access each pigeon name in array
      if pigeon_list[name] #if name in list, do next line; else -> line 14
        if pigeon_list[name][property] #if property in list, do next line, else line 11
          pigeon_list[name][property] << values.to_s #adds value of property to name
        else 
          pigeon_list[name][property] = [values.to_s] #adds property/value-array to hash
        end 
      else 
        pigeon_list[name] = { property => [values.to_s] } #adds name hash and key/value (property/values)
      end 
    end
  end 
end 
  pigeon_list
end 
