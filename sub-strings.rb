def sub_strings
    puts "Enter original string:"
    my_string=gets.chop
    puts "Enter an Array of the substrings:"
    dictionary=gets.chop
    dictionary=dictionary.delete "\""
    dictionary=dictionary.delete "["
    dictionary=dictionary.delete "]"
    dictionary=dictionary.split(",")
    dictionary=dictionary.map {|val| val.downcase}
    my_string=my_string.downcase
    my_array=my_string.split
    new_hash={}
    dictionary.each do |val|
        my_array.each do |origin|
            if origin.include?(val)
                if new_hash[val]
                    new_hash[val]+=1
                else new_hash[val]=1
                end
            end
        end
    end
    puts
    puts
    puts "The original string is:\n #{my_string}"
    puts "The array of the sub-strings is:\n #{dictionary}"
    puts "The sub-strings are:"
    return new_hash
end
sub_strings