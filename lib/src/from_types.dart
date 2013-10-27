part of ascii_tables;

class fromTypes {
  int _padding = 1;
  Map <String, int> _column_sizes;
  void setPadding(int padding){
    this._padding = padding;
  }
  void setColumnSizes(Map <String, int> column_sizes) {
    this._column_sizes = column_sizes;
  }
  fromMap(Map <String, Map <String, String>> map){
    return '';
  }
  
  fromList(List <Map <String, String>> list) {
    return '';
  }
  fromSet(Set set) {
    return '';
  }
  fromIterator(Iterator <String> i) {
    return '';
  }
}