import 'dart:async';

Future<List<int>> multiplyList(List<int> dataList, int pengali) async {
  List<int> result = [];

  for (int data in dataList) {
    result.add(data * pengali);
    await Future.delayed(Duration(milliseconds: 100)); 
  }

  return result; 
}

void main() async {
  List<int> data = [1, 2, 3, 4, 5];
  int pengali = 2;

  List<int> resultList = await multiplyList(data, pengali);

  print(resultList); 
}
