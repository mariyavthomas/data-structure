int fact(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * fact(n - 1);
  }
}

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

String reverse(String str) {
  if (str.isEmpty) {
    return str;
  } else {
    return reverse(str.substring(1)) + str[0];
  }
}

int sum(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n + sum(n - 1);
  }
}


String reverseWords(String str) {
  int spaceIndex = str.indexOf(' ');

  if (spaceIndex == -1) {
    return str; // Base case: if there's only one word left
  }

  
  return reverseWords(str.substring(spaceIndex + 1)) + ' ' + str.substring(0, spaceIndex);
}


void main(List<String> args) {
  print(fibonacci(10));
  print(fact(5));
  print(sum(5));
  print(reverseWords('mariya v thomas'));  print(reverse('mariya v thomas'));
}
