import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/utils/app_colors.dart';
import 'package:fruit_hub_app/core/utils/app_images.dart';
import 'package:fruit_hub_app/core/utils/app_text_styles.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Stack(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline,
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: Image.asset(
                  Assets.imagesWatermelonTest,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                isThreeLine: true,
                title: Text(
                  'بطيخ',
                  textAlign: TextAlign.right,
                  style: TextStyles.semiBold16.copyWith(
                    color: Color(0XFF0C0D0D),
                  ),
                ),
                subtitle: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '20جنية ',
                        style: TextStyles.bold13.copyWith(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      TextSpan(
                        text: '/',
                        style: TextStyles.bold13.copyWith(
                          color: AppColors.lightSecondaryColor,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyles.semiBold13.copyWith(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      TextSpan(
                        text: 'الكيلو',
                        style: TextStyles.semiBold13.copyWith(
                          color: AppColors.lightSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.right,
                ),
                trailing: const CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
