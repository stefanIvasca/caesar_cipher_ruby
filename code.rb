def caesar_cipher (forward_shift_number)
    user_input = gets
    result = ''
    user_input.each_char { |carracter| 
        shifted_letter = carracter.ord + forward_shift_number
        if shifted_letter > 122 && (carracter.ord <= 122 && carracter.ord >= 96)
            shifted_letter = shifted_letter - 122 + 96
        elsif shifted_letter > 90 && (carracter.ord <= 90 && carracter.ord >= 65)
            shifted_letter = shifted_letter - 90 + 64  
        elsif carracter.ord < 65 || (carracter.ord > 90 && carracter.ord < 97) || carracter.ord > 122
            shifted_letter = carracter
        end
        result += shifted_letter.chr
    }
    puts result
end

caesar_cipher(3)
