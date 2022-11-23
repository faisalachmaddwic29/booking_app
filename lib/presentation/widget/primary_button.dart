import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:booking_app/config/config.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      this.type = PrimaryButtonType.type3,
      required this.onPressed,
      required this.text,
      this.width = 78})
      : super(key: key);
  final PrimaryButtonType type;
  final VoidCallback? onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case PrimaryButtonType.type1:
        {
          return _type1();
        }
      case PrimaryButtonType.type2:
        {
          return _type2();
        }
      case PrimaryButtonType.type3:
        {
          return _type3();
        }
      default:
        {
          return _type1();
        }
    }
  }

  Widget _type1() {
    return SizedBox(
      width: width.w,
      height: 24.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ink01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          text,
          style: AppFont.componentSmall.copyWith(color: AppColor.ink06),
        ),
      ),
    );
  }

  Widget _type2() {
    return SizedBox(
      width: width.w,
      height: 32.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ink01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          text,
          style: AppFont.componentMediumBold.copyWith(color: AppColor.ink06),
        ),
      ),
    );
  }

  Widget _type3() {
    return SizedBox(
      width: width.w,
      height: 57.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ink01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          text,
          style: AppFont.componentLarge.copyWith(color: AppColor.ink06),
        ),
      ),
    );
  }
}

enum PrimaryButtonType {
  type1,
  type2,
  type3,
}
