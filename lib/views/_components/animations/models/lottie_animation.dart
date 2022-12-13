enum LottieAnimation {
  error(name: 'error');

  const LottieAnimation({
    required this.name,
  });

  final String name;

  String get fullPath => 'assets/animations/$name.json';
}
