//
//  2185CountingWordsWithGivenPrefix.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 1/9/25.
//
#include <iostream> 
#include <vector>
#include <string>

using namespace std;

class Solution {
public:
    int prefixCount(vector<string>& words, string pref) {
        int count = 0;
        for(int i = 0; i < words.size(); i++)
        {
            bool isPrefix = true;
            for (int j = 0; j < pref.size(); j++)
            {
                if (words[i][j] != pref[j])
                {
                    isPrefix = false;
                    break;
                }
            }
            if (isPrefix)
            {
                count++;
            }
        }
        return count;
    }
};
