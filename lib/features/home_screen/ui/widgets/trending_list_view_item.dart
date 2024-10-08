import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/helper/extentions.dart';
import 'package:movie_app/core/routing/routes.dart';
import 'package:movie_app/features/details/data/models/movie_arg.dart';
import 'package:movie_app/features/home_screen/ui/widgets/shimmer_trending_list_view_item.dart';
import 'package:movie_app/features/home_screen/ui/widgets/trending_number.dart';

import '../../data/models/movie_model.dart';

class TrendingListViewItem extends StatelessWidget {
  const TrendingListViewItem(
      {super.key, required this.index, required this.movie});
  final int index;
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        MovieArg movies = MovieArg(movie, null);
        context.pushNamed(Routes.movieDetails, arguments: movies);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
        child: SizedBox(
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://image.tmdb.org/t/p/w500/${movie.posterPath}',
                    height: 280,
                    width: double.infinity,
                    fit: BoxFit.fill,
                    placeholder: (context, url) => ShimmerTrendingListViewItem(
                      index: index,
                    ),
                  ),
                ),
              ),
              TrendingNumber(index: index),
            ],
          ),
        ),
      ),
    );
  }
}
// class ShimmerTrendingListViewItem extends StatelessWidget {
//   const ShimmerTrendingListViewItem({super.key, required this.index});
//   final int index;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
//       child: SizedBox(
//         child: Stack(
//           alignment: Alignment.bottomLeft,
//           children: [
//             Align(
//               alignment: Alignment.topRight,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(15),
//                 child: Shimmer.fromColors(
//                   baseColor: Colors.grey[300]!,
//                   highlightColor: Colors.grey[100]!,
//                   child: Container(
//                     height: 260,
//                     width: double.infinity,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }