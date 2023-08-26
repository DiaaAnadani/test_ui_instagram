import 'package:flutter/material.dart';
import 'package:untitled/model/suggested_post_model.dart';
import 'package:untitled/utils/text_utils.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextUtils textUtils = TextUtils();
  List<SuggestedPostModel> listSuggested = [];
  @override
  void initState() {
    super.initState();
    addData();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        searchBarWidget(),
        const SizedBox(
          height: 10,
        ),
        suggestedPostWidget(),
      ]),
    );
  }

  void addData() {
    listSuggested.add(SuggestedPostModel(
        false,
        "https://assets.vogue.com/photos/5e738f594fc08a00086af5ee/master/pass/GettyImages-1206321276.jpg",
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/celebrities-cancer-1568667554.jpg?crop=0.490xw:0.981xh;0.502xw,0.00321xh&resize=640:*",
        "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2020%2F03%2F13%2Fdwayne-johnson.jpg&q=85"));

    listSuggested.add(SuggestedPostModel(
        true,
        "https://assets.vogue.com/photos/5e738f594fc08a00086af5ee/master/pass/GettyImages-1206321276.jpg",
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/celebrities-cancer-1568667554.jpg?crop=0.490xw:0.981xh;0.502xw,0.00321xh&resize=640:*",
        "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2020%2F03%2F13%2Fdwayne-johnson.jpg&q=85"));

    listSuggested.add(SuggestedPostModel(
        false,
        "https://assets.vogue.com/photos/5e738f594fc08a00086af5ee/master/pass/GettyImages-1206321276.jpg",
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/celebrities-cancer-1568667554.jpg?crop=0.490xw:0.981xh;0.502xw,0.00321xh&resize=640:*",
        "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2020%2F03%2F13%2Fdwayne-johnson.jpg&q=85"));

    listSuggested.add(SuggestedPostModel(
        true,
        "https://assets.vogue.com/photos/5e738f594fc08a00086af5ee/master/pass/GettyImages-1206321276.jpg",
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/celebrities-cancer-1568667554.jpg?crop=0.490xw:0.981xh;0.502xw,0.00321xh&resize=640:*",
        "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2020%2F03%2F13%2Fdwayne-johnson.jpg&q=85"));
  }

  Widget searchBarWidget() {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          color: const Color(0xFF262626),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: Icon(
              Icons.search_off_rounded,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 6,
            child: textUtils.normal16("Search", const Color(0xFF3E3E3E)),
          ),
        ],
      ),
    );
  }

  Widget suggestedPostWidget() {
    return Column(
      children: [
        for (int i = 0; i < listSuggested.length; i++)
          if (listSuggested[i].containsVideo)
            showWithVideoWidget(i)
          else
            showWithOutVideoWidget(i),
      ],
    );
  }

  Widget showWithVideoWidget(int index) {
    return Container();
  }

  Widget showWithOutVideoWidget(int index) {
      return Container();
  }
}
