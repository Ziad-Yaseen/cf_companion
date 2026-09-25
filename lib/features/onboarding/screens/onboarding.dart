import 'package:cf_companion/core/components/custom_text_field.dart';
import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/repositories/user_info_repository.dart';
import 'package:cf_companion/core/routes/route_names.dart';
import 'package:cf_companion/core/services/handle_service.dart';
import 'package:cf_companion/core/services/user_info_service.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/core/validators/app_validators.dart';
import 'package:cf_companion/features/onboarding/cubit/onboarding_cubit.dart';
import 'package:cf_companion/features/onboarding/cubit/onboarding_state.dart';
import 'package:cf_companion/features/onboarding/widgets/person_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(
        userInfoRepository: UserInfoRepository(UserInfoService()),
        service: HandleService(),
      ),
      child: const _OnboardingView(),
    );
  }
}

class _OnboardingView extends StatefulWidget {
  const _OnboardingView();

  @override
  State<_OnboardingView> createState() => __OnboardingViewState();
}

class __OnboardingViewState extends State<_OnboardingView> {
  final _formKey = GlobalKey<FormState>();
  final _handleController = TextEditingController();

  @override
  void dispose() {
    _handleController.dispose();
    super.dispose();
  }

  void _submit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<OnboardingCubit>().verifyHandle(_handleController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<OnboardingCubit, OnboardingState>(
        listenWhen: (previous, current) =>
            current.status == OnboardingStatus.success,
        listener: (context, state) {
          context.goNamed(RouteNames.mainLayout);
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Gap(AppSizes.height80),
                    const PersonView(),
                    Gap(AppSizes.height65),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'أدخل الـ Handle بتاعك',
                        textDirection: TextDirection.rtl,
                        style: AppTextStyles.screenTitle,
                      ),
                    ),
                    Gap(AppSizes.height8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'هنستخدمه عشان نجيب بياناتك من Codeforces، هيتخزن على جهازك بس.',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: AppTextStyles.withSize(
                          AppTextStyles.caption,
                          AppSizes.fontSize14,
                        ),
                      ),
                    ),
                    Gap(AppSizes.height32),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Codeforces handle',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        style: AppTextStyles.caption,
                      ),
                    ),
                    Gap(AppSizes.height8),
                    CustomTextField(
                      hintText: 'Enter Handle',
                      prefixIcon: const Icon(AppIcons.handleInput),
                      controller: _handleController,
                      validator: (value) =>
                          AppValidators.handle.validate(value ?? ''),
                    ),

                    BlocBuilder<OnboardingCubit, OnboardingState>(
                      buildWhen: (previous, current) =>
                          current.status == OnboardingStatus.error ||
                          previous.status == OnboardingStatus.error,
                      builder: (context, state) {
                        final showServerError =
                            state.status == OnboardingStatus.error &&
                            state.errorMessage != null;
                        if (!showServerError) return const SizedBox.shrink();
                        return Padding(
                          padding: EdgeInsets.only(top: AppSizes.height8),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              state.errorMessage!,
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: AppTextStyles.caption.copyWith(
                                color: AppColors.error,
                              ),
                            ),
                          ),
                        );
                      },
                    ),

                    Gap(AppSizes.height32),

                    ValueListenableBuilder<TextEditingValue>(
                      valueListenable: _handleController,
                      builder: (context, textValue, child) {
                        final hasText = textValue.text.trim().isNotEmpty;
                        return BlocBuilder<OnboardingCubit, OnboardingState>(
                          buildWhen: (previous, current) =>
                              previous.status != current.status,
                          builder: (context, state) {
                            final isLoading = state.isLoading;
                            final isEnabled = hasText && !isLoading;
                            return SizedBox(
                              width: double.infinity,
                              child: ElevatedButton.icon(
                                onPressed: isEnabled
                                    ? () => _submit(context)
                                    : null,
                                label: isLoading
                                    ? const SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          color: Colors.white,
                                        ),
                                      )
                                    : const Text('تحقق وابدأ'),
                                icon: isLoading
                                    ? null
                                    : const Icon(Icons.arrow_back_ios),
                              ),
                            );
                          },
                        );
                      },
                    ),

                    Gap(AppSizes.height28),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 51.5 - 8),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(
                          AppSizes.borderRadius12,
                        ),
                        overlayColor: WidgetStatePropertyAll(
                          AppColors.surface.withValues(alpha: 0.2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'مش عارف الـ Handle بتاعك؟ افتحه من صفحة البروفايل على Codeforces.',
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            style: AppTextStyles.caption,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
