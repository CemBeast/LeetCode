//
//  2593FindScoreOfArrayAfterMarkingAllElements.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 12/13/24.
//

#include <iostream>
#include <vector>
#include <queue>
#include <utility> // For std::pair
#include <functional> // For std::greater

using namespace std;

class Solution {
public:
    long long findScore(vector<int>& nums) {
        long long sol = 0;
        vector<bool> isMarked(nums.size(), false);
        // Priority queue to store {value, index}, sorted by value (min-heap)
        priority_queue<pair<int, int>, vector<pair<int, int>>, greater<pair<int, int>>> minHeap;

        // Fill the priority queue
        for (int i = 0; i < nums.size(); ++i)
        {
            minHeap.push({nums[i], i});
        }

        // Process the heap
        while (!minHeap.empty()) {
            auto [value, index] = minHeap.top();
            minHeap.pop();

            // Skip if the current index is already marked
            if (isMarked[index]) {
                continue;
            }

            // Mark the current index and its neighbors
            isMarked[index] = true;
            if (index > 0) isMarked[index - 1] = true;
            if (index < nums.size() - 1) isMarked[index + 1] = true;

            // Add the value to the solution
            sol += value;
        }

        return sol;
    }
};
