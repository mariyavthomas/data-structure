class A{
  int search( arr, int target){
   for(int i=0;i<arr.length;i++){
    if(arr[i]==target){
       return i;
    }
   }
   return -1;
  }
}
void main(){
  List<int>arr=[1,2,3,4,5,6,7,8,9,10,43];
  int target=10;
  A list=A();
  print(list.search(arr, target));
}