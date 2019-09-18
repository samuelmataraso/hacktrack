import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../themes/color_palette.dart';
import '../../themes/spacing/linear_scale.dart';
import '../../themes/text/typography/h/h1.dart';
import '../../themes/text/typography/h/h4.dart';
import '../../widget/content_card.dart';
import '../../widget/secondary_appbar.dart';

class TeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: SecondaryAppBar(
        pageTitle: "Team Fire",
        context: context,
        showHeaderLeft: true,
        hideHeaderRight: true,
        onClickBackButton: () {
          FocusScope.of(context).requestFocus(FocusNode());
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: _bodyWidget(context),
      ),
    );
  }

  Widget _bodyWidget(BuildContext context) {
    List<Map<String, dynamic>> teams = [
      {
        "photo":
            "https://ak2.picdn.net/shutterstock/videos/1014004172/thumb/1.jpg",
        'title': 'Content 1',
        "link": "https://flutter.dev"
      },
      {
        "photo":
            "https://ak2.picdn.net/shutterstock/videos/1014004172/thumb/1.jpg",
        'title': 'Content 2',
        "link": "https://flutter.dev"
      },
      {
        "photo":
            "https://ak2.picdn.net/shutterstock/videos/1014004172/thumb/1.jpg",
        'title': 'Content 3',
        "link": "https://flutter.dev"
      },
      {
        "photo":
            "https://ak2.picdn.net/shutterstock/videos/1014004172/thumb/1.jpg",
        'title': 'Content 4',
        "link": "https://flutter.dev"
      },
      {
        "photo":
            "https://ak2.picdn.net/shutterstock/videos/1014004172/thumb/1.jpg",
        'title': 'Content 5',
        "link": "https://flutter.dev"
      },
    ];

    return SafeArea(
      child: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: space_golden_dream,
                  bottom: space_spring_green,
                ),
                child: H1(
                  text: "IDEATION PHASE",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: space_dodger_blue,
                ),
                child: H4(
                  text: "Choose your team:",
                ),
              ),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                padding: EdgeInsets.all(8.0),
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 5.0,
                children: _buildContentList(teams),
              ),
              Padding(
                padding: EdgeInsets.all(space_geraldine),
                child: Column(
                  children: <Widget>[
                    H4(
                      text: "When you finish your ideation, press the",
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.refresh,
                          color: purple,
                        ),
                        H4(
                          text: "button to move to the next phase.",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildContentList(List<Map<String, dynamic>> teams) {
    return teams.map((data) => _buildContentListItem(data)).toList();
  }

  Widget _buildContentListItem(Map<String, dynamic> data) {
    return Card(
      child: Padding(
        padding: EdgeInsets.only(
          top: space_dodger_blue,
        ),
        child: GestureDetector(
          onTap: () => _launchLink(data["link"]),
          child: ContentCard(
            photo: data["photo"],
            title: data["title"],
          ),
        ),
      ),
    );
  }

  _launchLink(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }
}
