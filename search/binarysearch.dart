class Binary{
  List<int> arr=[];
  int? target;
  Binary(List<int>arr,int target){
    this.arr=arr;
    this.target=target;

  }
  int search(){
   int left=0;
   int right=arr.length-1;
   while(left<=right){
    int  mid=left+(right-left)~/2;
    if(arr[mid]==target){
      return mid;
    }
    else if(target!< arr[mid]){
      right=mid-1;
    }
    else if(target !> arr[mid]){
      left=mid+1;
    }
   }
   return -1;
  }
}

void main(){
  List<int>arr=[1,2,3,4,5,6,7,8];
  int target=6;
  Binary list=Binary(arr, target);
  print(list.search());
}