import 'package:covid/View/worlds_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetialScreen extends StatefulWidget {
  String name;
  String image;
 int? totalCases, deaths, recovered, active , critical, todayRecovered,test;

 DetialScreen({required this.name,
               required this.image,
               required this.totalCases,
               required this.deaths,
               required this.todayRecovered,
               required this.active,
               required this.critical,
               required this.test,
               required this.recovered,


 });

  @override
  State<DetialScreen> createState() => _DetialScreenState();
}

class _DetialScreenState extends State<DetialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text(widget.name),
     centerTitle: true,
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * .067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*.06,),
                      ReusableRow(title: 'Cases', value: widget.totalCases.toString()),
                      ReusableRow(title: 'Recovered', value: widget.todayRecovered.toString()),
                      ReusableRow(title: ' Death', value: widget.deaths.toString()),
                      ReusableRow(title: 'Critical', value: widget.critical.toString()),
                      ReusableRow(title: 'test', value: widget.test.toString()),
                      ReusableRow(title: 'Total Recovered', value: widget.recovered.toString()),





                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              )

            ],
          )
        ],
      ),

    );



  }
}
