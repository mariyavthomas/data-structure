List<int>selectionsort(List<int>a){
 for(int i=0;i<a.length;i++){
  for(int j=i+1;j<a.length;j++){
    if(a[i]>a[j]){
      int temp=a[i];
      a[i]=a[j];
      a[j]=temp;
    }
  }
 }
 return a;
}
void main(){
  List<int>a=[6,99,3,5,333,0,1];
  print(selectionsort(a));
}