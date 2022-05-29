import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkin.freezed.dart';
part 'checkin.g.dart';

@freezed
/// data class for Checkin
class Checkin with _$Checkin {
  // ignore: public_member_api_docs
  const factory Checkin({
    required DateTime checkin,
    required String location,
    required List<String> purpose,
    required int id,
    required int employeeId,
  }) = _Checkin;

  /// convert json to Checkin
  factory Checkin.fromJson(Map<String, dynamic> json) =>
      _$CheckinFromJson(json);
}
