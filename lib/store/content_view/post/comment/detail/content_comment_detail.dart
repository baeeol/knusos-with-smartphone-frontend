import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/post/comment/author/content_comment_author.dart';

class ContentCommentDetail extends StatelessWidget {
  final String author;
  final VoidCallback toSimple;
  final String text;
  final TextStyle textStyle;

  const ContentCommentDetail({
    super.key,
    required this.author,
    required this.toSimple,
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContentCommentAuthor(author),
        const SizedBox(height: 4),
        Text(text, style: textStyle),
        _ContentCommentSimplifyText(text: '간단히 보기', onPressed: toSimple),
      ],
    );
  }
}

class _ContentCommentSimplifyText extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const _ContentCommentSimplifyText({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(text, style: TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }
}
