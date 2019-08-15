def nyc_pigeon_organizer(data)
  list = {}
  data.each do |key, value| 
    value.each do |innerKey, innerValue|
      innerValue.each do |element|
        if list[element] != true 
          list[element] = {:color => [innerKey.to_s], :gender => [innerKey.to_s], :lives => [innerKey.to_s]}
        else 
          list[element][key].push(innerKey.to_s)
        end 
      end 
    end 
  end 
  return list
end
