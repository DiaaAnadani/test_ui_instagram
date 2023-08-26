import 'package:flutter/material.dart';
import 'package:untitled/utils/text_utils.dart';
import 'package:untitled/widgets/post_view_widget.dart';
import 'package:untitled/widgets/story_view_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextUtils _textUtils = TextUtils();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Row(
              children: [
                for (int i = 0; i < 20; i++)
                  Container(
                    width: 70,
                    margin: const EdgeInsets.only(right: 15),
                    child: Column(
                      children: [
                        const StoryViewWidget(),
                        const SizedBox(
                          height: 10,
                        ),
                        _textUtils.normal11("Diaa Abd", Colors.white),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
           for (int i = 0; i < 20; i++)
           const PostViewWidget()
          
        ],
      ),
    );
  }
}
