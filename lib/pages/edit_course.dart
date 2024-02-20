import 'package:flutter/material.dart';

import '../core/static.dart';
import '../widgets/custom_button.dart';

class EditCourse extends StatelessWidget {
  const EditCourse({Key? key}) : super(key: key);

  static const TextStyle _courseItemStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: Static.metropolisMedium,
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            // Navigator.pop(context);
          },
          child: Image.asset(
            AppIcons.back,
            height: 24,
            width: 24,
          ),
        ),
        title: const Text(
          'Edit Course',
          style: TextStyle(
            fontSize: 22,
            fontFamily: Static.metropolisMedium,
            color: AppColors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 24),
          const Text(
            'Photos & Videos',
            style: TextStyle(
              fontSize: 24,
              fontFamily: Static.metropolisMedium,
              color: AppColors.black,
            ),
          ),
          const _SubHeadingText(
            text: 'Upload some that show about the course',
          ),
          const SizedBox(height: 24),
          Container(
            height: 250,
            decoration: const BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius:
                  BorderRadius.all(Radius.circular(Static.borderRadius)),
            ),
            alignment: Alignment.center,
            child: Image.asset(
              AppIcons.add,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius:
                        BorderRadius.all(Radius.circular(Static.borderRadius)),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    AppIcons.add,
                  ),
                ),
              ),
              const SizedBox(width: Static.borderRadius),
              Expanded(
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius:
                        BorderRadius.all(Radius.circular(Static.borderRadius)),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    AppIcons.add,
                  ),
                ),
              ),
              const SizedBox(width: Static.borderRadius),
              Expanded(
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius:
                        BorderRadius.all(Radius.circular(Static.borderRadius)),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        AppIcons.videoCall,
                      ),
                      const Text(
                        'Add Video',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: Static.metropolisMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Hold & drag media to reorder',
              style: TextStyle(
                fontSize: 12,
                color: AppColors.grey,
              ),
            ),
          ),
          const SizedBox(height: 32),
          const _HeadingText(
            text: 'Name of the course',
          ),
          const SizedBox(height: 8),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Introduction to Accountancy',
              hintStyle: TextStyle(
                color: AppColors.black,
                fontFamily: Static.metropolisMedium,
                fontSize: 16,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(Static.borderRadius)),
                borderSide: BorderSide(
                  color: AppColors.lightGrey,
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(Static.borderRadius)),
                borderSide: BorderSide(
                  color: AppColors.lightGrey,
                  width: 2,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          const _HeadingText(
            text: 'Course Info',
          ),
          const SizedBox(height: 24),
          const _CourseInfoItem(
            icon: AppIcons.rupee,
            title: 'Price',
            data: Text.rich(
              TextSpan(
                text: "₹",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: "900",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: " ₹1000",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: AppColors.red,
                      fontWeight: FontWeight.normal,
                      decorationThickness: 2,
                    ),
                  ),
                  TextSpan(
                    text: " 10%off",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.red,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              style: TextStyle(
                fontFamily: Static.metropolisMedium,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const _CourseInfoItem(
            icon: AppIcons.card,
            title: 'Payment type',
            data: Text(
              'Partial',
              style: _courseItemStyle,
            ),
          ),
          const SizedBox(height: 24),
          const _CourseInfoItem(
            icon: AppIcons.calender,
            title: 'Frequency',
            data: Text(
              'Monthly',
              style: _courseItemStyle,
            ),
          ),
          const SizedBox(height: 24),
          const _CourseInfoItem(
            icon: AppIcons.cubes,
            title: 'Course Type',
            data: Text(
              'Regular',
              style: _courseItemStyle,
            ),
          ),
          const SizedBox(height: 24),
          const _CourseInfoItem(
            icon: AppIcons.dashboardRight,
            title: 'Course Category',
            data: Text(
              'Academics',
              style: _courseItemStyle,
            ),
          ),
          const SizedBox(height: 24),
          const _CourseInfoItem(
            icon: AppIcons.dashboard,
            title: 'Class',
            data: Text(
              'Class1, class2, class3...',
              style: _courseItemStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 24),
          const _CourseInfoItem(
            icon: AppIcons.hamburger,
            title: 'Subject',
            data: Text(
              'English, Hindi, Scien..',
              style: _courseItemStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 24),
          const _CourseInfoItem(
            icon: AppIcons.gradHat,
            title: 'Board',
            data: Text(
              'CBSE',
              style: _courseItemStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 40),
          const _HeadingText(
            text: 'Course Info',
          ),
          const SizedBox(height: 24),
          const _CourseInfoItem(
            icon: AppIcons.rupee,
            title: 'Price',
            data: Text.rich(
              TextSpan(
                text: "₹",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: "900",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: " ₹1000",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: AppColors.red,
                      fontWeight: FontWeight.normal,
                      decorationThickness: 2,
                    ),
                  ),
                  TextSpan(
                    text: " 10%off",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.red,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              style: TextStyle(
                fontFamily: Static.metropolisMedium,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const _CourseInfoItem(
            icon: AppIcons.card,
            title: 'Payment type',
            data: Text(
              'Partial',
              style: _courseItemStyle,
            ),
          ),
          const SizedBox(height: 24),
          const _CourseInfoItem(
            icon: AppIcons.calender,
            title: 'Frequency',
            data: Text(
              'Monthly',
              style: _courseItemStyle,
            ),
          ),
          const SizedBox(height: 24),
          const _CourseInfoItem(
            icon: AppIcons.timer,
            title: 'Course Duration',
            data: Text(
              '3 Months',
              style: _courseItemStyle,
            ),
          ),
          const SizedBox(height: 24),
          const _CourseInfoItem(
            icon: AppIcons.cubes,
            title: 'Course Type',
            data: Text(
              'Regular',
              style: _courseItemStyle,
            ),
          ),
          const SizedBox(height: 24),
          const _CourseInfoItem(
            icon: AppIcons.dashboard,
            title: 'Course Category',
            data: Text(
              'Engineering',
              style: _courseItemStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 24),
          const _CourseInfoItem(
            icon: AppIcons.clipboard,
            title: 'Exam',
            data: Text(
              'JEE mains',
              style: _courseItemStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 40),
          const _HeadingText(text: 'Keywords'),
          const SizedBox(height: 4),
          const _SubHeadingText(
            text: 'write top 10 keywords about courses & institute',
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 12,
            children: [
              const _KeywordItem(
                text: '#IITpreparation',
              ),
              const _KeywordItem(
                text: '#Physicsclasses',
              ),
              const _KeywordItem(
                text: '#JEEMains',
              ),
              const _KeywordItem(
                text: '#JEEAdvance',
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.purple,
                    width: 1.5,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      Static.borderRadius,
                    ),
                  ),
                  color: AppColors.purple.withOpacity(0.1),
                ),
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        // on add-more pressed
                      },
                      child: Image.asset(
                        AppIcons.add,
                        width: 24,
                        height: 24,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Add More',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 40),
          const _HeadingText(text: 'Description'),
          const SizedBox(height: 4),
          const _SubHeadingText(
            text: 'Upload some that tells about the course ',
          ),
          const SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(
              hintText:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, ",
              hintStyle: TextStyle(
                color: AppColors.black,
                fontFamily: Static.metropolisMedium,
                fontSize: 16,
              ),
              hintMaxLines: 15,
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(Static.borderRadius)),
                borderSide: BorderSide(
                  color: AppColors.lightGrey,
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(Static.borderRadius)),
                borderSide: BorderSide(
                  color: AppColors.lightGrey,
                  width: 2,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          const _HeadingText(text: 'Learnings'),
          const SizedBox(height: 4),
          const _SubHeadingText(
            text: 'Write what student learn in this course.',
          ),
          const SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(
              hintText:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, ",
              hintStyle: TextStyle(
                color: AppColors.black,
                fontFamily: Static.metropolisMedium,
                fontSize: 16,
              ),
              hintMaxLines: 15,
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(Static.borderRadius)),
                borderSide: BorderSide(
                  color: AppColors.lightGrey,
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(Static.borderRadius)),
                borderSide: BorderSide(
                  color: AppColors.lightGrey,
                  width: 2,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          const CustomButton(
            text: 'Save Course',
          ),
        ],
      ),
    );
  }
}

class _KeywordItem extends StatelessWidget {
  const _KeywordItem({
    super.key,
    required this.text,
    this.onDeletePressed,
  });

  final String text;
  final VoidCallback? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.bgGrey,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            Static.borderRadius,
          ),
        ),
        color: AppColors.lightGrey,
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onDeletePressed,
            child: const Icon(
              Icons.close_rounded,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}

class _SubHeadingText extends StatelessWidget {
  const _SubHeadingText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 12,
        color: AppColors.grey,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _CourseInfoItem extends StatelessWidget {
  const _CourseInfoItem({
    super.key,
    required this.icon,
    required this.title,
    required this.data,
  });

  final String icon;
  final String title;
  final Widget data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              icon,
              color: AppColors.darkGrey,
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.darkGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(width: 24),
        Row(
          children: [
            data,
            const SizedBox(width: 12),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
              color: AppColors.black,
            ),
          ],
        ),
      ],
    );
  }
}

class _HeadingText extends StatelessWidget {
  const _HeadingText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        color: AppColors.black,
        fontFamily: Static.metropolisMedium,
        fontWeight: FontWeight.bold,
        letterSpacing: .5,
      ),
    );
  }
}
