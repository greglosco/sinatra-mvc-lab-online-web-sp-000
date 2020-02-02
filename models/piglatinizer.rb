class PigLatinizer 
  
  def piglatinize(input)
   input.split(" ").size == 1 ? piglatinze_word(input) : piglatinize_sentence(input)
  end
  
  def consonant?(letter)
    !letter.match(/[aAeEiIoOuU]/)
  end
  
  def piglatinze_word(input)
    if !consonant?(input[0])
      input = input + "w"
    elsif consonant?(input[0]) && consonant?(input[1]) && consonant?(input[2])
      input = input.slice(3..-1) + input.slice(0,3)
    elsif consonant?(input[0]) && consonant?(input[1])
      input = input.slice(2..-1) + input.slice(0,2)
    elsif
      input = input.slice(1..-1) + input.slice(0)
    end
      input << "ay"
  end
  
  def piglatinize_sentence(input)
    input.split.collect do |word|
      piglatinze_word(word)
    end.join(" ")
  end
  
end