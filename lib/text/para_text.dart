import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quranapp/main.dart';
import 'package:quranapp/para/para_list.dart';

import '../resume.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class ParaText extends StatefulWidget {
  final paraIndex;
  final resumeNum;

  const ParaText({Key key, this.paraIndex, this.resumeNum}) : super(key: key);
  @override
  _ParaTextState createState() => _ParaTextState();
}

class _ParaTextState extends State<ParaText> {
  // ParaListPage resumeName =   ParaListPage(resumeNum: resumeName);

  String imageUrl = "images/quran_pages/";
  var numberOfPages = 28;
  number_of_Pages() {
    if (widget.paraIndex == (20)) {
      numberOfPages = 26;
    } else if (widget.paraIndex == (22)) {
      numberOfPages = 26;
    } else if (widget.paraIndex == (24)) {
      numberOfPages = 26;
    } else if (widget.paraIndex == (29)) {
      numberOfPages = 32;
    } else if (widget.paraIndex == (25)) {
      numberOfPages = 30;
    } else if (widget.paraIndex == (26)) {
      numberOfPages = 30;
    } else if (widget.paraIndex == (27)) {
      numberOfPages = 30;
    } else if (widget.paraIndex == (28)) {
      numberOfPages = 30;
    } else if (widget.paraIndex == (30)) {
      numberOfPages = 30;
    }
  }

  // imagePageNumber() {
  //   var imagePageLoad = imageUrl + "p${widget.paraIndex}" + "_side${2}.png";
  //   print(imagePageLoad);
  // }

  @override
  void initState() {
    super.initState();
    setState(() {
      number_of_Pages();
      // imagePageNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Container(
          margin: EdgeInsets.fromLTRB(12.0, 15.0, 12.0, 10.0),
          // color: Colors.red,
          child: PageView.builder(
              onPageChanged: (pageNum) {
                setState(() {
                  ParaListPage(
                    resumeNum:  (imageUrl + 'p${1}' + '_side${1}.png').toString(),
                  );
                });
                // ParaListPage(resumeNum:imageUrl+'p${widget.paraIndex}'+'_side${pageNum+1}.png' ,);
                // ParaListPage(
                //   resumeNum: imageUrl + 'p${1}' + '_side${1}.png',
                // );
                // print(imageUrl +
                //     'p${widget.paraIndex}' +
                //     '_side${pageNum + 1}.png');
                // resumeName.resumeNum = imageUrl+'p${widget.paraIndex}'+'_side${pageNum+1}.png';
              },
              reverse: true,
              itemCount: numberOfPages,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(imageUrl +
                        'p${widget.paraIndex}' +
                        '_side${index + 1}.png'),
                    fit: BoxFit.fill,
                  )),
                );
              }),
        ),
      ),
    );
  }
}
