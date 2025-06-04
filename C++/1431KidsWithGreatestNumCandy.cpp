#include <iostream>
#include <vector>
using namespace std;

class Solution {
public:
    vector<bool> kidsWithCandies(vector<int>& candies, int extraCandies) {
        vector<bool> res;
        int maxCandies = 0;
        for (int x : candies) {
            if (x > maxCandies) {
                maxCandies = x;
            }
        }
        for (int x : candies) {
            res.push_back(x + extraCandies >= maxCandies);
        }
        return res;
    }
};

int main() {
    Solution sol;
    vector<int> candies = {2, 3, 5, 1, 3};
    int extraCandies = 3;
    vector<bool> result = sol.kidsWithCandies(candies, extraCandies);

    cout << "Result: ";
    for (bool b : result) {
        cout << (b ? "true " : "false ");
    }
    cout << endl;

    return 0;
}