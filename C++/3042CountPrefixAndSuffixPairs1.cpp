//
//  3042CountPrefixAndSuffixPairs1.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 1/8/25.
//
#include <iostream>  // For input/output
#include <vector>    // For std::vector
#include <string>    // For std::string
using namespace std;

class Solution {
public:
    int countPrefixSuffixPairs(vector<string>& words) {
        int count = 0;
        for (int i = 0; i < words.size(); i++) {
            for (int j = i + 1; j < words.size(); j++) {
                if (isPrefixAndSuffix(words[i], words[j])) {
                    count++;
                }
            }
        }
        return count;
    }

    bool isPrefixAndSuffix(string str1, string str2) {
        bool isPrefix = true, isSuffix = true;
        int str2Len = str2.length();
        if (str2.size() < str1.size()) {
            return false;
        }
        for (int i = 0; i < str1.length(); i++) {
            if (str1[i] != str2[i]) {
                isPrefix = false;
                break;
            }
        }
        for (int i = 0; i < str1.length(); i++) {
            if (str1[i] != str2[str2Len - str1.length() + i]) {
                isSuffix = false;
                break;
            }
        }
        return isSuffix && isPrefix;
    }
};

