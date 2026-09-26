import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/exceptions/api_exception.dart';
import 'package:cf_companion/core/repositories/submissions_repository.dart';
import 'package:cf_companion/core/services/submissions_service.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:heatmap_calendar_plus/heatmap_calendar_plus.dart';

class AppHeatmapWidget extends StatefulWidget {
  const AppHeatmapWidget({
    super.key,
    required this.handle,
    this.acceptedOnly = false,
    this.repository,
    this.onDaySelected,
  });

  final String handle;

  final bool acceptedOnly;

  final SubmissionsRepository? repository;

  final void Function(DateTime day, int count)? onDaySelected;

  @override
  State<AppHeatmapWidget> createState() => _AppHeatmapWidgetState();
}

enum _LoadState { loading, error, loaded }

class _AppHeatmapWidgetState extends State<AppHeatmapWidget> {
  late final SubmissionsRepository _repository =
      widget.repository ?? SubmissionsRepository(SubmissionsService());

  _LoadState _state = _LoadState.loading;
  Map<DateTime, int> _counts = const {};
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() => _state = _LoadState.loading);
    try {
      final submissions = await _repository.fetchAllSubmissions(widget.handle);
      final counts = <DateTime, int>{};
      for (final s in submissions) {
        if (widget.acceptedOnly && !s.isAccepted) continue;
        final d = s.submissionDate;
        final day = DateTime(d.year, d.month, d.day);
        counts[day] = (counts[day] ?? 0) + 1;
      }
      if (!mounted) return;
      setState(() {
        _counts = counts;
        _state = _LoadState.loaded;
      });
    } on ApiException catch (e) {
      if (!mounted) return;
      setState(() {
        _errorMessage = e.message;
        _state = _LoadState.error;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _errorMessage = 'حصل خطأ غير متوقع، حاول تاني';
        _state = _LoadState.error;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: switch (_state) {
        _LoadState.loading => const SizedBox(
            height: 140,
            child: Center(
              child: CircularProgressIndicator(color: AppColors.primary),
            ),
          ),
        _LoadState.error =>
          _ErrorContent(message: _errorMessage, onRetry: _load),
        _LoadState.loaded => _buildHeatmap(),
      },
    );
  }

  Widget _buildHeatmap() {
    final total = _counts.values.fold<int>(0, (a, b) => a + b);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$total مساهمة في آخر سنة', style: AppTextStyles.sectionHeader),
        const SizedBox(height: 12),
        HeatMap(
          datasets: _counts,
          colorMode: ColorMode.color,
          showText: false,
          scrollable: true,
          size: 14,
          // margin: const EdgeInsets.all(2),
          borderRadius: 4,
          defaultColor: AppColors.surfaceElevated,
          // textColor: AppColors.textSecondary,
          colorsets: const {
            1: Color(0xFF0E4429),
            3: Color(0xFF006D32),
            6: Color(0xFF26A641),
            10: Color(0xFF39D353),
          },
          onClick: (date) {
            final count =
                _counts[DateTime(date.year, date.month, date.day)] ?? 0;
            widget.onDaySelected?.call(date, count);
          },
        ),
      ],
    );
  }
}

class _ErrorContent extends StatelessWidget {
  const _ErrorContent({required this.message, required this.onRetry});
  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.cloud_off_rounded,
              color: AppColors.error,
              size: 28,
            ),
            const SizedBox(height: 8),
            Text(
              message,
              style: AppTextStyles.bodySecondary,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            OutlinedButton(onPressed: onRetry, child: const Text('حاول تاني')),
          ],
        ),
      ),
    );
  }
}