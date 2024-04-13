import 'package:flutter/material.dart';
import 'package:quiz_app/question_summery/summery_item.dart';
class QuestionSummary extends StatelessWidget{
const QuestionSummary(this.summeryData,{super.key});

  final List<Map<String,Object>> summeryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summeryData.map((data){
return SummaryItem(data,);
          },
          ).toList(),
        ),
      ),
    ) ;
  }
}