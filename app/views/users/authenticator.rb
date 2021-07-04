users = [
          {username: "Amritansh", password: "password1"},
          {username: "Varunika", password: "password2"},
          {username: "Ruby", password: "password3"},
          {username: "Vishal", password: "password4"},
          {username: "Ambrish", password: "password5"}
        ]
puts "Welcome to the authenticator Program"
25.times {print "-"}
puts
puts "This program will take input from the User and compare password"
counter = 1

def authentication_method(obj, u, p)
  obj.each do |user_object|
    return user_object if user_object[:username] == u && user_object[:password] == p
  end
  "Credentials were not correct"
end

while counter < 4
  print "Username: "
  u_name = gets.chomp
  print "Password: "
  pass_word = gets.chomp
  result = authentication_method(users, u_name, pass_word)
  puts result
  print "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == 'n'
  counter += 1
end
puts "You have exceeded the attempt limit" if counter == 4
