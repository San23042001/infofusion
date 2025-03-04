import 'dart:async';
import 'dart:convert';

import 'package:web_socket_client/web_socket_client.dart';

import '../logger.dart';

String _h = "chat_service";

class ChatWebService {
  static final _instance = ChatWebService._internal();
  //create an instance of websocket
  WebSocket? _socket;

  factory ChatWebService() => _instance;

  //create streamController
  final _searchResultController = StreamController<Map<String, dynamic>>();
  final _contentController = StreamController<Map<String, dynamic>>();

  //create an getter
  Stream<Map<String, dynamic>> get searchResultStream =>
      _searchResultController.stream;

  Stream<Map<String, dynamic>> get contentStream => _contentController.stream;

  //Make it singleton
  ChatWebService._internal();

  //connect to backend
  void connect() {
    _socket = WebSocket(Uri.parse("ws://localhost:8000/ws/chat"));

    _socket!.messages.listen((message) {
      final data = jsonDecode(message);
      logInfo(_h, data['type']);
      if (data['type'] == 'search_result') {
        _searchResultController.add(data);
      } else if (data['type'] == 'content') {
        _contentController.add(data);
      }
    });
  }

  //chat
  void chat(String query) {
    logInfo(_h, query);
    _socket!.send(jsonEncode({'query': query}));
  }
}
