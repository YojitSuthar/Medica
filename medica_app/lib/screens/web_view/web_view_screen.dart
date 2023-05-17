import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/import_resources.dart';

import '../../provider/provider.dart';

class WebView extends StatefulWidget {
  WebView({super.key, required this.title, required this.url});

  final String url;
  final String title;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  bool loading = false;

  final WebViewController controller = WebViewController();


  void load() {
    final button = Provider.of<WebViewLoading>(context, listen: false);
    controller
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            if (progress == 100) {
              loading=button.change(loading);
            }
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: WidgetAppBar(
          title: widget.title,
        ),
        body: Consumer<WebViewLoading>(
          builder: (context, value, child) {
            return loading
                ? WebViewWidget(
                    controller: controller,
                  )
                : Center(
                    child: SpinKitWave(
                      color: myColorsExtension.onPrimary,
                      size: 50.0,
                    ),
                  );
          },
        ));
  }
}
