import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_routes.dart';
import 'package:flutter_duo_practice/screens/home/models/sub_category.dart';
import 'package:flutter_duo_practice/constants/app_colors.dart';

import 'mocks/main_category.mocks.dart';
import 'mocks/sub_category.mocks.dart';
import 'models/main_category.dart';
import '../../constants/app_text_styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _selectedCategory = "All";

  @override
  Widget build(BuildContext context) {

    final filteredSubCategories = _selectedCategory == "All"
    ? subCategories
    : subCategories.where((subCategory) => subCategory.mainCategory.name == _selectedCategory).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
        backgroundColor: AppColors.background,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.network("https://avatars.githubusercontent.com/u/120330210?v=4"),
        ),
      ),
      backgroundColor: AppColors.background,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MainCategoriesChips(
              selectedCategory: _selectedCategory,
              mainCategories: mainCategories,
              onCategorySelected: (category) =>
                setState(() {
                  _selectedCategory = category;
                })
              ),

          Expanded(
            child: SubCategoriesGridView(filteredSubCategories: filteredSubCategories)
          )
        ],
      )
    );
  }
}

class MainCategoriesChips extends StatelessWidget{
  final List<MainCategory> mainCategories;
  final String selectedCategory;
  final ValueChanged<String> onCategorySelected;

  const MainCategoriesChips({super.key, required this.selectedCategory, required this.mainCategories, required this.onCategorySelected});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: mainCategories.map((mainCategory) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: ChoiceChip(
              label: Text(mainCategory.name),
              labelStyle: AppTextStyles.title,
              showCheckmark: false,
              backgroundColor: AppColors.primary,
              selectedColor: AppColors.secondary,
              selected: selectedCategory == mainCategory.name,
              onSelected: (bool selected){
                onCategorySelected(mainCategory.name);
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}

class SubCategoriesGridView extends StatelessWidget{
  final List<SubCategory> filteredSubCategories;

  const SubCategoriesGridView({super.key, required this.filteredSubCategories});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (MediaQuery.of(context).size.width / 250).floor(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 300
        ),
        itemCount: filteredSubCategories.length,
        scrollDirection: Axis.vertical,

        itemBuilder: (context, index){
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.subCategoryDetails, arguments: filteredSubCategories[index]);
            },
            child: Card(
              elevation: 6,
              color: AppColors.primary,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          flex: 3,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                            child: Image.asset(
                              filteredSubCategories[index].pathToImage,
                              fit: BoxFit.cover,
                            ),
                          )

                      ),
                      const SizedBox(height: 20),

                      Flexible(
                          flex: 1,
                          child: Text(
                            filteredSubCategories[index].name,
                            style: AppTextStyles.title,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.fade,
                            softWrap: true,
                          )
                      ),
                      const SizedBox(height: 20),

                      Flexible(
                          flex: 2,
                          child: Text(
                            filteredSubCategories[index].description,
                            style: AppTextStyles.body,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.fade,
                            softWrap: true,
                          )
                      ),
                    ]
                ),
              ),
            ),
          );
        }
    );
  }
}