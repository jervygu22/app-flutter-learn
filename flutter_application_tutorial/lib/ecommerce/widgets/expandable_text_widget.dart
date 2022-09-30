import 'package:flutter/material.dart';
import 'package:flutter_application_tutorial/ecommerce/ecommerce_screens.dart';
import 'package:flutter_application_tutorial/ecommerce/utils/dimensions.dart';
import 'package:flutter_application_tutorial/ecommerce/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({
    super.key,
    required this.text,
  });

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalfText;
  late String secondHalfText;

  bool isTextHidden = true;
  double textHeight = Dimensions.screenHeight / 3; // 5.63

  @override
  void initState() {
    super.initState();
    // dividing texts to 2
    if (widget.text.length > textHeight) {
      firstHalfText = widget.text.substring(0, textHeight.toInt());
      secondHalfText =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalfText = widget.text;
      secondHalfText = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalfText.isEmpty
          ? SmallText(
              size: Dimensions.font16,
              text: firstHalfText,
              color: AppColors.paraColor,
              height: 1.8,
            )
          : Column(
              children: [
                SmallText(
                    height: 1.8,
                    color: AppColors.paraColor,
                    size: Dimensions.font16,
                    text: isTextHidden
                        ? (firstHalfText + "...")
                        : (firstHalfText + secondHalfText)),
                InkWell(
                  onTap: () {
                    setState(() {
                      isTextHidden = !isTextHidden;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: "Show more",
                        color: AppColors.mainColor,
                      ),
                      Icon(
                        isTextHidden
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
