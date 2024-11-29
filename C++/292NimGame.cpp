//
//  292NimGame.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 11/28/24.
//
// You are playing the following Nim Game with your friend:

//Initially, there is a heap of stones on the table.
//You and your friend will alternate taking turns, and you go first.
//On each turn, the person whose turn it is will remove 1 to 3 stones from the heap.
//The one who removes the last stone is the winner.
//Given n, the number of stones in the heap, return true if you can win the game assuming both you and your friend play optimally, otherwise return false.

// The key to this, is figuring out that when the number of stones is 1-3 we can win in 1. Once it hist 4, we cannot win. So when we go to 5, we take 1 and set up the enemy with 4, where they will not win. Continue this to find that multiples of 4 will cause us to lose, so we return true when its not a multiple of 4.
class Solution {
public:
    bool canWinNim(int n) {
        return (n % 4 != 0);
    }
};
