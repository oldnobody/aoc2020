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


function check2(passport, fields)
  
  byr =  parse(Int,passport["byr"]) 
  if byr < 1920 || byr > 2002
    #println("returning false")
    return false
  end
  
  iyr = parse(Int,passport["iyr"])
  if iyr < 2010 || iyr > 2020
    return false
  end

  eyr = parse(Int,passport["eyr"])
  if eyr < 2020 || iyr > 2030
    return false
  end

  hgt = passport["hgt"]
  if occursin("in", hgt) == true
    i = parse(Int,split(hgt, "in")[1])
    if i < 59 || i > 76
      return false
    end
  elseif occursin("cm", hgt) == true
    i = parse(Int,split(hgt, "cm")[1])
    if i < 150 || i > 193
      return false
    end
  else
    return false
  end
  
  hcl = passport["hcl"]
  if length(hcl) != 7 return false
  elseif hcl[1] != '#' return false
  elseif match(r"[a-zA-Z0-9]*$",hcl[2:end]) == true 
    println(hcl[2:end])
    return false
  end

  ecl = passport["ecl"]
  if occursin(ecl, "amb blu brn gry grn hzl oth") == false
    return false
  end

  pid = passport["pid"]
  if length(pid) != 9 || match(r"[0-9]*$", pid) == false
    return false
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
        if check2(passport, requiredFields) == true
          validPassports += 1 
        else
          invalidPassports += 1
        end
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
