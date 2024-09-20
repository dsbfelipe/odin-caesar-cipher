$upper_cases = (65..90)
$lower_cases = (97..122)

def is_upper_case?(char) 
  $upper_cases.cover?(char.ord)
end

def is_lower_case?(char) 
  $lower_cases.cover?(char.ord)
end

def wrap_z_to_a(number, range)
  if number > range.max
    number = range.min + (number - range.max - 1) 
  end
  number
end

def caesar_cipher(string, shift_factor)
  string.chars.map do |char|
    number = char.ord + shift_factor

    if is_upper_case?(char)
      wrap_z_to_a(number, $upper_cases).chr
    elsif is_lower_case?(char)
      wrap_z_to_a(number, $lower_cases).chr
    else
      char
    end
  end.join
end

puts caesar_cipher("What a string!", 5)