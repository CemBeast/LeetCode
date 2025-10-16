class MyHashMap {
public:
    MyHashMap() {

    }
    
    void put(int key, int value) {
        bool updated = false;
        for(int i = 0; i < map.size(); i++){
            if(key == map[i][0]){
                map[i][1] = value;
                updated = true;
                break;
            }
        }
        if(!updated){
            map.push_back({key, value});
        }
    }
    
    int get(int key) {
        for(int i = 0; i < map.size(); i++){
            if(map[i][0] == key){
                return map[i][1];
            }
        }
        return -1;
    }
    
    void remove(int key) {
        for(auto it = map.begin(); it != map.end(); ){
            if((*it)[0] == key){
                it = map.erase(it);
            }
            else{
                it++;
            }
        }
    }
private:
    vector<vector<int>> map;
};

/**
 * Your MyHashMap object will be instantiated and called as such:
 * MyHashMap* obj = new MyHashMap();
 * obj->put(key,value);
 * int param_2 = obj->get(key);
 * obj->remove(key);
 */