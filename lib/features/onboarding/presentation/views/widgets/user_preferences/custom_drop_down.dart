import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oly_elazm/core/theme/app_colors.dart';
import 'package:oly_elazm/core/theme/app_text_style.dart';
import 'package:oly_elazm/features/onboarding/data/models/drop_down_item.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown(
      {super.key,
      required this.items,
      required this.title,
      required this.titleImage,
      required this.onItemSelected});

  final String title;
  final String titleImage;
  final List<DropDownItem> items;
  final ValueChanged<DropDownItem> onItemSelected;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  DropDownItem? selectedItem;
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isOpen = !isOpen;
            });
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: AppColors.mainAppColor,
                width: 1.2,
              ),
            ),
            child: Column(
              children: [
                DropdownHeader(
                  selectedItem: selectedItem,
                  isOpen: isOpen,
                  title: widget.title,
                  titleImage: widget.titleImage,
                ),
                if (isOpen) const DropdownDivider(),
                DropdownItems(
                  isOpen: isOpen,
                  items: widget.items,
                  onSelect: (item) {
                    setState(() {
                      selectedItem = item;
                      isOpen = false;
                    });
                    widget.onItemSelected(item);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DropdownHeader extends StatelessWidget {
  const DropdownHeader({
    super.key,
    required this.selectedItem,
    required this.isOpen,
    required this.title,
    required this.titleImage,
  });

  final DropDownItem? selectedItem;
  final bool isOpen;
  final String title;
  final String titleImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AnimatedRotation(
            turns: isOpen ? 0.5 : 0,
            duration: const Duration(milliseconds: 500),
            child: Icon(
              Icons.keyboard_arrow_up,
              color: Colors.black,
              size: 30.w,
            ),
          ),
          selectedItem != null
              ? SelectedItem(selectedItem: selectedItem!)
              : DefaultItem(
                  title: title,
                  titleImage: titleImage,
                ),
        ],
      ),
    );
  }
}

class DropdownDivider extends StatelessWidget {
  const DropdownDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.mainAppColor,
      thickness: 2,
      height: 0,
    );
  }
}

class DropdownItems extends StatelessWidget {
  const DropdownItems({
    super.key,
    required this.isOpen,
    required this.items,
    required this.onSelect,
  });

  final bool isOpen;
  final List<DropDownItem> items;
  final Function(DropDownItem) onSelect;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isOpen
          ? (items.isNotEmpty ? items.length * 44 : 50)
          : 0,
      curve: Curves.easeInOut,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 12.w),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => onSelect(items[index]),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 6.w),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Image.asset(items[index].image),
                    10.horizontalSpace,
                    Text(
                      items[index].name,
                      style: AppTextStyle.font18SemiBold(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class SelectedItem extends StatelessWidget {
  const SelectedItem({
    super.key,
    required this.selectedItem,
  });

  final DropDownItem selectedItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        Image.asset(selectedItem.image),
        10.horizontalSpace,
        Text(
          selectedItem.name,
          style: AppTextStyle.font18SemiBold(color: Colors.black),
        ),
      ],
    );
  }
}

class DefaultItem extends StatelessWidget {
  const DefaultItem({super.key, required this.title, required this.titleImage});

  final String title;
  final String titleImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        Image.asset(titleImage),
        10.horizontalSpace,
        Text(
          title,
          style: AppTextStyle.font18SemiBold(color: Colors.black),
        ),
      ],
    );
  }
}
