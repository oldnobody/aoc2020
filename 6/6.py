inputfile = open('input.txt', 'r')
lines = inputfile.readlines()
group = set()
questions = []

for line in lines:
  chars = set(line.strip('\n'))
  for c in chars:
    group.add(c)
  if len(line) == 1:
    questions.append(len(group))
    group = set()
    
    

thesum = sum(x for x in questions)
print(thesum)
