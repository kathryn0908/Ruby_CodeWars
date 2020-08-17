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


def panagram?(string)
  arr = string.downcase.chars
  b = ['a','b','c','d','e','f','g','h','i','j','k', 'l', 'm','n','o','p','q','r','s','t','u','v','w','x','y','z']
  return b.all? {|aplha| arr.include?(aplha)}
end

def is_isogram(string)
    arr = string.downcase.chars
    count_a = []
     arr.each do |s|
      count_a.push(arr.count(s))
     end
    count_a.all? {|c| c==1}
end

def DNA_strand(dna)
    dna_a = dna.chars.map do |d|
      d == "A" ? d.replace("T") 
      : d == "T" ? d.replace("A") 
      : d == "G" ? d.replace("C") 
      : d == "C" ? d.replace("G")
      : null 
    end
    
    return dna_a.join('')
    
end

require 'prime'# Test if number is prime
def isPrime(num)
  Prime.prime?(num)
end