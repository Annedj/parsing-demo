require 'json'
require 'open-uri'

puts "What's your nickname?"
print "> "
nickname = gets.chomp

# TODO - Let's fetch name and bio from a given GitHub username
url = "https://api.github.com/users/#{nickname}"
p url

user_serialised = URI.open(url).read

# p user_serialised

user_infos = JSON.parse(user_serialised)

# p user_infos

puts "#{user_infos["name"]} has #{user_infos["public_repos"]} repositories"
