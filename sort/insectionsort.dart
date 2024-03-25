List<int>insectionsort(List<int>a){
 for(int i=1;i<a.length;i++) {
  int temp=a[i];
  int j=i-1;
  while(j>=0 && a[j]>temp){
    a[j+1]=a[j];
    j--;
  }
  a[j+1]=temp;
 }
 return a;
}
void main(){
  List<int>a=[7,8,3,5,2,54];
  print(insectionsort(a));
}