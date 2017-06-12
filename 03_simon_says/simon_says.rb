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