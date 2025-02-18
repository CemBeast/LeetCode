//
//  83RemoveDuplicatesfromSortedList.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 2/18/25.
//


  // Definition for singly-linked list.
  struct ListNode {
      int val;
      ListNode *next;
      ListNode() : val(0), next(nullptr) {}
      ListNode(int x) : val(x), next(nullptr) {}
      ListNode(int x, ListNode *next) : val(x), next(next) {}
  };
 
class Solution {
public:
    ListNode* deleteDuplicates(ListNode* head) {
        ListNode *cur = head, *dummy = nullptr;
        if(!head)
        {
            return nullptr;
        }

        while(cur && cur->next)
        {
            if(cur->val == cur->next->val)
            {
                dummy = cur->next;
                cur->next = cur->next->next;
                delete dummy;
            }
            else
            {
                cur = cur->next;
            }
        }
        return head;
    }
};
