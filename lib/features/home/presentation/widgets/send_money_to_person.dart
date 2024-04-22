import 'package:ewalle/theme/theme_data.dart';
import 'package:flutter/material.dart';

class SendMoneyToPerson extends StatelessWidget {
  const SendMoneyToPerson({
    super.key,
    required this.image,
    required this.name,
  });
  final String image,name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 120,
      padding: EdgeInsets.symmetric(vertical: 30),
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            child: Image.asset(image,height: 40,width: 40,),
          ),
          
          Text(name,style: Theme.of(context).textTheme.bodyMedium,)
        ],
      ),
    );
  }
}