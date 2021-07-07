def nyc_pigeon_organizer(data)
  new = {}
  attributes = {}
  name_array = []
  data.keys.each do |out_key|
    data[out_key].keys.each do |in_key|
      data[out_key][in_key].each do |name|
        if name_array.include?(name)
        else 
          name_array << name
        end
      end
    end
  end
  name_array.each do |names|
    new[names] = {:color => [], :gender => [], :lives => []}
  end
  name_array.each do |name|
    data[:color].keys.each do |colors|
      if data[:color][colors].include?(name) && new[name][:color].none?(colors)
      new[name][:color] << colors.to_s
      end
    end
    data[:gender].keys.each do |genders|
      if data[:gender][genders].include?(name) && new[name][:gender].none?(genders)
      new[name][:gender] << genders.to_s
      end
    end
    data[:lives].keys.each do |loc|
      if data[:lives][loc].include?(name) && new[name][:lives].none?(loc)
       new[name][:lives] << loc.to_s
      end
    end
  
  end
puts new
new
end