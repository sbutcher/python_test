from math import *
def factors(n):
	fact=[1,n]
	check=2
	rootn=sqrt(n)
	while check<rootn:
		if n%check==0:
			fact.append(check)
			fact.append(n/check)
		check+=1
	if rootn==check:
		fact.append(check)
        fact.sort()
	return fact

print factors(987654321*342839242373)
