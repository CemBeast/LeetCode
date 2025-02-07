//
//  206ReverseLinkedList.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 2/6/25.
//
struct ListNode {
    int val;
    ListNode *next;
    ListNode() : val(0), next(nullptr) {}
    ListNode(int x) : val(x), next(nullptr) {}
    ListNode(int x, ListNode *next) : val(x), next(next) {}
};

class Solution {
public:
    ListNode* reverseList(ListNode* head) {
        ListNode *pPrev = nullptr, *pCur = head, *pLast = nullptr;
        while(pCur != nullptr)
        {
            pPrev = pCur;
            pCur = pCur->next;
            pPrev->next = pLast;
            pLast = pPrev;
        }
        head = pLast;
        return head;
    }
};
