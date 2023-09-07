HASHS = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z',
  '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4',
  '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9'
}.freeze

def decode_char(morse)
  decoded_char = HASHS[morse] || '?'
  decoded_char.upcase
end

def decode_word(morse)
  morse_characters = morse.split(' ')
  decoded_word = morse_characters.map { |s| decode_char(s) }.join('')
  decoded_word
end
def decode_message(morse)
  morse_words = morse.split('   ')
  decoded_message = morse_words.map { |s| decode_word(s) }.join(' ')
  decoded_message
end

# Example usages
puts decode_char(".-") 
puts decode_word("-- -.--") 
puts decode_message(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
