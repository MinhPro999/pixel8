// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FilterItemWidget extends StatelessWidget {
  final Widget icon;
  final String titleText;
  final Widget? customTitle;
  const FilterItemWidget({
    super.key,
    required this.icon,
    this.titleText = '',
    this.customTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        const SizedBox(
          height: 4,
        ),
        customTitle ??
            Text(
              titleText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            )
      ],
    );
  }
}
