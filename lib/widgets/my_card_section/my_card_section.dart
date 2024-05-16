import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:responsive_credit_card_app/utils/app_styles.dart';
import 'package:responsive_credit_card_app/widgets/my_card_section/dots_indicator.dart';
import 'package:responsive_credit_card_app/widgets/my_card_section/my_card_list_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My Card',
          style: AppStyle.styleSemiBold20,
        ),
        const Gap(10),
        MyCardPageView(
          pageController: pageController,
        ),
        const Gap(10),
        DotsIndecator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
