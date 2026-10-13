import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/post/comment/author/content_comment_author.dart';

class ContentCommentSimple extends StatelessWidget {
  final String author;
  final VoidCallback toDetail;
  final String text;
  final TextStyle textStyle;

  const ContentCommentSimple({
    super.key,
    required this.author,
    required this.toDetail,
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 8,
      children: [
        ContentCommentAuthor(author),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final painter = TextPainter(
                text: TextSpan(text: text, style: textStyle),
                maxLines: 1,
                textDirection: TextDirection.ltr,
                textScaler: MediaQuery.textScalerOf(context),
              )..layout(maxWidth: constraints.maxWidth);

              final isOverflow = painter.didExceedMaxLines;

              if (!isOverflow) {
                return Text(text, style: textStyle);
              }

              int end = text.length;

              while (end > 0) {
                final span = TextSpan(
                  style: textStyle,
                  children: [
                    TextSpan(text: text.substring(0, end)),
                    const TextSpan(
                      text: '... 더보기',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                );

                final testPainter = TextPainter(
                  text: span,
                  maxLines: 1,
                  textDirection: TextDirection.ltr,
                  textScaler: MediaQuery.textScalerOf(context),
                )..layout(maxWidth: constraints.maxWidth);

                if (!testPainter.didExceedMaxLines) {
                  break;
                }

                end--;
              }

              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: toDetail,
                child: Text.rich(
                  TextSpan(
                    style: textStyle,
                    children: [
                      TextSpan(text: text.substring(0, end)),
                      const TextSpan(
                        text: '... 더보기',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
