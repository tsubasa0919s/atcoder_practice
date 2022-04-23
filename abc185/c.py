def stirling(n, k, s=True):
    return (0 if n < k else
            1 if n == k else
            0 if k == 0 else
            stirling(n - 1, k - 1, s) + stirling(n - 1, k, s)
            )

if __name__ == '__main__':
    l = int(input())
    print(stirling(l, 12, False))