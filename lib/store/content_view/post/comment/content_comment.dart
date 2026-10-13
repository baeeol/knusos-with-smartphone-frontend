import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/constants/app_layout.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/post/comment/detail/content_comment_detail.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/post/comment/simple/content_comment_simple.dart';

class ContentComment extends StatefulWidget {
  final String author;
  final String text;

  const ContentComment({super.key, required this.author, required this.text});

  @override
  State<ContentComment> createState() => _ContentCommentState();
}

class _ContentCommentState extends State<ContentComment> {
  bool _expanded = false;

  static const _textStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.horizontalPadding),
      child: _expanded
          ? ContentCommentDetail(
              author: widget.author,
              toSimple: () => setState(() => _expanded = false),
              text: widget.text,
              textStyle: _textStyle,
            )
          : ContentCommentSimple(
              author: widget.author,
              toDetail: () => setState(() => _expanded = true),
              text: widget.text,
              textStyle: _textStyle,
            ),
    );
  }
}
