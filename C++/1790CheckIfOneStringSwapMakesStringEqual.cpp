//
//  1790CheckIfOneStringSwapMakesStringEqual.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 2/5/25.
//
#include <iostream>
#include <vector>
#include <string>

using namespace std;

class Solution {
public:
    bool areAlmostEqual(string s1, string s2) {
        int dif = 0;
        vector<char> positionOne, positionTwo;
        for(int i = 0; i < s1.size(); i++)
        {
            if(s1[i] != s2[i])
            {
                dif++;
                positionOne.push_back(s1[i]);
                positionTwo.push_back(s2[i]);
            }
        }
        if (dif == 2 && positionOne[0] == positionTwo[1] && positionOne[1] == positionTwo[0])
        {
            return true;
        }
        return dif == 0;
    }
};
