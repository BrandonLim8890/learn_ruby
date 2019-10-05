#write your code here
def echo input
    input
end

def shout input
    input.upcase
end

def repeat (input, repeat = 2)
    array = []
    repeat.times do
        array.push(input)
    end
    array.join(" ")
end

def start_of_word (word, position)
    ans = ""
    for i in 1..position do
        ans += word[i - 1]
    end
    ans
end

def first_word words
    array = words.split()
    array[0]
end

def titleize word
    array = word.split()
    for i in 0..array.length - 1 do
        if array[i] != "and" and array[i] != "the" and array[i] != "over" or i == 0
            array[i][0] = array[i][0].upcase
        end
    end
    array.join(" ")
end