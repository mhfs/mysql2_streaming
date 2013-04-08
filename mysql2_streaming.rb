require 'rubygems'
require 'bundler/setup'
require "mysql2"

# Adjust to your environment
client = Mysql2::Client.new(
  :host     => "localhost",
  :username => "root",
  :password => "",
  :database => "test"
)

# Create sample data
client.query "DROP TABLE IF EXISTS people;"
client.query "CREATE TABLE people (name VARCHAR(100));"
10000.times do |i|
  client.query "INSERT INTO people VALUES ('Person #{i + 1}');"
end

res = client.query "SELECT * FROM people;", :hash => true, :stream => true

res.each_with_index do |row, i|
  puts row["name"]

  if i % 3000 == 0 && i > 0
    puts "# => take a break"
    sleep 3
  end
end

puts "# => DONE"
