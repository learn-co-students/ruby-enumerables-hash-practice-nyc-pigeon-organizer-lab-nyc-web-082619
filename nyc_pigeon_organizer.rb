def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key, value|
    value.each do |desc, names|
      names.each do |bird_name|
      
        if !new_hash[bird_name]
          new_hash[bird_name] = {}
        end
      
        if !new_hash[bird_name][key]
          new_hash[bird_name][key] = []
        end
        
        new_hash[bird_name][key] << desc.to_s
        
      end
    end
  end
  new_hash
end
