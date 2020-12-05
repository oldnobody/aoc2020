input=readlines("input.txt")

function numberOfOccurences(char, word)
  count = 0
  for c in word
    if c==char
      count += 1
    end
  end
  return count
end

function day2()
  counter = 0

  for line in input
    min, max, char, word = split(line, ['-', ' ']) 


    n = numberOfOccurences(char[1], word)
    if n >= parse(Int, min) && n <= parse(Int, max)
      counter += 1
    end
  end

  println(counter)
end

day2()
