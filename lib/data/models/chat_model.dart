import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'chat_model.freezed.dart';

@freezed
abstract class ChatModel with _$ChatModel {
  const factory ChatModel(String id) = _ChatModel;
}
