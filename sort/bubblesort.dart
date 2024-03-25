List<int>bubble (List<int>a){
  for(int i=0;i<a.length-1;i++){
  for(int j=0;j<a.length-1-i;j++){
    if(a[j]>a[j+1]){
      int temp=a[j];
      a[j]=a[j+1];
      a[j+1]=temp;
    }
  }
  }
  return a;
}

void main(){
  List<int>a=[4,7,8,3,2,0,3];
  print(bubble(a));
}