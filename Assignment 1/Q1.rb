class String
    def count_word(word = "")
        cache = {}

        if self.length() == 0
            puts "No match is found."
            return
        end

        # count all word occurrence
        self.split(/\W+/).each { |word|
            if cache[word]
                cache[word] += 1
            else
                cache[word] = 1
            end
        }

        if word != ""
            return cache[word] || 0
        else
            # if word is empty, return all word occurrence
            return cache
        end
    end
end
