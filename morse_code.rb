def decode_char(input)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }

  morse_code[input]
end

def decode_word(word)
  final_word = ''
  word.split(/ /).each do |n|
    final_word += decode_char(n)
  end
  final_word
end

def decode_msg(msg)
  message = ''
  msg = msg.split(/   /)
  msg.each do |n|
    message += decode_word(n)
    message += ' '
  end
  message
end

decode_msg('-- -.--   -. .- -- .')

# => MY NAME

decode_msg('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

# => A BOX FULL OF RUBIES
