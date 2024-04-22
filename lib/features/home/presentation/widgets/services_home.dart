import 'package:ewalle/constants/gap.dart';
import 'package:ewalle/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class ServiceFake{
  final String image;
  final String name;
  ServiceFake({required this.name,required this.image});
}
class ServicesHome extends StatelessWidget {
  const ServicesHome({super.key,required this.services});
final List<ServiceFake> services;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,mainAxisExtent: 120),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: ShapeDecoration(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))
              ),color: backgroundColor),
              child: Center(
                child: SvgPicture.asset(services[index].image),
              ),
            ),
            gapH8,
            Text(services[index].name,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,maxLines: 2,)
          ],
        );
      },itemCount:services.length ,
    );
  }
}