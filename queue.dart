class Node{
  int? data;
  Node ? next;
  Node(int data){
    this.data=data;
  }


}
class queue{
  Node ?front;
  Node ?rear;

  void enqueue(int data){
    Node newnode =Node(data);
    if(front==null){
      front=rear=newnode;
    }
    else{
      rear!.next=newnode;
      rear=newnode;
    }
  }
   
   void dequeue(){
    if(front==null){
      return;
    }else{
      front=front!.next;
      rear=null;
    }
   }
   void dispaly(){
    Node ? temp=front;
    if(temp==null){
      print('emty list');
    }else{
      while(temp!=null){
        print(temp.data);
        temp=temp.next;
      }
    }
   }

   void reverse(String str){
    
    
   }
}

void main(){
  queue b=queue();
  b.enqueue(10);
  b.enqueue(20);
  b.enqueue(30);
  b.enqueue(40);
  b.dispaly();
  print('---------');
  b.dequeue();
  b.dispaly();
}