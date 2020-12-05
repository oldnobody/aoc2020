input = readlines("input.txt")

for n in input
  for n2 in input
    for n3 in input
      if parse(Int,n) + parse(Int,n2) + parse(Int,n3) == 2020
        println(parse(Int,n)*parse(Int,n2)*parse(Int,n3))
      end
    end
  end
end

