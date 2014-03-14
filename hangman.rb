def get_display(word)
    disp=''
    for i in 0...word.length
        disp=disp+'-'
    end
    return disp
    
end

def is_letter_in_word(word,letter)

    word.include?letter
end

def get_letter(word,letter,display)

   if (word == nil)
        return
    else
        while(word.index(letter)!=nil):
            index=word.index(letter)
            display = display[0,index] + letter + display[index + 1,display.length]
            word = word[0,index] + '-' + word[index + 1, word.length]
        end
    end
    return display
end

def is_finished(word, display, left)

    if(left!=0)
        if(word==display)
            return 'you win!'
        else
            return 'continue'
        end
    else
        return 'game over'
    end

end