input = readlines("input.txt")

function day3()
  count = 0

  for (i, line) in enumerate(input)

      n = mod(i,31) 
      x = mod(i*3,31) + 1 
      y = i + 1

      if (y<=length(input))
        c = input[y][x]
        #println("i: $i, x: $x, y: $y, c: $c")

        if c == '#'
          count += 1
        end
      end
  end

  
  println(count)
end

day3()
