import 'dart:developer';

import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';

class StoryViewWidget extends StatefulWidget {
  const StoryViewWidget({super.key});

  @override
  State<StoryViewWidget> createState() => _StoryViewWidgetState();
}

class _StoryViewWidgetState extends State<StoryViewWidget> with TickerProviderStateMixin {
  late Animation gap;
  late Animation<double> base;
  late Animation<double> reverse;
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    base = CurvedAnimation(parent: controller, curve: Curves.easeOut);
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);
    gap = Tween<double>(begin: 0.0, end: 3.0).animate(base)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
         controller.forward().whenComplete((){
          log("animation completed");
        });
      },
      child: Container(
          margin: const EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          child: RotationTransition(
            turns: base,
            child: DashedCircle(
              gapSize: gap.value,
              dashes: 40,
              color: const Color(0XFFED4634),
              child: RotationTransition(
                turns: reverse,
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        "https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.webp?b=1&s=170667a&w=0&k=20&c=YQ_j83pg9fB-HWOd1Qur3_kBmG_ot_hZty8pvoFkr6A="
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }
}
