import 'package:cf_companion/core/exceptions/api_exception.dart';
import 'package:cf_companion/core/repositories/user_info_repository.dart';
import 'package:cf_companion/core/services/handle_service.dart';
import 'package:cf_companion/core/validators/app_validators.dart';
import 'package:cf_companion/core/validators/validator.dart';
import 'package:cf_companion/features/onboarding/cubit/onboarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final UserInfoRepository userInfoRepository;
  final HandleService service;
  final Validator<String> validator;

  OnboardingCubit({
    required this.userInfoRepository,
    required this.service,
    Validator<String>? handleValidator,
  }) : validator = handleValidator ?? AppValidators.handle,
       super(const OnboardingState());

  Future<void> verifyHandle(String rawHandle) async {
    final handle = rawHandle.trim();

    final formatError = validator.validate(handle);
    if (formatError != null) {
      emit(
        OnboardingState(
          status: OnboardingStatus.error,
          errorMessage: formatError,
        ),
      );
      return;
    }

    emit(const OnboardingState(status: OnboardingStatus.loading));

    try {
      await userInfoRepository.fetchUserInfo(handle);
      await service.saveHandle(handle);
      emit(const OnboardingState(status: OnboardingStatus.success));
    } on ApiException catch (e) {
      emit(
        OnboardingState(
          status: OnboardingStatus.error,
          errorMessage: e.message,
        ),
      );
    } catch (e) {
      emit(
        const OnboardingState(
          status: OnboardingStatus.error,
          errorMessage: 'Unexpected Error',
        ),
      );
    }
  }
}
