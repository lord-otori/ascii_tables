import 'package:ascii_tables/ascii_tables.dart';

main() {
  List <Map <String, String>> list_map = [{'name':'Juan Sebastian','last name':'Simon'},{'name':'John','last name':'Doe','age': '27'}];
  var map = {'one':{'name':'Juan Sebastian','last_name':'Simon', 'age': '27'},'two':{'name':'Pedro','last_name':'Simon'}};
  var list = [{'ascii' : 'tables'}];
  new AsciiTables.fromMap(map)
    ..displayHeader(true)
    ..printTable();
  
  AsciiTables at = new AsciiTables.fromMap(map)
    ..displayHeader(true);
    print(at.returnTable());
    
    
  new AsciiTables.fromList(list)
    ..displayHeader(true)
    ..printTable();
  
  new AsciiTables.fromList(list_map)
    ..displayHeader(true)
    ..printTable();
}