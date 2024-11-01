

void main() {
  //ENUM
  var musicTypes = MusicTypes.HipHop;
  

  if(musicTypes == MusicTypes.Rock) {
    print("Music: The Unforgiven");
    print("Music Group: Metallica");
    print("Music Type: Rock");
  }
  else if(musicTypes == MusicTypes.PopMusic) {
    print("Music: Aşkın Olayım");
    print("Artist: Simge");
    print("Music Type: Pop Music");
  }else if(musicTypes == MusicTypes.Jazz) {
    print("Music: Summertime");
    print("Artist: Ella Fitzgerald & Louis Armstrong");
    print("Music Type: Jazz");
  }else if(musicTypes == MusicTypes.HipHop) {
    print("Music: The Real Slim Shady");
    print("Artist: Eminem");
    print("Music Type: Hip Hop");
  }else {
    print('Unknown type');
  }
}

enum MusicTypes {
  Jazz,
  Rock,
  HipHop,
  PopMusic,
}