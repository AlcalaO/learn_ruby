#write your code here

def echo message
    return message
end

def shout message
    return message.upcase
end

def repeat (message, times=1)
    if times == 1
        repeated_message = message + ' ' + message
        return repeated_message
    else
        repeated_message = message
        for i in 1..times
            repeated_message.concat(' ' + message)
        end

        return repeated_message
    end
end