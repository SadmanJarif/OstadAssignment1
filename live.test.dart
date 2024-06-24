void main() {
  // Creating an instance of Media
  Media media = Media();
  media.play();  // Output: Playing media...

  // Creating an instance of Song
  Song song = Song('Taylor Swift');
  song.play();  // Output: Playing song by Taylor Swift...
}

class Media {
  void play() {
    print('Playing media...');
  }
}

class Song extends Media {
  String artist;

  Song(this.artist);

  @override
  void play() {
    print('Playing song by $artist...');
  }
}
