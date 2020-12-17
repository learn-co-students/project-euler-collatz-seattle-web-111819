def even_next(n)
    n = n/2
end

def odd_next(n)
    3*n + 1
end

def next_value(n)
    if (n % 2 == 0)
        even_next(n)
    else odd_next(n)
    end
end

def collatz(n)
    result = []
    while (n != 1) 
        result.push(n)
        n = next_value(n)
    end
    result << n
end

def longest_collatz
    longest_collatz_length = 0
    longest_collatz_start = 0
    (1..1000000).each do |start|
        current_collatz_length = collatz(start).length
        if (current_collatz_length > longest_collatz_length)
            longest_collatz_length = current_collatz_length
            longest_collatz_start = start
        end
    end
    longest_collatz_start
end