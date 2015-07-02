class XMLPar
  def find_xml_diff(hash1, hash2)
    new_tags_in_array1= Array.new
    new_tags_in_array2= Array.new
    different_tags = Array.new
    matching_tags = Array.new

    hash1.keys.each do |key|
      if hash2[key].nil?
        new_tags_in_array1 << key
      elsif hash1[key] == hash2[key]
        matching_tags << key
        hash2 = hash2.tap { |hs| hs.delete(key) }
      else
        different_tags << key
        hash2 = hash2.tap { |hs| hs.delete(key) }
      end
    end
    new_tags_in_array2 << hash2.keys

    puts "\n\nDifferent tags in files are:\n #{different_tags} "
    puts "\n\nAdditional tags in file1 are:\n #{new_tags_in_array1} "
    puts "\n\nAdditional tags in file2 are:\n #{new_tags_in_array2} "
    puts "\n\nMatching tags in both files are:\n #{matching_tags} "

  end
end

