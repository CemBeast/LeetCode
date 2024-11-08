//
//  1281SubtractTheProductAndSumOfAnInteger.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 11/7/24.
//
#include <string>  // For std::string and std::to_string
#include <iostream> // Optional, for testing with std::cout
#include <stdio.h>
class Solution {
public:
    int subtractProductAndSum(int n) {
        std::string num = std::to_string(n);
        int product = 1, sum = 0;
        for(int i = 0; i < num.length(); i++)
        {
            int digit = num[i] - '0';  // Convert char to int
            product *= digit;
            sum += digit;
        }
        return product - sum;
    }
};
