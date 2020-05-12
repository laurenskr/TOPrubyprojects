dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  hits = Hash.new
  dictionary.each do |i|
    if string.include? i
      hits[i] = hits[i].to_i + 1
    end
  end
  puts hits
end

substrings("below", dictionary)
