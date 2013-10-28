part of ascii_tables;

class TableMeasure implements fromTypes {

  int _padding = 1;
  Map <String, int> _column_sizes;

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

  String fromList(List <Map <String, String>> list) {
    return '';
  }
  String fromSet(Set set) {
    return '';
  }
  String fromIterator(Iterator <String> i) {
    return '';
  }

  void setPadding(int padding){
    this._padding = padding;
  }
  void setColumnSizes(Map <String, int> column_sizes) {
    this._column_sizes = column_sizes;
  }
}