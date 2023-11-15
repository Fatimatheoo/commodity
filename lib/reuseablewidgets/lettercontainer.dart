import 'package:commodity/provider/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utilitis/colors.dart';
import '../utilitis/gaps.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final userprovider = Provider.of<UserProvider>(context);
    return Container(
      width: ScreenWidth(context)*0.9,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppTheme.gray
      ),
      child: FutureBuilder(
        future: userprovider.fetchUsername(),
        builder: (context,snapshot){
        if(snapshot.hasData){
         var first = userprovider.username;
          var firstletter = first.substring(0,1).toUpperCase();
        return Row(
          children: [
            Container(
            width: 50,height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: AppTheme.gradient
          ),
          child: Center(child: Text('${firstletter}',style: T19textStyle,)),
            ),
            HorizontalGap(15),
            Text('${userprovider.username}',style: T13textStyle,)
          ],
        );
    }else{
          return CircularProgressIndicator();
        }
    }
      ),
    );
  }
}
