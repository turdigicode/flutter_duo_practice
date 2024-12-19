import '../../../constants/app_images_paths.dart';
import '../models/sub_category.dart';
import 'main_category.mocks.dart';

final List<SubCategory> subCategories = [
  SubCategory(name: "Nature sounds", mainCategory: mainCategoriesMap["Relaxation"]!,
      description: "Description for Nature sounds", pathToImage: AppImagesPaths.backgroundNatureSounds),

  SubCategory(name: "Deep breathing", mainCategory: mainCategoriesMap["Relaxation"]!,
      description: "Description for Deep Breathing", pathToImage: AppImagesPaths.backgroundDeepBreathing),

  SubCategory(name: "Calm music", mainCategory: mainCategoriesMap["Relaxation"]!,
      description: "Description for Calm music", pathToImage: AppImagesPaths.backgroundCalmMusic),

  SubCategory(name: "Lo-Fi", mainCategory: mainCategoriesMap["Focus"]!,
      description: "Description for Lo-Fi", pathToImage: AppImagesPaths.backgroundLoFi),

  SubCategory(name: "Mindfulness", mainCategory: mainCategoriesMap["Focus"]!,
      description: "Description for Mindfulness", pathToImage: AppImagesPaths.backgroundMindfulness),

  SubCategory(name: "White noise", mainCategory: mainCategoriesMap["Sleep"]!,
      description: "Description for White Noise", pathToImage: AppImagesPaths.backgroundWhiteNoise),

  SubCategory(name: "ASMR", mainCategory: mainCategoriesMap["Sleep"]!,
      description: "Description for ASMR", pathToImage: AppImagesPaths.backgroundASMR),
];

final Map<String, SubCategory> subCategoriesMap = {
  for(var category in subCategories)
    category.name : category
};