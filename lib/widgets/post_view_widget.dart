import 'package:flutter/material.dart';

import '../utils/text_utils.dart';

class PostViewWidget extends StatefulWidget {
  const PostViewWidget({super.key});

  @override
  State<PostViewWidget> createState() => _PostViewWidgetState();
}

class _PostViewWidgetState extends State<PostViewWidget> {
    final TextUtils _textUtils = TextUtils();
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(children: [Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(children: [ const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                "https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.webp?b=1&s=170667a&w=0&k=20&c=YQ_j83pg9fB-HWOd1Qur3_kBmG_ot_hZty8pvoFkr6A="),
          ),
          SizedBox(width: 10,),
            _textUtils.bold16("Diaa Abd", Colors.white)
            ],),

            const Icon(Icons.more_vert_rounded,color: Colors.white,size: 30,),
        ],),
      ),
         Image.asset("assets/images/ground_green.jpg",height: 300,fit: BoxFit.fill,),

          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Row(  children: [
                      Image.asset("assets/icons/like.png",color: Colors.white,width: 25,height: 25,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: Image.asset("assets/icons/comment.png",color: Colors.white,width: 25,height: 25,),
                      ),
                      Image.asset("assets/icons/share.png",color: Colors.white,width: 25,height: 25,),
                    ],),
                       Image.asset("assets/icons/save.png",color: Colors.white,width: 25,height: 25,),
                    ],),
          ),
                     Container(
            margin: const EdgeInsets.only(left: 10,right: 10,top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _textUtils.bold14("5,129 views", Colors.white),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    _textUtils.bold14("Diaa Abd", Colors.white),
                    const SizedBox(width: 5,),
                    _textUtils.normal14("Hi, this is my first post", Colors.white)
                  ],
                ),

                const SizedBox(height: 5,),
                _textUtils.normal14("View all 152 comments", Colors.grey),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    _textUtils.normal11("19 minutes ago", Colors.grey),
                    const SizedBox(width: 5,),
                    _textUtils.normal11("See Translation", Colors.white),
                  ],
                )
              ],
            ),
          ),
      ],),
    );
  }
}