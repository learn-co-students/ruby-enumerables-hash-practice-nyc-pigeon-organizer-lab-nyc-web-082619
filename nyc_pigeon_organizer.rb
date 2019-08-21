require 'pry'

def nyc_pigeon_organizer(data)
  final = {}
  
  data.each do |col_gen_liv, hash|
    hash.each do |type, array|
      array.each do |name|
        
        if !final.has_key?(name)
          final[name] = {}
        end
        
        if !final[name].has_key?(col_gen_liv)
          final[name][col_gen_liv] = []
        end
        
        if !final[name][col_gen_liv].include?(type)
          final[name][col_gen_liv] << type.to_s
        
        end
        
      end
    end
  end
  final
end