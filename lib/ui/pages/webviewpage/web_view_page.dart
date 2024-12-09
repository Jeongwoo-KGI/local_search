
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //back button
        automaticallyImplyLeading: true,
        //title could exist as a personal add on feature
      ),
      body: GestureDetector(
        child: InAppWebView(
          initialUrlRequest: URLRequest(
            url: WebUri(""),
          ),
          initialSettings: InAppWebViewSettings(
            mediaPlaybackRequiresUserGesture: true,
            javaScriptEnabled: true, //mandatory
            userAgent: 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', //RestAPI header
          ),
          onWebViewCreated: (controller){
            print('onWebViewCreated');
          },
          onLoadStart: (controller, url){
            print('onLoadStart');
          },
          onLoadStop: (controller, url){
            print('onLoadStop');
          },
          onPermissionRequest: (controller, request) async {
            print('onPermissionRequest');
            return null;
          },
        ),
      ),
    );
  }
}