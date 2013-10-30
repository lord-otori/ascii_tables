part of ascii_tables;

class BodyBuilder implements fromTypes {
  int _padding = 1;
  Map <String, int> _column_sizes;
  FormatString _fs = new FormatString();

  void setPadding(int padding){
    this._padding = padding;
  }
  void setColumnSizes(Map <String, int> column_sizes) {
    this._column_sizes = column_sizes;
  }

  String fromMap(Map <String, Map <String, String>> map){
    try {
    List table_rows = new List();
    map.forEach((k,v){
      StringBuffer row = new StringBuffer('!');
      this._column_sizes.forEach((String column_name, int column_size) {
        if(v.containsKey(column_name)){
          row.write(this._fs.str_pad(v[column_name], column_size + (this._padding * 2), ' ', PAD_BOTH));
            }else{
          row.write(this._fs.str_pad(this._fs.str_repeat('-', column_size), column_size + (this._padding * 2), ' ', PAD_BOTH));
          }
        row.write('!');
      });
      table_rows.add(row.toString());
    });
    return table_rows.join('\n');
    } catch(e, s){
      print(e);
      print(s);
    }
  }

  String fromList(List <Map <String, String>> list) {
    throw new UnimplementedError();
  }
  String fromSet(Set set) {
    throw new UnimplementedError();
  }
  String fromIterator(Iterator <String> i) {
    throw new UnimplementedError();
  }
}