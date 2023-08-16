import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CountriesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Countries',
      apiUrl: 'https://restcountries.com/v3.1/all',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name.common''',
        true,
      );
  static dynamic flags(dynamic response) => getJsonField(
        response,
        r'''$[:].flag''',
        true,
      );
  static dynamic countries(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      );
  static dynamic shortName(dynamic response) => getJsonField(
        response,
        r'''$[:].cca2''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
