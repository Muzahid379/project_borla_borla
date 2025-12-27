
import 'package:flutter/material.dart';
import 'package:project_borla/role/components/custom_container.dart';

import '../../../../theme/app_color.dart';
import '../../../components/text/common_text.dart';

class RecentTransactionsWidget extends StatelessWidget {
  const RecentTransactionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12,),
        const CommonText(
          text: 'Recent Transaction',
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),

        const SizedBox(height: 16),

        /// Transaction List
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4, // make dynamic later
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            return _buildTransactionCard();
          },
        ),
      ],
    );
  }

  Widget _buildTransactionCard() {
    return CustomContainer(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      borderRadius: 4,
      borderColor: AppColors.green300,
      borderWidth: 0.5,
      child: Row(
        children: [
          /// Left section
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CommonText(
                  text: 'Ride with Jane D.',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 6),
                CommonText(
                  text: 'Dec 25, 10:45 AM',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.gray400,
                ),
              ],
            ),
          ),

          /// Right section
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const CommonText(
                text: '+₵22.50',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.green500,
              ),
              const SizedBox(height: 6),
              Row(
                children: const [
                  Icon(
                    Icons.credit_card,
                    size: 16,
                    color: AppColors.gray500,
                  ),
                  SizedBox(width: 4),
                  CommonText(
                    text: 'Card',
                    fontSize: 14,
                    color: AppColors.gray500,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
