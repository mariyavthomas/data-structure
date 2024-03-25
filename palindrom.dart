class Palindrome {
  bool isPalindrome(String str) {
    int left = 0;
    int right = str.length - 1;

    while (left < right) {
      if (str[left] != str[right]) {
        return false;
      }
      left++;
      right--;
    }

    return true;
  }
}void main() {
  Palindrome palindromeChecker = Palindrome();
  String str = 'mariya';
 
if (palindromeChecker.isPalindrome(str)) {
    print('$str is a palindrome.');
  } else {
    print('$str is not a palindrome.');
  }
}
