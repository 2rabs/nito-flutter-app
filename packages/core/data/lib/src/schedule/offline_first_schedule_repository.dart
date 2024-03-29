import 'package:core_common/core_common.dart';
import 'package:core_data/core_data.dart';
import 'package:core_model/core_model.dart';
import 'package:core_network/core_network.dart';

final offlineFirstScheduleRepositoryProvider =
    scheduleRepositoryProvider.overrideWith(
  (ref) => OfflineFirstScheduleRepository(
    api: ref.watch(scheduleApiProvider),
  ),
);

/// スケジュールのデータ操作リポジトリ
class OfflineFirstScheduleRepository implements ScheduleRepository {
  final ScheduleApi _api;

  OfflineFirstScheduleRepository({required ScheduleApi api}) : _api = api;

  @override
  Future<Schedule?> fetchRecentSchedule() async {
    final networkSchedule = await _api.fetchRecentSchedule();
    return networkSchedule?.let(
      (it) => Schedule(
        id: it.id,
        scheduledAt: DateTime.parse(it.scheduledAt).toLocal(),
        isFinished: false,
      ),
    );
  }

  @override
  Future<List<Schedule>> fetchSchedules() async {
    final networkSchedules = await _api.fetchSchedules();
    final now = DateTime.now();

    return networkSchedules
        .map(
          (it) => Schedule(
            id: it.id,
            scheduledAt: DateTime.parse(it.scheduledAt).toLocal(),
            isFinished: DateTime.parse(it.scheduledAt).isBefore(now),
          ),
        )
        .toList();
  }

  @override
  Future<List<Schedule>> fetchUpcomingSchedules() async {
    final response = await _api.fetchUpcomingSchedules();
    return response
        .map(
          (e) => Schedule(
            id: e.id,
            scheduledAt: DateTime.parse(e.scheduledAt).toLocal(),
            isFinished: false,
          ),
        )
        .toList();
  }
}
