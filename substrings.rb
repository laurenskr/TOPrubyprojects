dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  hits = Hash.new(0)
  string.gsub!(/\W\s/, ' ')
  string.split.each do |string|

    dictionary.each do |i|
      if string.downcase.include? i
        hits[i] += 1
      end
    end  
    end
  puts hits.sort.to_h
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
