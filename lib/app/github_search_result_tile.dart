import 'package:flutter/material.dart';
import 'package:github_search_api_rxdart/github_user_web.dart';
import 'package:github_search_api_rxdart/models/github_user.dart';

class GitHubUserSearchResultTile extends StatelessWidget {
  const GitHubUserSearchResultTile(
      {@required this.user});

  final GitHubUser user;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => GithubUserWebPage(user.login)));
      },
      child: Column(
        children: [
          ClipPath(
            clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            child: Container(
              child: Image.network(
                user.avatarUrl,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            user.login,
            style: theme.textTheme.headline6,
            textAlign: TextAlign.start,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}