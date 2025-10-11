import 'package:flutter/material.dart';
import 'package:todo_list/add_task.dart';
import 'appcolors.dart' as AppColors;
import 'package:todo_list/widgets/date_box.dart';
import 'package:todo_list/widgets/list_item.dart';
class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
              Container(
                height: screenHeight * 0.1,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      AppColors.appBar,
                      AppColors.appBar,
                      AppColors.appBar2,
                    ],
                    stops: const [0.0, 0.5, 1.0],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.menu, size: 30,),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Hello Siddu',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Text('Today you have 4 tasks',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Icon(Icons.waving_hand, color: AppColors.handColor,),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 100,),
                          CircleAvatar(
                            backgroundColor: AppColors.profileColor,
                            backgroundImage: AssetImage('img/profile.png'),
                            radius: 25,
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text('Pinned',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Icon(Icons.arrow_drop_down_circle,),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            // Bottom container overlapping upward
            Transform.translate(
              offset: const Offset(0, -60), // moves it upward slightly
              child: Container(
                height: screenHeight * 1.02,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, -3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0, left: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return dateBox(
                              date: index.toString(),
                              day: 'Sun',
                              color: AppColors.inactiveDate,
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text(
                                'All Task',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.note_alt, color: Colors.black54),
                            ],
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              debugPrint('Tapped!');
                              Navigator.pushNamed(context, AddTask.id);
                            },
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: AppColors.taskBackground,
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                child: Text(
                                  'Add Task',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                            return listItem(
                              title: 'Reading Book',
                              subtitle: '8.00 - 11.00 PM',
                              image: 'img/books.png',
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}


