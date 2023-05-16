import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatefulWidget {
  const WebView({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late final WebViewController _webViewController;

  @override
  void initState() {
    _webViewController = WebViewController()
      ..loadRequest(Uri.parse(widget.url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(
          controller: _webViewController,
        ),
      ),
    );
  }
}
