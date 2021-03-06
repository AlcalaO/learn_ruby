#write your code here

def translate (message)
  vowels = 'aeiou'.split('')
  consonants = 'qdrwbjfpshtnzxmcvkl'.split('')
  arr_message = message.split(' ')
  new_message = ''

  case arr_message.size
  when 1
    new_message.concat(translate_word(arr_message.first))
  else
    arr_message.each do |word|
      new_message.concat(translate_word(word) + ' ')
    end
    new_message.rstrip
  end

  return new_message.rstrip
    
end

def translate_word word
  arr_word = word.split('')
  new_word = word
  sound = 'ay'
  n_consonants = find_n_consonants(word)

  case n_consonants
  when 0
    new_word.concat(sound)
    return new_word
  when 1
    arr_word.push(word.split('').first)

    if arr_word[1] == 'u'
      arr_word.push(arr_word[1])
      arr_word.shift(2)
      arr_word.push(sound)
      return arr_word.join
    else
      arr_word.shift(1)
      arr_word.push(sound)
      return arr_word.join
    end
  when 2
    arr_word.push(word.split('').first(2))
    if arr_word[2] == 'u'
      arr_word.push(arr_word[2])
      arr_word.push(sound)
      arr_word.shift(3)
      return arr_word.join
    else
      arr_word.push(sound)
      arr_word.shift(2)
      return arr_word.join
    end
  when 3
    arr_word.push(word.split('').first(3))
    arr_word.push(sound)
    arr_word.shift(3)
    return arr_word.join
  end
end

def find_n_consonants(word)
  # find the n first consonants of the word.
  consonants = 'qdrwbjfpshtgnzxmcvkl'.split('')
  n_consonants = 0
  new_word = word.split('')
  new_word.each do |character|
    if consonants.include?(character)
      n_consonants += 1
    else
      return n_consonants
    end
  end
end