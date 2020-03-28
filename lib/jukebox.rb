# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapman - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  list_count = 1 
  while list_count <= songs.length do 
  puts "#{list_count}. #{songs[list_count - 1]}"
  list_count += 1 
end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip 
  verdict = false
  when user_response.is_a?(Integer) && user_response > 0 && user_response < 10 
    puts "Playing #{songs[user_response - 1]}"
  when user_response.is_a?(String)
    songs.each do |song|
      if song.include? user_response
      puts "Playing #{user_response}"
      verdict = true
      end 
    end 
    if verdict != true
      puts "Invalid input, please try again"
    end 
  else puts "Invalid input, please try again"
  end 
end 
      
def run(songs)
  play(songs)
end 
