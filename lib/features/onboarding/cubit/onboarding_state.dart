import 'package:equatable/equatable.dart';

enum OnboardingStatus { initial, loading, success, error }

class OnboardingState extends Equatable {
  final OnboardingStatus status;
  final String? errorMessage;

  const OnboardingState({
    this.status = OnboardingStatus.initial,
    this.errorMessage,
  });

  bool get isLoading => status == OnboardingStatus.loading;

  @override
  List<Object?> get props => [status, errorMessage];
}
