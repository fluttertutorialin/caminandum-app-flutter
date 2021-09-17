import 'package:flutter/material.dart';

class UserGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        flex: 3,
        child: GridView.builder(
            itemCount: 30,
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                      child: Image.asset(
                        'assets/images/Caminandum-logo.png',
                        fit: BoxFit.cover,
                        height: 130.0,
                        width: 150.0,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 20.0,
                        width: 150.0,
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'User $index',
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.add,
                                color: Colors.amberAccent,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );

              // Column(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: ClipRRect(
              //         borderRadius: BorderRadius.circular(
              //           10.0,
              //         ),
              //         child: Image.asset(
              //           'assets/images/Caminandum-logo.png',
              //           fit: BoxFit.cover,
              //           height: 150.0,
              //           width: 150.0,
              //         ),
              //       ),
              //     ),
              //   ],
              // );
            }),
      ),
    );
  }
}
