def nyc_pigeon_organizer(data)
  new_data = {}

  data.each do |descriptors, descriptions|
    descriptions.each do |description, names|
      names.each do |name|
        new_data[name] ||= {}
        new_data[name][descriptors] ||= []
        new_data[name][descriptors].push description.to_s
      end
    end
  end
  new_data
end