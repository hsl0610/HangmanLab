#make hangman body
def draw_man(guesses)
  if guesses == 0
    puts "____________"
    puts "|"
    puts "|"
    puts "|"
    puts "|"
    puts "|"
    puts "|"
    puts "------"
  elsif guesses == 1
    puts "____________"
    puts "|     |"
    puts "|     O"
    puts "|"
    puts "|"
    puts "|"
    puts "|"
    puts "------"
  elsif guesses == 2
    puts "____________"
    puts "|     |"
    puts "|     O"
    puts "|    /"
    puts "|"
    puts "|"
    puts "|"
    puts "------"
  elsif guesses == 3
    puts "____________"
    puts "|     |"
    puts "|     O"
    puts "|    /|"
    puts "|"
    puts "|"
    puts "|"
    puts "------"
  elsif guesses == 4
    puts "____________"
    puts "|     |"
    puts "|     O"
    puts  "     /|\\"
    puts "|"
    puts "|"
    puts "|"
    puts "------"
  elsif guesses == 5
    puts "____________"
    puts "|     |"
    puts "|     O"
    puts "|    /|\\"
    puts "|    /  "
    puts "|"
    puts "|"
    puts "------"
  elsif guesses == 6
    puts "____________"
    puts "|     |"
    puts "|     O"
    puts "|    /|\\"
    puts "|    / \\"
    puts "|"
    puts "|"
    puts "------"
  end
end

#Get user to start game
puts "When ready, type start"
user_start = gets.chomp.downcase
if user_start != "start"
  exit
end

#method for inserting letters
def display_guess_progress(secret_word_array, letters_guessed)
  #go through each letter in your secret word array
  secret_word_array.each do |x|
    if (letters_guessed.include? x)==true
      print x
    elsif (letters_guessed.include? x)==false
      print " _ "
    end
  end
  puts
  puts "Letters Already Guessed:"
  puts letters_guessed.sort.join(",")
end

#make array of secret word
secret_word = "programming"
secret_word_array = secret_word.split("")

#make array of guess_by_user
guess_by_user = [].sort

#Draw hanger and blanks for word
draw_man(0)
wrong_guesses = 0
display_guess_progress(secret_word_array, guess_by_user)

#ask user to guess another letter until success or failure
while wrong_guesses < 6
  alphabet = ("a".."z").to_a
  puts "Guess a Letter"
  letter = gets.chomp
  guess_by_user.push(letter)

  until (alphabet.include? letter) ==true
  end

  if (secret_word.include? letter)==false
    wrong_guesses = wrong_guesses +1
  end

  draw_man(wrong_guesses)
  display_guess_progress(secret_word_array, guess_by_user)
end

puts "YOU LOSE!"
