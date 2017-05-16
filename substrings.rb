dictionary = ["below","down","go","going","horn","how","howdy",
"it","i","low","own","part","partner","sit", "cat", "hat", "at"]

def substrings(string, dictionary)
    count = {}
    
    dictionary.each do |w|
        s = string.scan(w).length
        count[w] = s unless s < 1
    end
    puts count
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)