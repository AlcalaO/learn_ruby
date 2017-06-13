#write your code here

def echo message
    return message
end

def shout message
    return message.upcase
end

def repeat (message, count=1)
    if count == 1
        repeated_message = message + ' ' + message
        return repeated_message
    else
        repeated_message = '' 
        for i in 1..count
            repeated_message.concat(message + ' ')
        end

        return repeated_message.chop
    end
end

def start_of_word (message, count)
    return message.split('').first(count).join
end

def first_word message
    return message.split(' ').first
end

def titleize message
    if message.split(' ').size == 1
        return message.capitalize
    else
        little_words = ['and', 'the', 'over']
        capitalized_message = ''
        n_word = message.split(' ').size
        arr_message = message.split(' ')

        for i in 0..n_word-1
            if little_words.include?(arr_message[i]) && i == 0
                capitalized_message.concat(arr_message[i].capitalize + ' ')
            elsif little_words.include?(arr_message[i])
                capitalized_message.concat(arr_message[i] + ' ')
            else
                capitalized_message.concat(arr_message[i].capitalize + ' ')
            end
        end

        return capitalized_message.chop
        
    end
end