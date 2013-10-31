part of ascii_tables;

class BodyBuilder {
  int padding;
  Map <String, int> column_sizes;

  BodyBuilder(int padd, Map <String, int> col_sizes) {
    this.padding = padd;
    this.column_sizes = col_sizes;
  }

  String fromMap(Map <String, Map <String, String>> map){
    try {
    List table_rows = new List();
    map.forEach((k,v){
      StringBuffer row = new StringBuffer('|');
      this.column_sizes.forEach((String column_name, int column_size) {
        if(v.containsKey(column_name)){
          row.write(str_pad(v[column_name], column_size + (this.padding * 2), ' ', PAD_BOTH));
            }else{
          row.write(str_pad(str_repeat('-', column_size), column_size + (this.padding * 2), ' ', PAD_BOTH));
          }
        row.write('|');
      });
      table_rows.add(row.toString());
    });
    return table_rows.join('\n');
    } catch(e, s){
      print(e);
      print(s);
    }
  }
}