import 'package:flutter/material.dart';
import 'package:todo_list/appcolors.dart' as AppColors;
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class TaskScreen extends StatefulWidget {
  static const String id = 'task_page';
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
   String? _selectedItem;
  final List<String> _dropDownItems = ['Today', 'Tomorrow', 'Next week'];

  @override
  Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.taskBackground,
          body: FooterView(
            footer: Footer(
              padding: EdgeInsets.all(10.0),
              child: Padding(
                padding: EdgeInsets.only(left: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Completed today',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.delete,),
                    ),
                  ],
                ),
              ),
            ),
            flex: 3,
            children:<Widget>[
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.taskBackground,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.close),
                              hoverColor: Colors.white60,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            elevation: 2.0,
                            margin: EdgeInsets.only(top: 10, left: 15, right: 15,),
                            child: ListTile(
                              leading: Checkbox(
                                  value: false,
                                  onChanged: (bool? value) {
                                    //   set functionality
                                  }),
                              title: Text('Reading Book'),
                              subtitle: Text('8.00 - 11.00 PM'),
                              trailing: Icon(Icons.star_border),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Card(
                            elevation: 2.0,
                            margin: EdgeInsets.only(left: 15, right: 15,),
                            child: Column(
                              children: [
                                ListTile(
                                    leading: Icon(Icons.notifications_active),
                                    title: Text('Remind me at 4.00 PM'),
                                    subtitle: Text('Today'),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        DropdownButton<String>(
                                          value: _selectedItem,
                                          items: _dropDownItems.map<DropdownMenuItem<String>>((String item) {
                                            return DropdownMenuItem<String>(
                                                value: item,
                                                child: Text(item));
                                          }).toList(),
                                          onChanged: (String? newValue){
                                            setState(() {
                                              _selectedItem = newValue;
                                            });
                                          },
                                          onTap: (){
                                            //   calendar picker
                                          },
                                        ),
                                        SizedBox(width: 8,),
                                        IconButton(
                                          onPressed: () {
                                            //   clear the reminder
                                          },
                                          icon: Icon(Icons.close),
                                          hoverColor: Colors.white60,
                                        ),
                                      ],
                                    ),
                                    hoverColor: Colors.white60,
                                    onTap: () {
                                      //     dropdown
                                    }
                                ),
                                Divider(
                                  indent: 15,
                                  endIndent: 15,
                                  thickness: 2,
                                  color: Colors.black54,
                                ),
                                ListTile(
                                  leading: Icon(Icons.calendar_month_outlined),
                                  title: Text('Add due date'),
                                  hoverColor: Colors.white60,
                                  onTap: () {
                                    //     dropdown
                                  },
                                  trailing: DropdownButton<String>(
                                    value: _selectedItem,
                                    items: _dropDownItems.map<DropdownMenuItem<String>>((String item) {
                                      return DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(item));
                                    }).toList(),
                                    onChanged: (String? newValue){
                                      setState(() {
                                        _selectedItem = newValue;
                                      });
                                    },
                                    onTap: (){
                                      //   calendar picker
                                    },
                                  ),

                                ),
                                Divider(
                                  indent: 15,
                                  endIndent: 15,
                                  thickness: 2,
                                  color: Colors.black54,
                                ),
                                ListTile(
                                  leading: Icon(Icons.loop),
                                  title: Text('Repeat'),
                                  hoverColor: Colors.white60,
                                  onTap: () {
                                    //     dropdown
                                  },
                                  trailing: DropdownButton<String>(
                                    value: _selectedItem,
                                    items: _dropDownItems.map<DropdownMenuItem<String>>((String item) {
                                      return DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(item));
                                    }).toList(),
                                    onChanged: (String? newValue){
                                      setState(() {
                                        _selectedItem = newValue;
                                      });
                                    },
                                    onTap: (){
                                      //   calendar picker
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          Card(
                            elevation: 2.0,
                            margin: EdgeInsets.only(left: 15, right: 15,),
                            child: TextField(
                              minLines: 3,
                              maxLines: null,
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                hintText: 'Add Note...',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }


