def caesar_cipher(string, shift=3)
  alpha = ("a".."z").to_a
  alpha_up = ("A".."Z").to_a
  
  string.chars.map do |ch|
    if alpha_up.include?(ch)
      alpha_up[(ch.ord - "A".ord + shift) % 26] 
    elsif alpha.include?(ch)
      alpha[(ch.ord - "a".ord + shift) % 26]
    else
      ch
    end
  end
  .join
end




