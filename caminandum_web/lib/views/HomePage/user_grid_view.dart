import 'package:flutter/material.dart';

class UserGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: 30,
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 0.5,
              childAspectRatio: 0.68,
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
                        height: 110.0,
                        width: 150.0,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 40.0,
                        width: 150.0,
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
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
            }),
      ),
    );
  }
}
