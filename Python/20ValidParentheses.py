class Solution:
    def isValid(self, s: str) -> bool:
        stack = []
        for c in s:
            if c == '(' or c == '{' or c == '[':
                stack.append(c)
            elif not stack:
                return False
            elif stack[-1] == '(' and c == ')':
                stack.pop()
            elif stack[-1] == '[' and c == ']':
                stack.pop()
            elif stack[-1] == '{' and c == '}':
                stack.pop()
            else:
                return False
        return len(stack) == 0