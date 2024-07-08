import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/app_routers/routes_name.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/check_box/circle/check_box_an_average_circle.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

class IsCheckWidget extends StatelessWidget {
  const IsCheckWidget({
    super.key,
    required this.isCheck,
    this.onTap,
    required this.text,
    required this.image,
    required this.isContainer,
  });

  final bool isCheck;
  final void Function()? onTap;
  final String text, image;
  final bool isContainer;

  @override
  Widget build(BuildContext context) {
    return isContainer
        ? Container(
            width: 325,
            height: 70,
            padding: const EdgeInsets.symmetric(
              vertical: 19,
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColos.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(image),
                    const SizedBox(
                      width: 20,
                    ),
                    TextWidget(
                      text: text,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )
                  ],
                ),
                CheckBoxAnAverageCircle(
                  isCheck: isCheck,
                  onTap: onTap,
                  width: 24,
                  color: AppColos.white,
                  borderColor: Colors.grey.shade400,
                ),
              ],
            ),
          )
        : Container(
            width: 325,
            height: 140,
            padding: const EdgeInsets.symmetric(
              vertical: 19,
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColos.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(image),
                        const SizedBox(
                          width: 20,
                        ),
                        TextWidget(
                          text: text,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        )
                      ],
                    ),
                    CheckBoxAnAverageCircle(
                      isCheck: isCheck,
                      onTap: onTap,
                      width: 24,
                      color: AppColos.white,
                      borderColor: Colors.grey.shade400,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: 200,
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 4,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffe0ddf5),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        context.pushNamed(RoutesName.addCard);
                      },
                      child: const Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: AppColos.white,
                            child: Icon(
                              Icons.add,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          TextWidget(
                            text: 'Add Card',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColos.linear,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
