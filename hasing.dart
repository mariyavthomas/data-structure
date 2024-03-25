import 'dart:collection';


void main(List<String> args) {
  // HashMap<String, String> hash = HashMap();
  // var map = {"hellow": "hai", "has": "hai"};
  // hash.addEntries(map.entries);
  // hash.putIfAbsent("a", () => "mariya");
  // hash.putIfAbsent("b", () => "mariya");
  // hash.putIfAbsent("c", () => "mariya");


  // hash.forEach((key, value) {
  //   print("$key" + ":" + "$value");
  // });
  HashMap<String ,String>hash1=HashMap();
// ignore: unused_local_variable
var map={'one':'mariya','two':'riya'};
hash1.addEntries(hash1.entries);
hash1.putIfAbsent('a', () => 'jddj');
hash1.putIfAbsent('b', () => 'ss');

hash1.forEach((key, value) {
  print("$key"+":"+"$value");
});
}




