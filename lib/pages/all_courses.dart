import 'package:flutter/material.dart';

import '../core/static.dart';
import '../widgets/custom_button.dart';

class AllCourses extends StatelessWidget {
  const AllCourses({Key? key}) : super(key: key);

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
          'All Courses',
          style: TextStyle(
            fontSize: 22,
            fontFamily: Static.metropolisMedium,
            color: AppColors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 24),
          const _TabBar(),
          const SizedBox(height: 16),
          const Divider(
            color: AppColors.lightGrey,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "5th Class",
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: Static.metropolisMedium,
                  ),
                ),
                const SizedBox(height: 24),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const _CourseItem();
                  },
                  separatorBuilder: (_, __) => const SizedBox(height: 24),
                  itemCount: 4,
                ),
                const SizedBox(height: 40),
                const Text(
                  "6th Class",
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: Static.metropolisMedium,
                  ),
                ),
                const SizedBox(height: 24),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const _CourseItem();
                  },
                  separatorBuilder: (_, __) => const SizedBox(height: 24),
                  itemCount: 4,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(16),
        child: CustomButton(text: 'Create New Course'),
      ),
    );
  }
}

class _CourseItem extends StatelessWidget {
  const _CourseItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: const BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius:
                      BorderRadius.all(Radius.circular(Static.borderRadius)),
                ),
              ),
              const SizedBox(width: 8),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Introduction to\nAccountancy',
                    style: TextStyle(
                      color: AppColors.black,
                      fontFamily: Static.metropolisMedium,
                      fontSize: 14,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '11th Class • Online • 3 months',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 14,
                      fontFamily: Static.metropolisMedium,
                    ),
                  )
                ],
              ),
            ],
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Text(
              '10,000',
              style: TextStyle(
                color: AppColors.black,
                fontFamily: Static.metropolisMedium,
                fontSize: 14,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}

class _TabBar extends StatefulWidget {
  const _TabBar({
    super.key,
  });

  @override
  State<_TabBar> createState() => _TabBarState();
}

class _TabBarState extends State<_TabBar> {
  int currentItem = 0;

  void _updateIndex(int index) {
    setState(() {
      currentItem = index;
    });
  }

  static const List<String> _items = [
    'All (20)',
    '5th Class',
    '6th Class',
    '7th Class',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => _TabBarItem(
          text: _items[index],
          onPressed: () => _updateIndex(index),
          isActive: index == currentItem,
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: 4,
      ),
    );
  }
}

class _TabBarItem extends StatelessWidget {
  const _TabBarItem({
    super.key,
    required this.text,
    this.onPressed,
    this.isActive = false,
  });

  final String text;
  final VoidCallback? onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: isActive ? AppColors.purple : AppColors.lightGrey,
            width: 1.5,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              Static.borderRadius,
            ),
          ),
          color: isActive
              ? AppColors.purple.withOpacity(0.1)
              : AppColors.lightGrey,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isActive ? AppColors.black : AppColors.grey,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: Static.metropolisMedium,
          ),
        ),
      ),
    );
  }
}
