import 'package:freezed_annotation/freezed_annotation.dart';
part 'stream_result.freezed.dart';

@freezed
class StreamResult<T> with _$StreamResult {
  factory StreamResult.created(T? value) = StreamResultCreated<T>;
  factory StreamResult.updated(T? value) = StreamResultUpdated<T>;
  factory StreamResult.deleted(String value) = StreamResultDeleted;
  factory StreamResult.error(Error value) = StreamResultError;
}
