def cc(input, shift)
  string = input.to_s.chars

  shifted_string = string.map do |char|
    if ('a'..'z').include?(char)
       #  % 26 to wrap past 'z', then convert back to letter  
       (((char.ord - "a".ord + shift) % 26 ) + "a".ord).chr 
    
      elsif ('A'..'Z').include?(char)
        (((char.ord - "A".ord + shift)%26 ) + "A".ord).chr
       
     
    else
      # For unctuation return 'char' 
      char
    end
  end
  shifted_string.join
end

puts cc("What a string!", 5)