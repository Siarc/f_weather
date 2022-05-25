void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Data = await task2();
  task3(task2Data);
}

void task1() {
  String result = 'task1 data';
  print('task1: Completed');
}

Future<String> task2() async {
  Duration threeSeconds = const Duration(seconds: 3);
  String result = 'task2 null';
  await Future.delayed(threeSeconds, () {
    result = 'task2 data';
    print('task2: Completed');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'task3 data';
  print('task3: $task2Data');
}
