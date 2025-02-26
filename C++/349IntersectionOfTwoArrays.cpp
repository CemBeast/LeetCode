#include <iostream>
#include <vector>
#include <unordered_map>

using namespace std;

class Solution {
public:
    vector<int> intersection(vector<int>& nums1, vector<int>& nums2) {
        unordered_map<int, int> m1, m2; // Hash maps to store occurrences
        vector<int> res; // Result vector to store the intersection

        // Store occurrences of elements from nums1 in map m1
        for(int num : nums1) {
            m1[num]++;
        }

        // Store occurrences of elements from nums2 in map m2
        for(int num : nums2) {
            m2[num]++;
        }

        // Iterate over m1 and check if the key exists in m2
        for (auto& [key, _] : m1) {
            if (m2.find(key) != m2.end()) { // If key is also in m2
                res.push_back(key); // Add to result
            }
        }

        return res;
    }
};