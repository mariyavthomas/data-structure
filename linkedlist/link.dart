class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class linkedlist {
  Node? head;
  Node? tail;

  void addnode(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
      tail = newnode;
    }
    tail!.next = newnode;
    tail = newnode;
  }

  void display() {
    Node? temp = head;
    if (temp == null) {
      print('emty');
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void addmiddle(int data) {
    Node newnode = Node(data);
    Node? fast = head;
    Node? slow = head;
    Node? current;
    if (fast == null && fast!.next == null) {
      print('not add');
    } else {
      while (fast != null && fast.next != data) {
        fast = fast.next?.next;
        current = slow;
        slow = slow!.next;
      }
      current!.next = newnode;
      newnode.next = slow;
    }
  }
}

void main() {
  linkedlist res = linkedlist();
  res.addnode(20);
  res.addnode(30);
  res.addnode(40);
  res.addnode(50);
  res.addnode(60);
  res.addmiddle(100);
  res.display();
}
