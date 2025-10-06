import 'package:flutter/material.dart';
import 'appcolors.dart' as AppColors;
import 'package:todo_list/widgets/date_box.dart';
class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            // Top smaller container
            Container(
              height: screenHeight * 0.4,
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
            Positioned(
              top: screenHeight * 0.25, // move upward to overlap
              child: Container(
                height: screenHeight * 0.8,
                width: MediaQuery.of(context).size.width,
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
                  padding: const EdgeInsets.only(top: 185.0, left: 20),
                  child: Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              dateBox(date: '01', day: 'Sun', color: AppColors.inactiveDate,),
                              dateBox(date: '02', day: 'Mon',color: AppColors.activeDate,),
                              dateBox(date: '03', day: 'Tue',color: AppColors.inactiveDate,),
                              dateBox(date: '04', day: 'Wed',color: AppColors.inactiveDate,),
                              dateBox(date: '05', day: 'Thu',color: AppColors.inactiveDate,),
                              dateBox(date: '06', day: 'Fri',color: AppColors.inactiveDate,),
                              dateBox(date: '07', day: 'Sat',color: AppColors.inactiveDate,),
                              dateBox(date: '08', day: 'Sun',color: AppColors.inactiveDate,),
                              dateBox(date: '09', day: 'Mon',color: AppColors.inactiveDate,),
                              dateBox(date: '10', day: 'Tue',color: AppColors.inactiveDate,),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Text('All Task',
                              style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.note_alt, color: Colors.black54,),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              listItem(title: 'Reading Book',
                                subtitle: '8.00 - 11.00 PM',
                                image: 'img/books.png',
                              ),
                              listItem(title: 'Working Out',
                                subtitle: '12.00 - 1.00 AM',
                                image: 'img/gym.png',
                              ),
                              listItem(title: 'Sleeping Time',
                                subtitle: '1.00 - 8.00 9M',
                                image: 'img/sleep.jpg',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
      
            // Floating container on top of both
            Positioned(
              top: screenHeight * 0.22,
              child: Row(
                children: [
                  Container(
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      color: AppColors.pinnedTask1,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Image.asset('img/bike.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(height: 10,),
                        Text('Cycling Around',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text('8.00 - 11.00 AM',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      color: AppColors.pinnedTask2,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Image.asset('img/run.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(height: 10,),
                        Text('Feeding Run',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text('4.00 - 5.00 PM',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class listItem extends StatelessWidget {
  const listItem({required this.title, required this.subtitle, required this.image,
    super.key,
  });
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      margin: EdgeInsets.only(right: 20, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border(
          left: BorderSide(
            color: AppColors.taskBorder,
            width: 3.0,
          ),
        ),
        color: AppColors.taskBackground,
      ),
      child: ListTile(
        title: Text(title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(subtitle,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        trailing: Image.asset(image,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}

