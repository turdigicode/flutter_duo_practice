import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_text_styles.dart';
import 'package:flutter_duo_practice/screens/sub_category_details/mocks/PlaylistSong.mocks.dart';
import 'package:flutter_duo_practice/screens/sub_category_details/models/PlaylistSong.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_routes.dart';
import '../home/models/sub_category.dart';

class SubCategoryDetails extends StatelessWidget {
  const SubCategoryDetails({super.key, required this.subCategory});

  final SubCategory subCategory;

  List<PlaylistSong> filterMusic() => playlistSongs
      .where((song) => song.relatedSubCategory == subCategory.name)
      .toList();

  @override
  Widget build(BuildContext context) {
    final filteredMusic = filterMusic();

    return Scaffold(
      appBar: AppBar(
        title: Text(subCategory.name),
        backgroundColor: AppColors.background,
      ),
      body: Column(
        children: [
          // Stack(
          //   alignment: Alignment.center,
          //   children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child:
                    Image.network(subCategory.pathToImage, fit: BoxFit.cover),
              ),
            ),
          ),

          // Container(
          //   alignment: Alignment.center,
          //   child: Text(
          //     subCategory.name,
          //     style: AppTextStyles.title,
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          //   ],
          // ),
          const SizedBox(height: 20),
          Expanded(
            child: MusicListView(filteredMusic: filteredMusic),
          )
        ],
      ),
    );
  }
}

class MusicListView extends StatefulWidget {
  final List<PlaylistSong> filteredMusic;

  const MusicListView({super.key, required this.filteredMusic});

  @override
  State<MusicListView> createState() => _MusicListViewState();
}

class _MusicListViewState extends State<MusicListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.filteredMusic.length,
      itemBuilder: (context, index) {
        IconData icon;
        icon = widget.filteredMusic[index].isLiked
            ? Icons.favorite
            : Icons.favorite_border;

        final song = widget.filteredMusic[index];

        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.player);
          },
          child: Card(
            color: AppColors.primary,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.play_circle, size: 40),
                    color: AppColors.secondary,
                    onPressed: () {
                      //TODO зробити динамічне оновлення при натисканні на кнопку play
                    },
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song.name,
                          style: AppTextStyles.title,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          song.duration,
                          style: AppTextStyles.body,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      icon,
                      size: 30,
                    ),
                    color: AppColors.secondary,
                    onPressed: () {
                      setState(() {
                        widget.filteredMusic[index].isLiked =
                            !widget.filteredMusic[index].isLiked;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
