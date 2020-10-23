import random

def coin_trial():
	heads = for i in range(100)
		if random.random() <= 0.5:
			heads +=1

	return heads

def simulate(n):
	trials = []
	for i in range(n):
		trials.append(coin_trial()) return(sum(trials)/n)