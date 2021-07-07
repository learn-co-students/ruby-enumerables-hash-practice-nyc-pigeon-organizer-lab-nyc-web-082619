def nyc_pigeon_organizer(data)
  sorted_data = {}
  data.each do |attribute, info| 
    info.each do |sub_attribute, names|
      names.each do |name|
        if !sorted_data[name] 
          sorted_data[name]= {}
          sorted_data[name][attribute] = []
        else
          sorted_data[name][attribute] = []
        end
      end
    end 
  end

  sorted_data.each do |name, info|
    info.each do |quality, sub_quality|
      data.each do |attributes, sub_info|
        sub_info.each do |key, array|
          
          array.each do |item|
          if item == name && quality == attributes 
            sorted_data[name][quality] <<  key.to_s 
          end
        end 
      end 
    end
  end 
end 
sorted_data
end
