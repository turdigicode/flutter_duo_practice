import '../../../constants/app_music_paths.dart';
import '../../home/mocks/sub_category.mocks.dart';
import '../models/music.dart';

final List<Music> music = [
  Music(name: "Music_name1", duration: "2.30", isLiked: false, pathToMusic: AppMusicPaths.testMusic1,
      relatedSubCategory: subCategoriesMap["Nature sounds"]!.name),

  Music(name: "Music_name2", duration: "4.47", isLiked: true, pathToMusic: AppMusicPaths.testMusic2,
      relatedSubCategory: subCategoriesMap["Nature sounds"]!.name),

  Music(name: "Music_name3", duration: "1.31", isLiked: false, pathToMusic: AppMusicPaths.testMusic3,
      relatedSubCategory: subCategoriesMap["Calm music"]!.name),

  Music(name: "Music_name4", duration: "10.28", isLiked: false, pathToMusic: AppMusicPaths.testMusic4,
      relatedSubCategory: subCategoriesMap["White noise"]!.name),

  Music(name: "Music_name5", duration: "6.23", isLiked: true, pathToMusic: AppMusicPaths.testMusic5,
      relatedSubCategory: subCategoriesMap["Deep breathing"]!.name),

  Music(name: "Music_name6", duration: "8.11", isLiked: false, pathToMusic: AppMusicPaths.testMusic6,
      relatedSubCategory: subCategoriesMap["Nature sounds"]!.name),
];