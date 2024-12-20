class PlaylistSong {
  final String name;
  final String duration;
  bool isLiked;
  final String pathToMusic;
  final String relatedSubCategory;

  PlaylistSong({required this.name, required this.duration, required this.isLiked,
    required this.pathToMusic, required this.relatedSubCategory});
}