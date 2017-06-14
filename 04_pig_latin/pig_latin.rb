#write your code here

def translate (message)
  vowels = 'aeiou'.split('')
  consonants = 'qdrwbjfpshtgnzxmcvkl'.split('')
  sound = 'ay'
  new_message = message
  arr_message = message.split('')

  if vowels.include?(arr_message.first)
    new_message.concat(sound)
    return new_message
  elsif consonants.include?(arr_message.first)
    arr_message.push(message.split('').first)
    arr_message.push(sound)
    arr_message.delete_at(0)
    return arr_message.join
  end

end

def find_n_consonants (word)
  vowels = 'aeiou'.split('')
  
end