#include <iostream>

// Recursion function
void hanoi(char s, char d, char t, int n, int n_max) {
    // s: source peg
    // d: destination peg, target peg
    // t: temporary peg, intermediatary peg, spare peg
    // n: peg size
    // n_max: maximum peg size
    
    // Boundary condition
    if (n == 0) return;
    
    hanoi(s, t, d, n-1, n_max);
    
    // Print indentation
    for (int i=0; i < n_max-n; ++i) {
        std::cout << "  ";
    }
    
    // Print move
    std::cout << s << d << std::endl;
    
    hanoi(t, d, s, n-1, n_max);
}

int main() {
    hanoi('0', '2', '1', 4, 4);
    return 0;
}
