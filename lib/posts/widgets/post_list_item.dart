import 'package:bloc02_infinite_list/posts/posts.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class PostListItem extends StatelessWidget {
  const PostListItem({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      color: Colors.blue.shade100,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          leading: SizedBox(
            height: 42,
            width: 42,
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.favorite,
                    size: 42,
                    color:
                        Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                            .withOpacity(0.5),
                  ),
                ),
                Center(
                  child: Text(
                    '${post.id}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          tileColor: Colors.white,
          title: Text(post.title.toUpperCase()),
          isThreeLine: true,
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(post.body, textAlign: TextAlign.justify),
          ),
          dense: true,
          style: ListTileStyle.list,
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.blue, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
/* FROM THE TUTORIAL:

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: ListTile(
        leading: Text('${post.id}', style: textTheme.caption),
        title: Text(post.title),
        isThreeLine: true,
        subtitle: Text(post.body),
        dense: true,
      ),
    );
  }
 */