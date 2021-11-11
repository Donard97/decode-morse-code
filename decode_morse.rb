MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(str)
  if MORSE_CODE.key?(str)
    MORSE_CODE[str]
  else
    ''
  end
end

def decode_word(str)
  arr = []
  str.split.each do |n|
    arr.push(MORSE_CODE[n])
  end
  arr.join
end

def decode(str)
  word = ''
  str.strip.tr('/', ' ').split('   ').each do |n|
    word += "#{decode_word(n)} "
  end
  word
end

puts decode_char('.-')
puts decode_word('-- -.--')
puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
