input=readlines("input.txt")
requiredFields = ["byr", "iyr", "eyr", "hgt", "hcl", "ecl", "pid"]


function check(passport, fields)
  for field in fields
    if haskey(passport, field) == false
      return false
    end
  end
  return true
end

function day4()
  passport = Dict()
  validPassports = 0
  invalidPassports = 0

  for line in input
    entry = split(line)
    for element in entry
      k,v = split(element,':')
      passport[k] = v
    end

    if length(line) == 0
      #check if valid
      if check(passport, requiredFields) == true
        validPassports += 1 
      else
        invalidPassports += 1
      end
      #reset passport
      passport = Dict()
    end
  end

  println("valid: $validPassports")
  println("invalid: $invalidPassports")
end

day4()
