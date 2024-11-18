#include <iostream>
using namespace std;

class Solution {
public:
    bool isSameAfterReversals(int num) {
        if (num == 0)
        {
            return true;
        }
        // If the number ends with a zero, it will change after two reversals
        return num % 10 != 0;
    }
};