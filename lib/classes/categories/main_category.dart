class MainCategory{
  final String name;
  MainCategory({required this.name});

  static final List<MainCategory> mainCategories = [
    MainCategory(name: "All"),
    MainCategory(name: "Relaxation"),
    MainCategory(name: "Focus"),
    MainCategory(name: "Sleep")
  ];

  static final Map<String, MainCategory> mainCategoriesMap = {
    for(var category in MainCategory.mainCategories)
      category.name : category
    };
}