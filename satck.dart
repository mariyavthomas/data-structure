class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class Stack {
  Node? top;

  void dispaly() {
    Node? temp = top;
    if (temp == null) {
      return;
    } else {
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }
  String reverseString(String input) {
  Stack stack = Stack();
  String reversed = '';

  // Push each character's ASCII value of the input string onto the stack
  for (int i = 0; i < input.length; i++) {
    stack.push(input.codeUnitAt(i));
  }

  // Pop each character from the stack and convert it back to a string
  while (stack.top != null) {
    reversed += String.fromCharCode(stack.top!.data!);
    stack.pop();
  }

  return reversed;
}

  void push(int data) {
    Node newnode = Node(data);
    Node? temp = top;
    if (temp == null) {
      top = newnode;
    } else {
      newnode.next = top;
      top = newnode;
    }
  }

  void pop() {
    if (top == null) {
      print('underflow');
    } else {
      top = top!.next;
    }
  }
 void peek(){
  Node ?peek=top;
  if(peek!=null){
    print('peek :${peek.data}');
  }
 }
  void delete(int target) {
    Node? temp = top;
    Node? prev;
    if (temp == null) {
      return;
    } else {
      while (temp != null) {
        if (temp.data == target) {
          break;
        }
        prev = temp;
        temp = temp.next;
      }
      prev?.next = temp?.next;
    }
  }

  void size() {
    Node? temp = top;
    int i = 0;
    if (temp == null) {
      return;
    } else {
      while (temp != null) {
        i++;
        temp = temp.next;
      }
    }
    print('size: $i');
  }
}

void main() {
  Stack a = Stack();
  a.push(2);
  a.push(4);
  a.push(8);
  a.push(10);

  a.pop();

  a.delete(2);
  a.size();
  a.peek();
  a.dispaly();
  // String originalString = "";
  // String reversedString = a.reverseString(originalString);
  // print("Original: $originalString");
  // print("Reversed: $reversedString");
  print(a.reverseString('mariya'));
  a.dispaly();
}
