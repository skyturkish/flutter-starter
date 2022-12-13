import 'package:flutter_starter/views/_components/animations/lottie_animation_view.dart';
import 'package:flutter_starter/views/_components/animations/models/lottie_animation.dart';

class ErrorAnimationView extends LottieAnimationView {
  const ErrorAnimationView({super.key})
      : super(
          animation: LottieAnimation.error,
          reverse: true,
        );
}
