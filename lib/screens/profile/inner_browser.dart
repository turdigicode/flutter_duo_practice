import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';

late InAppWebViewController webViewController;
final WebUri _url = WebUri("https://github.com/turdigicode/flutter_duo_practice");
const _titleText = "GitHub";

class InnerBrowser extends StatelessWidget {
  const InnerBrowser({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_titleText),
        titleTextStyle: AppTextStyles.title,
        backgroundColor: AppColors.primary,
        centerTitle: true,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: _url),
        onWebViewCreated: (controller) {
          webViewController = controller;
        },
      ),
    );
  }
}