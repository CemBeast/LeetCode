class Bank {
private: 
    vector<long long> mBalance;
    int n;
public:
    Bank(vector<long long>& balance) {
        this->mBalance = balance;
        n = balance.size();
    }

    bool valid(int account){
        return account > 0 && account <= n;
    }
    
    bool transfer(int account1, int account2, long long money) {
        if(!valid(account1) || !valid(account2) || mBalance[account1 - 1] < money){
            return false;
        }
        mBalance[account1 - 1] -= money;
        mBalance[account2 - 1] += money;
        return true;
    }
    
    bool deposit(int account, long long money) {
        if(!valid(account)){
            return false;
        }
        mBalance[account - 1] += money;
        return true;
    }
    
    bool withdraw(int account, long long money) {
        if(!valid(account) || mBalance[account - 1] < money){
            return false;
        }
        mBalance[account - 1] -= money;
        return true;
    }
};

/**
 * Your Bank object will be instantiated and called as such:
 * Bank* obj = new Bank(balance);
 * bool param_1 = obj->transfer(account1,account2,money);
 * bool param_2 = obj->deposit(account,money);
 * bool param_3 = obj->withdraw(account,money);
 */