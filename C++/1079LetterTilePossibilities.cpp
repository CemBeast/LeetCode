//
//  1079LetterTilePossibilities.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 2/16/25.
//



#include <unordered_map> // For unordered_map
#include <string> // For std::string

using namespace std;

class Solution {
public:
    int numTilePossibilities(string tiles) {
        unordered_map<char, int> freq;
        int count = 0;
        for (char c : tiles)
        {
            freq[c]++;
        }
        backtrack(freq, count);
        return count;
    }

    void backtrack(unordered_map<char, int> &freq, int &count)
    {
        for (auto &pair : freq)
        {
            if (pair.second > 0)
            {
                pair.second--;
                count++;
                backtrack(freq, count);
                pair.second++;
            }
            
        }
    }
};
