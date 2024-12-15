import 'dart:io';

void main(){
  List<String> names = ['Kunj', 'Nidhi','Palak'];
  List<int> height = [163,160,165];

  //mapEntry ne list layne combine karya a ne value pan devi pade, so for loop
  List<MapEntry<String,int>> pairs = [];
  for(int i = 0 ; i<names.length; i++){
    pairs.add(MapEntry(names[i], height[i]));
  }
  //value here is height
  pairs.sort((a,b) => b.value.compareTo(a.value));

  List<String> sortedNames = pairs.map((pair) => pair.key).toList();

  //List<String> sortedNames = [for (int i in pairs) names[i]];

  print(sortedNames);
}