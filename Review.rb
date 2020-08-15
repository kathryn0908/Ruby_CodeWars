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