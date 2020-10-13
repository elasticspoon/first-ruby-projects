def substrings(input_string, dictionary)
    result = {}
    input_string.split(%r{\W+}).each do |word|
        dictionary.each do |dict_word| 
            if word.downcase.include?(dict_word) 
                result[dict_word] = result[dict_word] ? result[dict_word] + 1 : 1
            end
        end
    end

    return result
end

dict_list = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dict_list)