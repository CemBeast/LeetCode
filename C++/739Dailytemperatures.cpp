class Solution {
public:
    vector<int> dailyTemperatures(vector<int>& temperatures) {
        int n = temperatures.size();
        vector<int> daysToWait(n, 0);
        // work backwards starting from second to last val since last is always 0
        for(int currentDay = n - 2; currentDay >= 0; currentDay--){
            int nextDay = currentDay + 1;
            while(nextDay < n && temperatures[currentDay] >= temperatures[nextDay]){
                // if next day has no warmer then impossible to have warmer for cur
                if(daysToWait[nextDay] == 0){
                    nextDay = n;
                    break;
                }
                nextDay += daysToWait[nextDay];
            }
            if (nextDay < n){
                daysToWait[currentDay] = nextDay - currentDay;
            }
        }
        return daysToWait;
    }
};