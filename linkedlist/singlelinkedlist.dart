class Node {
  int? data;
  Node? next;

  Node(int data) {
    this.data = data;
  }
}

class Slinkedlist {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      tail = newNode;
    }
  }

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

  void delect(int data) {
    Node? temp = head;
    Node? prev;
    if (temp != null && temp.data == data) {
      head = temp.next;
      return;
    }
    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (temp == tail) {
      tail = prev;
      tail!.next = null;
      return;
    }
    prev!.next = temp.next;
  }
  void search(int target){
    Node ?temp=head;
    int i=0;
    head??print('emty list');
    while(temp!=null){
      if(temp.data==target){
        print('item found ${i+1}');
      }
      i++;
      temp=temp.next;
    }
  }
void reverse(){
  Node ?currnode=head;
  Node ? nextnode=head;
  Node ?prv;
  while(currnode !=null){
    nextnode=currnode.next;
    currnode.next=prv;
    prv=currnode;
    currnode=nextnode;
  }
  head=prv;
}
  void inserafer(int nextto, int data) {
    Node newNode = Node(data);
    Node? temp = head;
    while (temp != null && temp.data != nextto) {
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (temp == tail) {
      tail!.next = newNode;

      tail = newNode;
      return;
    }
    newNode.next = temp.next;
    temp.next = newNode;
  }

  void addBeg(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void addBefore(int target, int data) {
    Node newNode = Node(data);
    Node? prev;
    Node? temp = head;
    if (temp!.data == target) {
      newNode.next = head;
      head = newNode;
    }
    while (temp != null) {
      if (temp.data == target) {
        break;
      }
      prev = temp;
      temp = temp.next;
    }
    prev?.next = newNode; //newNode is placed between prev and temp
    newNode.next = temp;
  }

  void addAfter(int target, int data) {
    Node newNode = Node(data);
    Node? temp = head;
    while (temp != null) {
      if (temp.data == target) {
        break;
      }
      temp = temp.next;
    }
    if (temp == null) {
      //not found
      return;
    }
    if (temp == tail) {
      tail!.next = newNode;
      tail = newNode;
      return;
    }
    newNode.next = temp.next;
    temp.next = newNode;
  }

  void addEnd(int data) {
    Node newNode = Node(data);
   tail!.next = newNode;
    tail = newNode;
  }

  void addbeg(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void addend(int data) {
    Node newNode = Node(data);
    tail!.next = newNode;
    tail = newNode;
  }
    void deleteMiddle() {
  if (head == null || head!.next == null) {
    print("List has only 0/1 node, Can't find a middle");
    return;
  }

  Node? fast = head;
  Node? slow = head;
  Node? prev = null;
  Node? prevToPrev = null;

  while (fast != null && fast.next != null) {
    fast = fast.next!.next;
    prevToPrev = prev;
    prev = slow;
    slow = slow!.next;
  }

  if (prevToPrev != null) {
    prevToPrev.next = slow!.next;
  } else {
    head = slow!.next;
  }
}

void addmiddle(int data){
  Node newnode=Node(data);
  Node? fast=head;
  Node ?slow=head;
  Node ?  current;
  if(fast==null&& fast!.next==null){
    print('Not add middle node');
  }
  else{
    while(fast!=null&& fast.next!=null){
      fast=fast.next?.next;
      current=slow;
      slow=slow!.next;
    }
    current!.next=newnode;
    newnode.next=slow;
  }
}

}

void main() {
  Slinkedlist list = Slinkedlist();
  
  list.addNode(10);
  list.addNode(20);
  list.addNode(50);

  
  list.inserafer(20, 90);
  
  list.addNode(10);
  list.addBeg(20);
  list.addBefore(20, 80);
  list.addAfter(80, 100);
  list.addEnd(70);
  list.addNode(5);
  list.search(10);
  list.display();
  list.addmiddle(200);
  print('_______');
  list.reverse();
  list.display();


}
