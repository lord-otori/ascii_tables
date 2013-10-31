part of ascii_tables;

class TableMeasure {

  int padding = 1;
  Map <String, int> column_sizes;

  Map <String, int> fromMap(Map <String, Map <String, String>> map){
    Set header = new Set();
    map.forEach((k,Map <String, String>v) {
      v.forEach((key,value){
      header.add(key);
    });});

    Map <String, int> column_sizes = new Map();
    header.forEach((v){
      column_sizes[v] = v.toString().length;
    });

    map.forEach((k,Map <String, String>val) {
        val.forEach((key,value){
          if(column_sizes[key] < value.toString().length)
            column_sizes[key] = value.toString().length;
        });
    });
    return column_sizes;
  }
}