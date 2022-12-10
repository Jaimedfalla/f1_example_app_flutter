import 'package:app_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10
        ),
        children: const [
          CustomCard1(),
          SizedBox(height: 10),
          CustomCardType2(
            url: 'https://img.redbull.com/images/c_crop,x_0,y_0,h_1080,w_1620/c_fill,w_1500,h_1000/q_auto,f_auto/redbullcom/2020/5/10/zhongldfe9bfwrx7mun9/alex-albon-virtual-f1-spain',
            label: 'Red Bull Racing'
          ),
          SizedBox(height: 10),
          CustomCardType2(
            url: 'https://lh3.googleusercontent.com/proxy/rv0fDT_L-Xoyqm5BwxsKNCGM3kMbb2FG78mRKyvRg5CruDkiIPNkW7q9nyZAhlpGpbZLOo3HWPpIAFRJuEiYhUSAQFZ7YLA01kprRC1ph2SqhO193b--d64noa2aiLRBjlY=w1200-h630-p-k-no-nu',
            label: 'Alpine',
          ),
          CustomCardType2(
            url: 'https://www.racedepartment.com/attachments/__custom_showroom_1584965936-jpg.357076/',
            label: 'Ferrari',
          )
        ],
      ),
    );
  }
}