import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ExampleWidgetModel {
  ExampleWidgetModel() {
    Hive.initFlutter();
  }
  void doSome() async {
    var box = await Hive.openBox<dynamic>('testBox');
    await box.put('name', 'Raha');
    await box.put('age',34);
    final name = box.get('name') as String?;
    final age= box.get('age') as int?;
    print(name);
    print(age);
    box.close();
  }
}