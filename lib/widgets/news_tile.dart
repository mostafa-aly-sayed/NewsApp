import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key ,required this.article});

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(article.Image!,height: 750, width: double.infinity,fit:BoxFit.cover,),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          article.Title,
          maxLines: 2,
            overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          article.Subtitle ?? ' ',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}


// ClipRRect(
//   borderRadius: BorderRadius.circular(6),
//   child: article.Image != null && article.Image!.isNotEmpty
//       ? Image.network(
//           article.Image!,
//           height: 250, // ⚠️ 750 is too big, use a smaller value
//           width: double.infinity,
//           fit: BoxFit.cover,
//           loadingBuilder: (context, child, loadingProgress) {
//             if (loadingProgress == null) return child;
//             return const SizedBox(
//               height: 250,
//               child: Center(child: CircularProgressIndicator()),
//             );
//           },
//           errorBuilder: (context, error, stackTrace) {
//             return const SizedBox(
//               height: 250,
//               child: Center(child: Icon(Icons.broken_image, size: 50)),
//             );
//           },
//         )
//       : const SizedBox(
//           height: 250,
//           child: Center(child: Icon(Icons.image_not_supported, size: 50)),
//         ),
// ),