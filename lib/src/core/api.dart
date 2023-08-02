import 'dart:convert';
import 'dart:developer';
import 'package:easyshop_app/src/commons/providers/common_providers.dart';
import 'package:easyshop_app/src/res/strings.dart';
import 'package:easyshop_app/src/utils/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart';

import 'core.dart';

final apiProvider = StateProvider((ref) {
  final authToken = ref.watch(authTokenProvider);
  return API(authToken: authToken);
});

class API {
  final String? _authToken;
  bool useMockServer; // Add a flag for using the mock server

  API({required String? authToken, this.useMockServer = false})
      : _authToken = authToken;
//https://68920981-c885-47c6-b61b-5ffea2cf5268.mock.pstmn.io
//
  String getBaseUrl() {
    return useMockServer
        ? ''
        : 'https://dummyjson.com/products/'; // Replace this with your real server URL
  }

  FutureEither<Response> getRequest(
      {required String url, bool requireAuth = true}) async {
    final Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Authorization": "token=$_authToken"
    };

    if (useMockServer) {
      // Modify the URL for the mock server
      url = '${getBaseUrl()}$url';
    } else {
      url =
          'YOUR_REAL_SERVER_URL$url'; // Replace this with your real server URL
    }

    if (requireAuth) {
      if ((_authToken ?? '').isEmpty) {
        return Left(Failure(message: FailureMessage.authTokenEmpty));
      }
    }

    if (AppConfig.logHttp) {
      log('REQUEST TO : $url', name: LogLabel.httpGet);
      log('requireAuth : $requireAuth', name: LogLabel.httpGet);
    }
    try {
      final response = await get(Uri.parse(url), headers: requestHeaders);
      log('RESPONSE : ${response.body}', name: LogLabel.httpGet);
      return Right(response);
    } catch (e, stktrc) {
      return Left(Failure(
          message: FailureMessage.getRequestMessage, stackTrace: stktrc));
    }
  }

  FutureEither<Response> postRequest(
      {required String url, dynamic body, bool requireAuth = true}) async {
    final Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Authorization": "token=$_authToken"
    };

    if (useMockServer) {
      // Modify the URL for the mock server
      url = '${getBaseUrl()}$url';
    } else {
      url =
          'YOUR_REAL_SERVER_URL$url'; // Replace this with your real server URL
    }

    if (requireAuth) {
      if ((_authToken ?? '').isEmpty) {
        return Left(Failure(message: FailureMessage.authTokenEmpty));
      }
    }

    if (AppConfig.logHttp) {
      log('REQUEST TO : $url', name: LogLabel.httpPost);
      log('requireAuth : $requireAuth', name: LogLabel.httpPost);
      log('BODY : $body', name: LogLabel.httpPost);
    }
    try {
      final response = await post(Uri.parse(url),
          body: jsonEncode(body), headers: requestHeaders);
      log('RESPONSE : ${response.body}', name: LogLabel.httpPost);
      return Right(response);
    } catch (e, stktrc) {
      return Left(Failure(
          message: FailureMessage.postRequestMessage, stackTrace: stktrc));
    }
  }

  // ... Rest of the methods remain the same
}
