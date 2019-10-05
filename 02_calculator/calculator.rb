#write your code here
def add num1, num2
    num1 + num2
end

def subtract num1, num2
    num1 - num2
end

def sum array
    total = 0 
    array.each do |value|
        total += value
    end
    total
end

def mulitply num1, num2
    num1 * num2
end

def power base, power
    base ** power
end

def factorial num
    if num <= 1
        return 1
    else
        num * factorial(num - 1)
    end
end