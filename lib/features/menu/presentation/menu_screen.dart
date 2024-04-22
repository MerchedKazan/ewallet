import 'package:ewalle/constants/gap.dart';
import 'package:ewalle/features/home/presentation/home_screen.dart';
import 'package:ewalle/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final topPadding=MediaQuery.of(context).padding.top;
    final sizeMediaQuery=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(children: [
        Row(
          children: [
            Container(

              padding: EdgeInsets.fromLTRB(20, topPadding+20, 20, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25)
                ),
                color: Colors.white
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    child: Image.asset("assets/persons/3.jpg")),
                    gapW12,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Carol black",style: Theme.of(context).textTheme.bodyLarge,),
                        gapH4,
                        Text('Seattle,Washington',style: Theme.of(context).textTheme.bodyMedium,)
                      ],
                    )
                ],
              ),
            ),
            Spacer(),
            Icon(Icons.close),
            gapW12,
          ],
        ),
        // Stack(
        //   clipBehavior: Clip.none,
        //       children: [
        //        Positioned(
        //           child: InkWell(
        //              onTap: (){
        //               print("pressed");
        //               Get.to(()=>HomeScreen(),transition: Transition.downToUp);
        //             },
        //             child: Text("",style: Theme.of(context).textTheme.bodyLarge,))),
        //         Positioned(
        //           right: -sizeMediaQuery.width,
        //           left: sizeMediaQuery.width*0.1,
        //           child: GestureDetector(
        //             onTap: (){
        //               print("pressed");
        //               Get.to(()=>HomeScreen(),transition: Transition.downToUp);
        //             },
        //             child: SizedBox(
        //               width: sizeMediaQuery.width*1,
        //               child: Transform.rotate(
        //                   angle: -0.3,
        //                 child: SizedBox(
        //                   width: sizeMediaQuery.width*1,
        //                   height: sizeMediaQuery.height*0.8,                      
        //                   child: ClipRRect(
        //                      borderRadius: BorderRadius.all(Radius.circular(25)),
        //                     child: HomeScreen())),
        //               ),
        //             ),
        //           ),
        //         ),
                                
        //       ],
        //     ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: sizeMediaQuery.width*0.3,
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Spacer(),
                      InkWell(
                        onTap: (){
                          Get.to(()=>HomeScreen(),transition: Transition.downToUp);
                        },
                        child: Text("Home",style: Theme.of(context).textTheme.bodyLarge,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:6.0),
                          child: Text("Profile",style: Theme.of(context).textTheme.bodySmall),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:6.0),
                          child: Text("Accounts",style: Theme.of(context).textTheme.bodySmall),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:6.0),
                          child: Text("Transactions",style: Theme.of(context).textTheme.bodySmall),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:6.0),
                          child: Text("Stats",style: Theme.of(context).textTheme.bodySmall),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:6.0),
                          child: Text("Settings",style: Theme.of(context).textTheme.bodySmall),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:6.0),
                          child: Text("Help",style: Theme.of(context).textTheme.bodySmall),
                        ),
                        Spacer(),
                        Text("Logout",style: Theme.of(context).textTheme.bodyLarge,),
                        Spacer(),
                       
                    ],
                  ),
                ),
              ),
              Stack(
            clipBehavior: Clip.none,
                children: [
                 Positioned(
                    child: Text("",style: Theme.of(context).textTheme.bodyLarge,)),
                  Positioned(
                    
                    right:- sizeMediaQuery.width*1.3,
                    // left: sizeMediaQuery.width*0.5,
                    child: SizedBox(
                      width: sizeMediaQuery.width*1,
                      child: Transform.rotate(
                          angle: -0.3,
                        child: SizedBox(
                          width: sizeMediaQuery.width*1,
                          height: sizeMediaQuery.height*1,                      
                          child: ClipRRect(
                             borderRadius: BorderRadius.all(Radius.circular(25)),
                            child: HomeScreen())),
                      ),
                    ),
                  ),
                                  
                ],
              ),
            ],
          ),
        )

      ]),
    );
  }
}