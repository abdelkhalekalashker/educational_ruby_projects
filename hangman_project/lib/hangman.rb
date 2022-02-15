class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
 def self.random_word
    DICTIONARY.sample
 end

 def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length , "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
 end

 def guess_word
  @guess_word
 end

 def attempted_chars
  @attempted_chars
 end

 def remaining_incorrect_guesses
  @remaining_incorrect_guesses
 end

 def already_attempted?(char)
  attempted_chars.include?(char) 
 end

 def get_matching_indices(char)
   array=[]
   @secret_word.each_char.with_index do |ch , idx|  
      if ch == char
         array<< idx 
      end
   end
   array
 end

 def fill_indices(ind , arr)
   hello = @guess_word
   arr.each do |hight| 
      hello[hight] = ind
   end
   hello
 end

 def try_guess (char)
   if already_attempted?(char)
      puts "if the char was already attempted"
      return false
   end
   @attempted_chars<<char
   arrays = get_matching_indices(char)
   if arrays.empty? 
      @remaining_incorrect_guesses -= 1
   else self.fill_indices(char , arrays)
   end
   true
 end

 def ask_user_for_guess
   p 'Enter a char:'
   char = gets.chomp
   return try_guess (char)

 end

 def win? 
   if @guess_word.join("") == @secret_word
      puts "WIN"
      return true
   end
   false
 end

 def lose?
   if @remaining_incorrect_guesses == 0
      puts "LOSE"
      return true
   end
   false
 end

 def game_over?

   if lose? || win?
      puts  @secret_word
      puts "game_over"
      return true
   end
   false
end



end
