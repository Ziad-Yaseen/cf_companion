import 'package:cf_companion/core/services/submissions_service.dart';
import 'package:cf_companion/data/models/submissions_model.dart';

class SubmissionsRepository {
  final SubmissionsService submissionsService;
  SubmissionsRepository(this.submissionsService);

  Future<List<SubmissionModel>> fetchAllSubmissions(String handle) {
    return submissionsService.getUserStatus(handle);
  }
}