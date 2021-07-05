def nyc_pigeon_organizer(data)

  new_hash = {}
  #loop over the data hash
  
  data.each do |property, hash|    #hash is another hash, loop over it,
  
    hash.each do |attribute, array|
      array.each do |name|
        if !new_hash.include?(name)  #so no duplicate names
          new_hash[name] = {}       #update new hash w/ names as key   
        end

        if !new_hash[name].include?(property)
          new_hash[name][property] = []
        end

        if !new_hash[name][property].include?(attribute)
          new_hash[name][property] << attribute.to_s
        end
      end
    end
  end
  new_hash
end
