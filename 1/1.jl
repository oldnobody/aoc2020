input = readlines("input.txt")

for n in input
  for n2 in input
    if parse(Int,n) + parse(Int,n2) == 2020
      println(parse(Int,n)*parse(Int,n2))
      break
    end
  end
end

