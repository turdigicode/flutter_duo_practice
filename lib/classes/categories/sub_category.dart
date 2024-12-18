import '../../constants/app_images_paths.dart';
import 'main_category.dart';

class SubCategory{
  final String name;
  final MainCategory mainCategory;
  final String description;
  final String pathToImage;

  SubCategory({required this.name, required this.mainCategory, required this.description, required this.pathToImage});

  static final List<SubCategory> subCategories = [
    SubCategory(name: "Nature sounds", mainCategory: MainCategory.mainCategoriesMap["Relaxation"]!,
                description: "Description for Nature sounds", pathToImage: AppImagesPaths.backgroundNatureSounds),
    SubCategory(name: "Deep Breathing", mainCategory: MainCategory.mainCategoriesMap["Relaxation"]!,
                description: "Description for Deep Breathing", pathToImage: AppImagesPaths.backgroundDeepBreathing),
    SubCategory(name: "Calm music", mainCategory: MainCategory.mainCategoriesMap["Relaxation"]!,
                description: "Description for Calm music", pathToImage: AppImagesPaths.backgroundCalmMusic),
    SubCategory(name: "Lo-Fi", mainCategory: MainCategory.mainCategoriesMap["Focus"]!,
                description: "Description for Lo-Fi", pathToImage: AppImagesPaths.backgroundLoFi),
    SubCategory(name: "Mindfulness", mainCategory: MainCategory.mainCategoriesMap["Focus"]!,
                description: "Description for Mindfulness", pathToImage: AppImagesPaths.backgroundMindfulness),
    SubCategory(name: "White Noise", mainCategory: MainCategory.mainCategoriesMap["Sleep"]!,
                description: "Description for White Noise", pathToImage: AppImagesPaths.backgroundWhiteNoise),
    SubCategory(name: "ASMR", mainCategory: MainCategory.mainCategoriesMap["Sleep"]!,
                description: "Description for ASMR", pathToImage: AppImagesPaths.backgroundASMR),
  ];
}