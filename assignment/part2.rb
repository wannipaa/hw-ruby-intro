def hello(name)
    return "Hello, #{name}"
end

def starts_with_consonant?(s)
    s.downcase!
    vowel = ["a","e","i","o","u"]
    if s.empty?
        return false
    elsif s.start_with?(*vowel) || s.match?(/\W/)
        return false
    else
        return true
    end
end

def binary_multiple_of_4?(s)
    
    if s.empty? || s.match?(/[a-zA-Z\W3-9*]/)
        return false
    elsif s == "0"
        return true
    elsif s.to_i % 4 == 0
        return true
    else
        return false
    end
end    

puts "#{hello("Jeno")}"
puts "#{starts_with_consonant?("Jeno")}"
puts "#{starts_with_consonant?("ISTJ")}"
puts "#{starts_with_consonant?("")}"
puts "#{starts_with_consonant?("R")}"
puts "#{starts_with_consonant?("#foo")}"
puts "#{starts_with_consonant?("!wow")}"

puts "3#{binary_multiple_of_4?("!wow")}"
puts "3#{binary_multiple_of_4?("#10")}"
puts "3#{binary_multiple_of_4?("100")}"
puts "3#{binary_multiple_of_4?("101")}"
puts "3#{binary_multiple_of_4?("0")}"
puts "3#{binary_multiple_of_4?("0101010101010100")}"
