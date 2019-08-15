def nyc_pigeon_organizer(data)
  list = {}
  data.each do |key, value| 
    value.each do |innerKey, names|
      names.each do |name|
        
        if !(list.has_key?(name) )
          list[name] = {}
          list[name][key] = []
          list[name][key].push(innerKey.to_s)
          
        elsif !(list[name].has_key?(key))
            list[name][key] = []
            list[name][key].push(innerKey.to_s)
        else
          list[name][key].push(innerKey.to_s)
          
          
        end 
      end 
    end 
  end 
  list
end


  
  
  