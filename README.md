# Tower of Hanoi Visualizer

A Python program that visualizes the solution to the Tower of Hanoi puzzle by showing the sequence of moves between pegs.

## Description

This program implements a recursive solution to the Tower of Hanoi puzzle. It displays each move in an indented format, where:
- `0`: Source peg
- `1`: Temporary peg
- `2`: Destination peg
- Indentation shows the recursive depth of each move

## Usage

```bash
python3 hanoi.py
```

Or make it executable and run:
```bash
chmod u+x hanoi.py
./hanoi.py
```

## Example Output

For n=4 disks, the program will show the sequence of moves from peg 0 to peg 2:
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

## Parameters

The `hanoi()` function takes the following parameters:
- `s`: Source peg (starting position)
- `d`: Destination peg (ending position)
- `t`: Temporary peg (intermediate position)
- `n`: Number of disks to move
- `n_max`: Maximum number of disks (for indentation)

## How It Works

1. The program uses recursion to solve the puzzle
2. For n disks, it:
   - Moves n-1 disks from source peg to temporary peg
   - Moves largest disk from source peg to destination peg
   - Moves n-1 disks from temporary peg to destination peg
3. Indentation visualizes which disk is being moved

## Requirements

- Python 3

## License

BSD-3-Clause license, see detail in the file LICENSE