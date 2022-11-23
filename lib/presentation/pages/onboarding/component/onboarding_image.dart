import 'package:booking_app/extension/extension.dart';
import 'package:booking_app/presentation/pages/onboarding/component/component.dart';
import 'package:booking_app/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:booking_app/presentation/pages/onboarding/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);

    return Expanded(
      child: PageView.builder(
        itemBuilder: (context, index) =>
            BlocBuilder<OnboardingCubit, OnboardingState>(
          builder: (context, state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  cubit.state.onboardinglist[state.currentIndex].image ?? "",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                ),
                12.0.height,
                OnboardingTitle(
                  title: cubit.state.onboardinglist[state.currentIndex].title ??
                      '',
                  description: cubit.state.onboardinglist[state.currentIndex]
                          .description ??
                      '',
                ),
              ],
            );
          },
        ),
        itemCount: cubit.state.onboardinglist.length,
        onPageChanged: cubit.swiping,
      ),
    );
  }
}
