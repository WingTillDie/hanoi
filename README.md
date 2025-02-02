# Tower of Hanoi Visualizer

Tower of Hanoi puzzle solution that visualizes recursion depth by indentation.

## Example Output
Moving 4 disks from source peg 0 to target peg 2, with peg 1 as spare peg, the program shows the solution as a sequence of moves:
```
      01
    02
      12
  01
      20
    21
      01
02
      12
    10
      20
  12
      01
    02
      12
```
Each line shows a move from one peg to another. The indentation level represents the size of the disk being moved (more indentation = smaller disk).

## Description

This program implements a recursive solution to the Tower of Hanoi puzzle. It displays each move in an indented format, where:
- `0`: Source peg
- `1`: Temporary peg
- `2`: Destination peg
- Indentation shows the recursive depth of each move

## How It Works

1. The program uses recursion to solve the puzzle
2. For n disks, it:
   - Moves n-1 disks from source peg to temporary peg
   - Moves largest disk from source peg to destination peg
   - Moves n-1 disks from temporary peg to destination peg
3. Indentation visualizes which disk is being moved

## Usage

```bash
python3 hanoi.py
```

Or make it executable and run:
```bash
chmod u+x hanoi.py
./hanoi.py
```

## Parameters

The `hanoi()` function takes the following parameters:
- `s`: Source peg
- `d`: Destination peg (aka. target peg)
- `t`: Temporary peg (aka. spare peg)
- `n`: Number of disks to move
- `n_max`: Maximum number of disks (for indentation)

## Requirements

- Python 3

## License

BSD-3-Clause license, see detail in the file LICENSE