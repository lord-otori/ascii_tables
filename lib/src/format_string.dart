part of ascii_tables;

String str_pad(String str, int length, [String pad=' ', int direction=PAD_RIGHT]){
    if(direction != PAD_RIGHT && direction != PAD_LEFT && direction != PAD_BOTH) {
      throw new WrongArgumentType('direction needs to be one of PAD_RIGHT, PAD_LEFT or PAD_BOTH');
    }
    pad = (pad != null && pad != '') ? pad : ' ';
    if(direction == PAD_RIGHT){
      return str + str_repeat(pad, (length - str.length));
      }else if(direction == PAD_LEFT){
      return str_repeat(pad, (length - str.length)) + str;
      }else{
        int tmplen = length - str.length;
       double parts = tmplen / 2;
      return str_repeat(pad, parts.ceil()) + str + str_repeat(pad, parts.floor());
      }
  }

  String str_repeat(String piece, int multiplier){
    return new List<String>.filled(multiplier, piece).join('');
  }
