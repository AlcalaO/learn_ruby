#write your code here

def translate (message)
  vowels = 'aeiou'.split('')
  consonants = 'qdrwbjfpshtnzxmcvkl'.split('')
  sound = 'ay'
  new_message = message
  arr_message = message.split('')
  n_consonants = find_n_consonants(message)

  # if vowels.include?(arr_message.first)
  #   new_message.concat(sound)
  #   return new_message
  # elsif consonants.include?(arr_message.first)
  #   arr_message.push(message.split('').first)
  #   arr_message.push(sound)
  #   arr_message.delete_at(0)
  #   return arr_message.join
  # end

  case n_consonants
  when 0
    new_message.concat(sound)
    return new_message
  when 1
    arr_message.push(message.split('').first)
    arr_message.push(sound)
    arr_message.delete_at(0)
    return arr_message.join
  when 2
    arr_message.push(message.split('').first(2))
    arr_message.push(sound)
    # arr_message.delete_at()
    arr_message.shift(2)

    return arr_message.join
  end

    
end

def find_n_consonants (word)
  # find the n first consonants of the word.
  consonants = 'qdrwbjfpshtgnzxmcvkl'.split('')
  n_consonants = 0
  new_word = word.split('')
  new_word.each do |character|
    if consonants.include?(character)
      n_consonants += 1
    else
      return n_consonants
      break
    end
  end
end