class Book
    attr_accessor :title

    def title=(new_title)
        little_words = ["a", "an", "and", "the", "in", "of"]
        words = new_title.split(" ")
        for i in 0..words.length - 1 do
            if i == 0 or !little_words.include? words[i]
                words[i] = words[i][0].upcase + words[i][1..]
            end
        end
        @title = words.join(" ")
    end
end
