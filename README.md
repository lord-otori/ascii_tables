ascii_tables
============

Creates ascii based tables from collections.


###Using the library###
In your pubspec.yaml

    dependencies:
      ascii_tables: any

In your application

```dart
import 'package:ascii_tables/ascii_tables.dart';

List <Map <String, String>> list_map = [{'name':'Juan Sebastian','last name':'Simon'},{'name':'John','last name':'Doe','age': '27'}];

new ascii_tables.fromList(list_map)
  ..displayHeader(true)
  ..printTable();  
```


####Example Result####
```plain
+----------------------------------+
|      name      | last name | age |
+----------------------------------+
| Juan Sebastian |   Simon   | --- |
|      John      |    Doe    |  27 |
+----------------------------------+
```

