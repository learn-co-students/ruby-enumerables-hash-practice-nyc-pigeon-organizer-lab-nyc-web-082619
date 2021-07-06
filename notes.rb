pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

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


p nyc_pigeon_organizer(pigeon_data)