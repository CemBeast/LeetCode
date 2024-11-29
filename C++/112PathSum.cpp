//
//  112PathSum.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 11/28/24.
//
// Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 
class Solution {
public:
    bool hasPathSum(TreeNode* root, int targetSum) {
        if (root == nullptr)
            return false;
        return DFS(root, 0, targetSum);
    }

    int DFS(TreeNode* node, int curSum, int targSum)
    {
        if (node == nullptr)
            return false;
        curSum += node->val;
        if (node->left == nullptr && node->right == nullptr)
            return curSum == targSum;
        return DFS(node->left, curSum, targSum) || DFS(node->right, curSum, targSum);
    }
};
