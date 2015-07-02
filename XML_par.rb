class XMLPar

  require 'xmlsimple'

  def find_xml_diff(hash1, hash2)


    new_tags_in_array1= Array.new
    new_tags_in_array2= Array.new
    different_tags = Array.new
    matching_tags = Array.new

    # hash second keys...
    # different_keys_in_hash2 = []
    # puts "\n\nDifferent and additional tags in file1:"
    hash1.keys.each do |key|
      # require'pry';binding.pry
      if hash2[key].nil?
        new_tags_in_array1 << key
      elsif hash1[key] == hash2[key]
        matching_tags << key
        hash2 = hash2.tap { |hs| hs.delete(key) }
        # different_keys_in_hash2.push()
      # elsif !hash2[key].nil?
      #   # find_xml_diff(hash1[key],hash2[key])
      else
        different_tags << key
        hash2 = hash2.tap { |hs| hs.delete(key) }
      end
    end
    new_tags_in_array2 << hash2.keys
    # puts "\n\nDifferent and additional tags in file2:"
    # puts hash2.keys

      # require'pry';binding.pry

    puts "\n\nDifferent tags in files are:\n #{different_tags} "
    puts "\n\nAdditional tags in file1 are:\n #{new_tags_in_array1} "
    puts "\n\nAdditional tags in file2 are:\n #{new_tags_in_array2} "
    puts "\n\nMatching tags in both files are:\n #{matching_tags} "

  end
end

# class XMLPar
#
#   require 'xmlsimple'
#
#   def find_xml_diff(hash1, hash2)
#
#     # hash second keys...
#     # different_keys_in_hash2 = []
#     puts "\n\nDifferent and additional tags in file1:"
#     hash1.keys.each do |key|
#       if hash1[key] == hash2[key]
#         hash2 = hash2.tap { |hs| hs.delete(key) }
#         # different_keys_in_hash2.push()
#         # elsif !hash2[key].nil?
#         #   # find_xml_diff(hash1[key],hash2[key])
#       elsif !hash2[key].nil?
#         difference_in_keys(hash1[key], hash2[key],key)
#       end
#       # require'pry';binding.pry
#     end
#     puts "\n\nDifferent and additional tags in file2:"
#     puts hash2.keys
#   end

#   def difference_in_keys(array1, array2, key)
#
#     additional_tags = Array.new
#     new_tags_in_array1= Array.new
#     new_tags_in_array2= Array.new
#     different_tags = Array.new
#     array1.each do |element|
#       if !(index= array2.index(element)).nil?
#
#         # if !element == array2.at(index)
#         #   array2.delete_at(index)
#         # end
#       # else
#           different_tags << "#{key} --> #{array2(index)} "
#         # new_tags_in_array1 << "#{key} --> #{element} "
#       end
#     end
#     new_tags_in_array2 << "#{key} --> #{array2}"
#
#     puts additional_tags
#     puts new_tags_in_array1
#     puts new_tags_in_array2
#     require'pry';binding.pry
#   end
#
#   # def find_array_diff
#
# end