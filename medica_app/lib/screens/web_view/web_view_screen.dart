import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/import_resources.dart';

class WebView extends StatefulWidget {
  WebView({super.key, required this.title, required this.url});

  final String url;
  final String title;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  int loading = 0;

  final WebViewController controller = WebViewController();

  void load() {
    controller
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            print(progress);
            loading = progress;
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  void initState() {
    // TODO: implement initState
    load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: WidgetAppBar(
          title: widget.title,
        ),
        body: WebViewWidget(
          controller: controller,
        )
      /*: Center(
              child: SpinKitWave(
                color: myColorsExtension.onPrimary,
                size: 50.0,
              ),
            ),*/
    );
  }
}
