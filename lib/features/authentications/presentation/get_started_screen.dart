import 'package:ewalle/constants/gap.dart';
import 'package:ewalle/features/home/presentation/home_screen.dart';
import 'package:ewalle/features/menu/presentation/menu_screen.dart';
import 'package:ewalle/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                child: SvgPicture.asset("assets/svg/get_start.svg",fit: BoxFit.fill,),
              )
            ],
          ),
          SafeArea(child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("06:20 PM",style: Theme.of(context).textTheme.titleMedium,), gapW8,
                      SvgPicture.asset("assets/svg/cloud.svg",),
                      gapW4,
                      Text('34° C',style: Theme.of(context).textTheme.bodySmall,)
                    ],
                  ),
                  gapH12,
                  Text('Nov.10.2020 | Wednesday',style: Theme.of(context).textTheme.bodyMedium,),
                  const Spacer(),
                  SvgPicture.asset("assets/svg/ellips.svg"),
                  gapH4,
                  Text("eWalle",style: Theme.of(context).textTheme.titleLarge,),
                  gapH4,
                  
                  Text("Open An Account For Digital E-Wallet Solutions.Instant Payouts.\n\nJoin for free",style: Theme.of(context).textTheme.bodyMedium,),
                  const Spacer(),
                  
                 InkWell(
                  onTap: (){
                    Get.to(()=>MenuScreen());
                  },
                   child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: ShapeDecoration(shape: 
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      
                    ),color: primaryColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sign in",style: Theme.of(context).textTheme.bodyLarge,),
                        Icon(Icons.arrow_forward_rounded)
                      ],
                    ),
                   ),
                 ),
                 gapH8,
                 Center(child: Text("Create an account",style: Theme.of(context).textTheme.bodyMedium,),)
            
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}