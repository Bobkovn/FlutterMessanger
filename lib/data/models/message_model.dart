import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'message_model.freezed.dart';

@freezed
class MessageModel with _$MessageModel  {
  const factory MessageModel(String id) = _MessageModel;
}
