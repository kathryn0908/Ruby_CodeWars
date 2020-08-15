def longest_repetition chars
    "Implement me!"
    arr = chars.split('')
    findMax = []
    
    arr.each do |c|
      findMax.push(arr.count(c))
    end
    
    ind = findMax.index(findMax.max)
    max = findMax.max
    
    a_ind = arr[ind].split('')
    m = max.to_s.split('')
    
    num = m.map do |i|
            i.to_i
          end
    
    return a_ind.concat(num)
end

require 'set'
def panagram?(string)
  pp string
  arr = string.downcase.chars
  b = ['a','b','c','d','e','f','g','h','i','j','k', 'l', 'm','n','o','p','q','r','s','t','u','v','w','x','y','z']
  return b.all? {|smaller_array_item| arr.include?(smaller_array_item)}
end