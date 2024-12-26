class Solution(object):
    def isPalindrome(self, s):
        """
        :type s: str
        :rtype: bool
        """
        filtered = ""
        for char in s:
            if char.isalnum():
                filtered += char.lower()

        left = 0
        right = len(filtered) - 1
        while left < right:
            if filtered[left] != filtered[right]:
                return False
            right -= 1
            left += 1

        return True


# Test cases for the isPalindrome function
def test_is_palindrome():
    solution = Solution()

    # List of test cases
    test_cases = [
        ("A man, a plan, a canal: Panama", True),  # Palindrome
        ("race a car", False),  # Not a palindrome
        (" ", True),  # Empty or whitespace is considered a palindrome
        ("", True),  # Empty string is a palindrome
        ("12321", True),  # Numeric palindrome
        ("123456", False),  # Numeric non-palindrome
        ("ab@c#d$c^b&a", True),  # Special characters ignored, forms palindrome
        ("No lemon, no melon", True),  # Palindrome with spaces and mixed case
        ("Not a palindrome", False)  # Clearly not a palindrome
    ]

    # Run each test case
    for i, (input_str, expected) in enumerate(test_cases, 1):
        result = solution.isPalindrome(input_str)
        print(f"Test case {i}: Input: '{input_str}' | Expected: {expected} | Result: {result}")
        assert result == expected, f"Test case {i} failed!"


# Run the test function
test_is_palindrome()