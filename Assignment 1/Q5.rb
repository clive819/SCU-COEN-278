class Webpage
    attr_accessor :template

    def initialize(str)
        @template = str
    end

    def filter
        # remove all ruby code start with <% and end with %>
        ans = @template.gsub(/<%.+?%>/m, '')
        # remove all ruby code start with %
        ans = ans.gsub(/%.+?\n/, '')
    end
end
