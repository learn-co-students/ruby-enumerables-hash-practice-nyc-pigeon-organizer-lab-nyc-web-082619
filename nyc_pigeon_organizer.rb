def nyc_pigeon_organizer(data)
  pigeon = { }
  
  data.each do | attributes, details |
    # attributes: :color, :gender, :lives
    # details: category(:purple, :male, "Subway". etc) and array
    
    details.each do | category, array |
      array.each do |name|

         if (!pigeon[name])
           pigeon[name] = {:color => [ ], :gender => [ ], :lives => [ ] }
         end
  
         if array.include?(name)
           pigeon[name][attributes].push(category.to_s)
         end
      end
  
    end
  end
  
  return pigeon
end
