class RateLimiter {
  RateLimiter({this.minInterval = const Duration(seconds: 2)});

  final Duration minInterval;
  DateTime _lastRequestTime = DateTime.fromMillisecondsSinceEpoch(0);

  Future<void> wait() async {
    final now = DateTime.now();
    final nextAvailableTime = _lastRequestTime.add(minInterval);

    if (now.isBefore(nextAvailableTime)) {
      _lastRequestTime = nextAvailableTime;
      await Future.delayed(nextAvailableTime.difference(now));
    } else {
      _lastRequestTime = now;
    }
  }
}
