/**
 * @file happy_string_generator.cpp
 * @brief Solution to generate the k-th lexicographical happy string of length n.
 * 
 * A happy string is a string that:
 * - Consists only of letters {'a', 'b', 'c'}.
 * - No two adjacent letters are the same.
 * 
 * This solution generates happy strings recursively and returns the k-th one.
 * 
 * @author Your Name
 * @date 2025-02-18
 */

#include <string>

using namespace std;

/**
 * @class Solution
 * @brief Implements the solution to generate the k-th lexicographical happy string.
 */
class Solution {
public:
    /**
     * @brief Returns the k-th lexicographical happy string of length n.
     * 
     * @param n Length of the happy string.
     * @param k The k-th happy string to return.
     * @return The k-th happy string if it exists, otherwise an empty string.
     */
    string getHappyString(int n, int k) {
        string res = "";
        int count = 0;
        BuildHappy(n, count, k, "", res);
        return res;
    }
    
private:
    /**
     * @brief Recursively builds happy strings and finds the k-th one.
     * 
     * @param n Length of the happy string.
     * @param count Tracks the number of happy strings generated so far.
     * @param k The target k-th happy string.
     * @param str The current string being built.
     * @param result Stores the k-th happy string once found.
     */
    void BuildHappy(int n, int &count, int k, string str, string &result) {
        if (str.length() == n) {
            count++;
            if (count == k) {
                result = str;
            }
            return;
        }

        for (char ch : {'a', 'b', 'c'}) {
            if (str.empty() || str.back() != ch) {
                BuildHappy(n, count, k, str + ch, result);
                if (!result.empty()) {
                    return;
                }
            }
        }
    }
};