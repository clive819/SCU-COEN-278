#!/usr/bin/env ruby

require_relative 'Q1'
require_relative 'Q2'
require_relative 'Q3'
require_relative 'Q4'
require_relative 'Q5'


# specify encoding format
Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8


# Q1
puts "=" * 5 + " Question 1 " + "=" * 5, "\n"

str = <<EOS
Facebook and its founder must release documents and electronic correspondence to a defense lawyer whose client has fled from criminal charges that he falsely claimed a majority ownership in the social media giant, a federal judge said Friday.
EOS

puts "str: ", str
print "count_word(\"and\"): ", str.count_word("and"), "\n\n"

str = %{three, three, three}
puts str, str.count_word(), "\n"


# Q2
puts "\n", "=" * 5 + " Question 2 " + "=" * 5, "\n"

students = [
    {:firstname => "John", :lastname => "LastnameJohn", :phonenumber => 123456789},
    {:firstname => "Ken", :lastname => "Lastnameken", :phonenumber => 456734244},
    {:firstname => "Marisa", :lastname => "lastnamemarisa", :phonenumber => 443234567},
    {:firstname => "Ken", :lastname => "Kenlastname", :phonenumber => 456734244}
]


puts "Hash: ", students, "\n\nSearch result:"
obj = Search.new()
obj.search_students(students, firstname: "Ken")


# Q3
puts "\n", "=" * 5 + " Question 3 " + "=" * 5, "\n"

obj = Compress.new("i love you but do you love me")
puts "Original: i love you but do you love me", "\nResult:"
p obj.words, obj.seq


# Q4
puts "\n", "=" * 5 + " Question 4 " + "=" * 5, "\n"

puts "merge"
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }

puts h1.merge(h2)
puts h1.merge(h2){|key, val1, val2| val2 - val1}
puts h1

puts "\nmerge!"
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }

puts h1.merge!(h2){|key, val1, val2| val2 - val1}
puts h1


# Q5
puts "\n", "=" * 5 + " Question 5 " + "=" * 5, "\n"

str = <<EOF
<%= simple_form_for @project do |f| %>
    <%= f.input :name %>
    <%= f.input :description %>
    <h3>Tasks</h3>
    <div id='tasks'>
        <%= f.simple_fields_for :tasks do |task| %>
        <%= render 'task_fields', :f => task %>
        <% end %>
        <div class='links'>
        <%= link_to_add_association 'add task', f, :tasks %>
        </div>
    </div>
    <%= f.submit 'Save' %>
    % x = 1
    <%= @text %><div>text1</div>
    <div>text2</div><%= @text%>
    <%=
    ...line1
    ...line2
    %>
<% end %>
EOF


puts "Original:", str, "\n"
obj = Webpage.new(str)
puts "\nFiltered: ", obj.filter
