def nyc_pigeon_organizer(data)
 organized_hash = { }
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
      if !organized_hash[name]
       organized_hash[name] = { }
      end
      
      if !organized_hash[name][key]
        organized_hash[name][key] = [ ]
      end
      
      organized_hash[name][key] << new_value.to_s
    end
  end
end
p organized_hash
end
