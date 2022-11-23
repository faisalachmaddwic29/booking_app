import 'package:booking_app/utils/utils.dart';
import 'package:booking_app/presentation/pages/onboarding/component/component.dart';
import 'package:booking_app/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);

    return Expanded(
      child: PageView.builder(
        itemBuilder: (context, index) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              cubit.state.onboardinglist[index].image ?? "",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            12.0.height,
            OnboardingTitle(
              title: cubit.state.onboardinglist[index].title ?? '',
              description: cubit.state.onboardinglist[index].description ?? '',
            ),
          ],
        ),
        itemCount: cubit.state.onboardinglist.length,
        onPageChanged: cubit.swiping,
      ),
    );
  }
}
