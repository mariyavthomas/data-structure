class Reversed{
   String revrese( String str){
    List<String>charlist=str.split('');
   int left=0;
   int right=charlist.length-1;
   while(left<right){
  String temp=charlist[left];
  charlist[left]=charlist[right];
  charlist[right]=temp;

    left++;
    right--;
    
   }
   return charlist.join();
  }
}
void main(){
  Reversed res=Reversed();
  String str='mariya';
   print(res.revrese( str));
}