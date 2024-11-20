import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ConektaAUTHCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "name": "Venta de Zapatos",
  "type": "PaymentLink",
  "recurrent": false,
  "expires_at": 1730073600,
  "payments_limit_count": 2500,
  "allowed_payment_methods": [
    "cash",
    "card",
    "bank_transfer"
  ],
  "monthly_installments_enabled": true,
  "monthly_installments_options": [
    3,
    6,
    9,
    12,
    18
  ],
  "needs_shipping_contact": true,
  "order_template": {
    "line_items": [
      {
        "name": "Producto 1",
        "unit_price": 30000,
        "quantity": 1
      }
    ],
    "metadata": {
      "SKU": "ABC12",
      "Branch": "NORTH12",
      "Valor 2": "South#23",
      "Valor 3": "South#23"
    },
    "currency": "MXN",
    "customer_info": {
      "name": "Timoteo",
      "email": "timoteo@mailinator.com",
      "phone": "5554092742"
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'conekta AUTH',
      apiUrl: 'https://api.conekta.io/checkouts',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/vnd.conekta-v2.1.0+json',
        'Content-type': 'application/json',
        'Authorization': 'Bearer key_G8g0VpfGtkkNSNEiYj2SFI6',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? urlresponse(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
