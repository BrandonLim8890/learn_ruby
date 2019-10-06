#write your code here
def translate word
    vowels = ['a', 'e', 'i', 'o', 'u']
    array = word.split()

    for i in 0..array.length - 1 do
        word = array[i]

        if word.include? "qu"
            qu_start = word.index("qu")
            array[i] = word[qu_start + 2..] + word[0..qu_start + 1] + "ay"

        elsif vowels.include? word[0]
            array[i] += "ay"

        elsif !vowels.include? word[1] and !vowels.include? word[2]
            array[i] = word[3..] + word[0..2] + "ay"

        elsif !vowels.include? word[1]
            array[i] = word[2..] + word[0..1] + "ay"

        else
            array[i] = word[1..] + word[0] + "ay"

        end
    end
    array.join(" ")
end