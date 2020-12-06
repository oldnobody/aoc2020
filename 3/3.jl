input = readlines("input.txt")

function day3_1()
  count = 0

  for (i, line) in enumerate(input)

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

function calculateSlope(data, slope)
  
  height = length(data)
  width = length(data[1])
  start = (1,1)
  trees = 0

  for i=0:height-1
    
    x = start[1] + (slope[1] * i) % width
    y = start[2] + (slope[2] * i)

    if y > height
      #println("y is $y, continue")
      continue
    end

    if data[y][x] == '#'
      trees += 1
    end

  end

  return trees

end

function day3_2()
  slopes = [(1,1), (3,1), (5,1), (7,1), (1,2)]
  count = 0
  product = 1
  
  for slope in slopes
    count = calculateSlope(input, slope)
    product *= count
    count = 0
  end

  println(product)
end

#day3_1()
day3_2()
