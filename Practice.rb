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

str = "The_Stealth_Warrior"
def to_camel_case(str)
    pp str
    # arr = str.chars.map do |s|
    # s == '-' || s == '_' ? s.replace(' ') : s
    # end
    
    # up_a = []
    # arr.each_with_index do |a, i|
    #     prev_element = arr[i-1] unless i == 0
    #     next_element = arr[i+1] unless i == arr.size - 1
    #     up_a.push(prev_element == " " ? a.upcase : a)
    # end
    # up_a.map do |a|
    #     a == ' ' ? a.clear : a
    # end
    # pp up_a.join('')
end
to_camel_case(str)

# def missing s
#     arr = s.chars
#     pp arr
#     n_arr = []
#     arr.each_with_index do |a, i|
#        int = a.to_i
#        prev_element = arr[i-1] unless i == 0
#        next_element = arr[i+1] unless i == arr.size - 1
#        ne = next_element.to_i
#         if ne != int+1
#           n_arr.push(int + 1)
#         else
#             nil
#         end
#     end
#       if n_arr.empty?
#         return -1
#       else
#       return n_arr.first
#     end
# end

# def missing s
#     arr = s.chars
#     n_arr = []
#     arr.each_with_index do |a, i|
#         int = a.to_i
#         prev_element = arr[i-1] unless i == 0
#         next_element = arr[i+1] unless i == arr.size - 1
#         nn_e = arr[i+2] unless i == arr.size - 1
#         ne = next_element.to_i
#         nne = nn_e.to_i
#         if i.modulo(2) != 0
#             if ne != int+1 && nne != int || nne != int+1
#                 n_arr.push((int+ne)+1)
#             elsif ne != int+1
#                 n_arr.push(int+1)
#             elsif ne == int+1 || nne == int || nne == int+1
#                 nil
#             end
#         end
#     end

# end

# def missing s
#     arr = s.chars
#     n_arr = []
#     arr.each_with_index do |a, i|
#         int = a.to_i
#         prev_element = arr[i-1] unless i == 0
#         next_element = arr[i+1] unless i == arr.size - 1
#         nn_e = arr[i+2] unless i == arr.size - 1
#         ne = next_element.to_i
#         nne = nn_e.to_i
    
#         if (i+1).modulo(2) != 0
#             if nne != int && nne != int+1 && nne != int+2
#                 n_arr.push(((a+next_element).to_i)+1)
#             elsif ne != int+1
#                 n_arr.push(int+1)
#             elsif ne == int+1 || nne == int || nne == int+1
#                 nil
#             end
#         else
#           nil
#         end
#        if n_arr.empty?
#           return -1
#       else
#         return n_arr.first
#     end
#     end

# end

def iq_test(numbers)
    arr = []
    c_a = []
    final = []
    numbers.split(' ').each do |n|
       i = n.to_i
       arr.push(i.even?) 
    end
    arr.each do |a|
     c_a.push(arr.count(a))
    end
    
    c_a.each_with_index do |c, i|
      final.push(c == 1 ? i+1 : 0)
    end
    return final.max
end