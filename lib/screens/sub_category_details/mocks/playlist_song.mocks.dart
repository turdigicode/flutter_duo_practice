import '../../../constants/app_music_paths.dart';
import '../../home/mocks/sub_category.mocks.dart';
import '../models/playlist_song.dart';

final List<PlaylistSong> playlistSongs = [
  PlaylistSong(name: "Music_name1", duration: "2.30", isLiked: false, pathToMusic: AppMusicPaths.calmSoul,
      relatedSubCategory: subCategoriesMap["Nature sounds"]!.name),

  PlaylistSong(name: "Music_name2", duration: "4.47", isLiked: true, pathToMusic: AppMusicPaths.blue,
      relatedSubCategory: subCategoriesMap["Nature sounds"]!.name),

  PlaylistSong(name: "Music_name3", duration: "1.31", isLiked: false, pathToMusic: AppMusicPaths.meditMusic,
      relatedSubCategory: subCategoriesMap["Calm music"]!.name),

  PlaylistSong(name: "Music_name4", duration: "10.28", isLiked: false, pathToMusic: AppMusicPaths.relaxing,
      relatedSubCategory: subCategoriesMap["White noise"]!.name),

  PlaylistSong(name: "Music_name5", duration: "6.23", isLiked: true, pathToMusic: AppMusicPaths.serenityWavesZen,
      relatedSubCategory: subCategoriesMap["Deep breathing"]!.name),

  PlaylistSong(name: "Music_name6", duration: "8.11", isLiked: false, pathToMusic: AppMusicPaths.zenSpiritualYogaMassage,
      relatedSubCategory: subCategoriesMap["Nature sounds"]!.name),
];