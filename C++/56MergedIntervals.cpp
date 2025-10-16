class Solution {
public:
    vector<vector<int>> merge(vector<vector<int>>& intervals) {
        // First sort the list 
        sort(intervals.begin(), intervals.end(), [](const vector<int> &a, const vector<int>&b){
            return a[0] < b[0];
        });

        vector<vector<int>> ans;
        // initialize prev
        vector<int> prev = intervals[0];
        // Loop comparing with previous interval
        for(int i = 1; i < intervals.size(); i++){
            vector<int> interval = intervals[i];
            // Compare the current start time 
            // with previous end time
            if(interval[0] <= prev[1]){
                prev[1] = max(prev[1], interval[1]);
                // update end time in previous
            }
            else{
                // end interval so push and update prev
                ans.push_back(prev);
                prev = interval;
            }
        }
        // add the last interval
        ans.push_back(prev);
        return ans;
    }
};