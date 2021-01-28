import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GithubUserWebPage extends StatefulWidget {
  final String userName;
  GithubUserWebPage(this.userName);

  _GithubUserWebPageState createState() => _GithubUserWebPageState();
}

class _GithubUserWebPageState extends State<GithubUserWebPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.userName + "\'s github page")
      ),
      body: WebView(
        initialUrl: 'https://github.com/${widget.userName}',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}