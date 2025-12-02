import math

cash = 0
end = 15

for max_coins in range(3,end+1):
    cash = 3
    for i in range(4, max_coins+1):
        cash += math.ceil(i/3)

    print(f"{max_coins}, Cash is: {cash}")