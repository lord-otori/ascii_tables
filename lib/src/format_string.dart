part of ascii_tables;

class FormatString {
  
  
  
  
  String str_pad(String str, int length, [String pad=' ', int direction=PAD_RIGHT]){    
    if(direction != PAD_RIGHT && direction != PAD_LEFT && direction != PAD_BOTH) {
      throw new WrongArgumentType('direction needs to be one of PAD_RIGHT, PAD_LEFT or PAD_BOTH'); 
    }
    pad = (pad != null && pad != '') ? pad : ' ';
    if(direction == PAD_RIGHT){
      return str + this.str_repeat(pad, (length - str.length));
      }else if(direction == PAD_LEFT){
      return this.str_repeat(pad, (length - str.length)) + str;
      }else{
        int tmplen = length - str.length;
       double parts = tmplen / 2;
      return this.str_repeat(pad, parts.ceil()) + str + this.str_repeat(pad, parts.floor());
      }
  }
  
  String str_repeat(String piece, int multiplier){
    return new List<String>.filled(multiplier, piece).join('');
  }
}