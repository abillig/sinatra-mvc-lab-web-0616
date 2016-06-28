class PigLatinizer 

def piglatinize(string)
  if !string[0].scan(/[aeoui]/i).empty?
    string + "way"
  elsif string[0..2].scan(/[aeoui]/i).count == 0  
    string[3..-1] + string[0] + string[1] + string[2] + "ay"
  elsif string[0..1].downcase.scan(/[aeoui]/).count == 0  
    string[2..-1] + string[0] + string[1] + "ay"
  else 
    string[1..-1] + string[0] + "ay"
  end
end

def to_pig_latin(space)
  space.split(" ").map{|word|piglatinize(word)}.join(" ")
end

end



