with open("input.txt") as file:
  inp = file.readlines()

# remove newline character from each line
inp = [x.strip('\n') for x in inp]

def part1():
  preamble = 25

  def containsSum(arr, sum):
    returnValue = False
    for i in range(0,len(arr)):
      for j in range(i+1,len(arr)):
        # here important to cast from string to int, otherwise we compare to the string sum!
        if int(arr[i]) == int(arr[j]):
          continue
        if (int(arr[i]) + int(arr[j])) == int(sum):
          returnValue = True

        #print("arr[i] is {} and arr[j] is {}. sum is {}".format(arr[i], arr[j], arr[i]+arr[j]))

    return returnValue

  for i in range(preamble, len(inp)):
    n = inp[i]
    arraySlice = inp[i-preamble:i]
    if containsSum(arraySlice, n) == False:
      return n
     
answer1 = part1()
print(answer1)


def part2(a):
  GOAL = 507622668
  numbers = list([int(x) for x in inp])
  
  for i in range(len(numbers)):
    for j in range(i+1, len(numbers)):
      x = numbers[i:j]
      if sum(x) == GOAL:
        return(min(x) + max(x))


answer2 = part2(answer1)
print(answer2)
