class Compress
    attr_accessor :seq, :words

    def initialize(str)
        @cache = {}
        @seq = []
        @words = []

        str.split(/\W/).each { |word|
            if not @cache[word]
                @cache[word] = @cache.size
                @words << word
            end
            @seq << @cache[word]
        }
    end
end
