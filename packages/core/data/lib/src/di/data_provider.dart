import 'package:core_data/core_data.dart';
import 'package:core_data/src/member/data_member_repository.dart';
import 'package:core_data/src/schedule/data_schedule_repository.dart';
import 'package:core_network/core_network.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final Provider<MemberRepository> memberRepositoryProvider = Provider(
  (ref) => DataMemberRepository(
    api: ref.read(memberApiProvider),
  ),
);

final Provider<ScheduleRepository> scheduleRepositoryProvider = Provider(
  (ref) => DataScheduleRepository(
    api: ref.read(scheduleApiProvider),
  ),
);
