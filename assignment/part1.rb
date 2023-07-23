def sum(array)
    res = 0
    array.each { |x| res += x }
    return res
end

def max_2_sum(array)
    num = array.max(2)
    return num.sum
end

def sum_to_n?(array, n)
    if (array.empty?) || (array.length == 1)
        return false
    elsif array.combination(2).any? {|a, b| a + b == n }
        return true
    else
        return false
    end
end



puts "def1 #{sum([1,2,3])}"

puts "def2 #{max_2_sum([2,4,7,6,9])}"
puts "def2 #{max_2_sum([2])}"
puts "def2 #{max_2_sum([4,4])}"
puts "def2 #{max_2_sum([])}"

puts "def3 #{sum_to_n?([],5)}"
puts "def3 #{sum_to_n?([1],5)}"
puts "def3 #{sum_to_n?([1,4,5],5)}"
puts "def3 #{sum_to_n?([1,2,3,4],8)}"
puts "def3 #{sum_to_n?([1],0)}"





