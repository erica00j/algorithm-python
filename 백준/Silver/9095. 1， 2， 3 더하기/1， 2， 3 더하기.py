T = int(input())
for i in range(T):
    n = int(input())
    if n == 1: print(1)
    elif n == 2 : print(2)
    elif n == 3: print(4)
    else:
        dp = [0] * (n+1)
        dp[1] = 1
        dp[2] = 2
        dp[3] = 4

        for i in range(4,n+1):
            dp[i] = (dp[i-3] + dp[i-2] + dp[i-1])

        print(dp[-1])