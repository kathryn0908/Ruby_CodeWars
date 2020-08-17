def longest_repetition(string)
    max = string
            .chars
            .chunk(&:itself)
            .map(&:last)
            .max_by(&:size)
    
    max ? [max[0], max.size] : ["", 0]
end

def panagram?(string)
    ('a'..'z').all? { |x| string.downcase.include? (x) } 
end

def is_isogram(string)
    string.downcase.chars.uniq == string.downcase.chars
end

def DNA_strand(dna)
    dna.tr("ACTG", "TGAC")
end

def DNA_strand(dna)
    dna.gsub(/[ATGC]/, "A" => "T", "T" => "A", "C" => "G", "G" => "C")
end

str = 'this_is-great'
def to_camel_case(str)
    
    arr = str.chars.map do |s|
    s == '-' || s == '_' ? s.replace(' ') : s
    end
    
    up_a = []
    arr.each_with_index do |a, i|
        prev_element = arr[i-1] unless i == 0
        next_element = arr[i+1] unless i == arr.size - 1
        up_a.push(prev_element == " " ? a.upcase : a)
    end
    up_a.map do |a|
        a == ' ' ? a.clear : a
    end
    pp up_a.join('')
end
to_camel_case(str)

require 'prime'

def isPrime(num)
  num.prime?
end