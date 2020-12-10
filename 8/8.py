inputfile = open("input.txt", 'r')
lines = inputfile.readlines()
lines = [x.strip() for x in lines]

def part1():
  accumulator = 0
  index = 0
  #instruction = line[index]
  SEEN = set()

  while index not in SEEN:
    instruction = lines[index]
    n = int(instruction[4:])
    SEEN.add(index)
    if instruction.startswith('n'):
      index += 1
      continue
    elif instruction.startswith('a'):
      accumulator += n
      index += 1
    elif instruction.startswith('j'):
      index += n

  return accumulator

print(part1())

def part2():


