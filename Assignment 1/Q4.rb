class Hash
    def merge(other, &block)
        # make a copy of itself
        cache = self.clone

        other.each { |key, value|
            if cache[key]
                if block_given?
                    cache[key] = yield(key, self[key], value)
                else
                    cache[key] = value
                end
            else
                cache[key] = value
            end
        }
        return cache
    end

    def merge!(other, &block)
        # change h1 to be the merged hash
        self.merge(other, &block).each { |key, val| self[key] = val }
    end
end
