#!/usr/bin/env python3

# Recursion function
def hanoi(s: str, d: str, t: str, n: int, n_max: int) -> None:
    # s: source peg
    # d: destination peg, target peg
    # t: temporary peg, intermediatary peg, spare peg
    # n: peg size
    # n_max: maximum peg size
    
    # Boundary condition
    if n == 0: return
    hanoi(s=s, d=t, t=d, n=n-1, n_max=n_max)
    # Print indentation
    for _ in range(n_max-n):
        print('  ', end='')
    # Print move
    print(f'{s}{d}')
    hanoi(s=t, d=d, t=s, n=n-1, n_max=n_max)

hanoi(s='0', d='2', t='1', n=4, n_max=4)

