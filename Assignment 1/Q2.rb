class Search
    def search_students(students, filter)
        filtered = students.select { |hash|
            filter.all? { |key, value|
                # convert all words to lowercase to solve case sensitive issue
                value.downcase == hash[key].downcase
            }
        }

        if filtered.length() == 0
            puts "No match is found."
            return
        end

        puts "First Name\tLast Name\tPhone#\n\n"
        filtered.each { |hash|
            puts "#{hash[:firstname]}\t\t"\
                 "#{hash[:lastname]}\t"\
                 "#{hash[:phonenumber]}\t"
        }
    end
end
