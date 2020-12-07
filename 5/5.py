ids = [int(line.translate("".maketrans('FBLR', '0101')), 2) for line in open("input.txt")]
#part 1
print(max(ids))

#part 2
#make a complete range from min to max, then subtract ids
seat = set(range(min(ids), max(ids))) - set(ids)
print(seat)

