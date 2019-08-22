def nyc_pigeon_organizer(data)
  hash = {}
  data[:gender][:male].each |index|{
   hash[index] = {} 
  }
  hash
end
