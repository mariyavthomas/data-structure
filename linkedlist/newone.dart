class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class slinkedlist {
  Node? head;
  Node? tail;
  void display() {
    Node? temp = head;
    if (temp == null) {
      print('empty');
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void addbeg(int data) {
    Node newNode = Node(data);

    newNode.next = head;
    head = newNode;
    if (tail == null) {
      tail = newNode;
    }
  }

  void addend2(int data) {
    Node newNode = Node(data);

    if (tail == null) {
      head = tail = newNode;
      return;
    }
    tail!.next = newNode;
    tail = newNode;
  }

  void addBeforeon(int target, int data) {
    Node newNode = Node(data);
    Node? perv;
    Node? temp = head;
    if (temp!.data == target) {
      newNode.next = head;
      head = newNode;
      return;
    }
    while (temp != null) {
      if (temp.data == target) {
        break;
      }
      perv = temp;
      temp = temp.next;
    }

    newNode.next = temp;
    perv!.next = newNode;
  }

  void addnode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      tail = newNode;
    }
  }

  void addAfternode(int target, int data) {
    Node newNode = Node(data);
    Node? temp = head;
    while (temp != null) {
      if (temp.data == target) {
        break;
      }
      temp = temp.next;
    }
    if (temp == tail) {
      tail!.next = newNode;
      tail = newNode;
      return;
    }
    if (temp == null) {
      return;
    }

    newNode.next = temp;
    temp.next = newNode;
  }
}

void main() {
  slinkedlist list = slinkedlist();

  list.addnode(10);
  list.addnode(20);
  list.addnode(30);
  list.addnode(40);
  list.addnode(50);
  list.addBeforeon(20, 100);
  list.addAfternode(50, 145);
  list.display();
}
