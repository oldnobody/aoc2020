from collections import Counter
inputfile = open('input.txt', 'r')
lines = inputfile.readlines()
group = set()
array = []
questions2 = []
linesInGroup = 0
questions = []

for line in lines:
  chars = set(line.strip('\n'))
  linesInGroup += 1
  for c in chars:
    group.add(c)
    array.append(c)
  if len(line) == 1:
    questions.append(len(group))
  

    # discount this line from count
    linesInGroup -= 1

    occurences = Counter(array).values()
    counter2 = 0
    for x in occurences:
      if x == linesInGroup:
        counter2 += 1

    questions2.append(counter2)
    # reset group
    group = set()
    counter2 = 0
    linesInGroup = 0
    array = []
    
    

thesum = sum(x for x in questions)
print(thesum)
thesum2 = sum(x for x in questions2)
print(thesum2)
