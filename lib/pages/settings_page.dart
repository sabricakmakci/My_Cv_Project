import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/pages/signin_page.dart';
import 'package:untitled/reusable_widgets/reusable_iconwidget.dart';
import 'package:url_launcher/url_launcher.dart';



class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            buildHeader(),
            SizedBox(height: 32,),
            buildUserTile(),
            buildDivider(),
            buildAccountSettings(),
            buildNotification(),
            buildLogout(),
            buildDeleteAcount(),
            buildDivider(),
            buildPhone(),
            buildGmail(),
            buildFacebook()
          ],
        ),
      ),
    );
  }

  Widget buildHeader() => Center(
    child: Text(
        'Settings',
      style: TextStyle(fontSize: 40),
    ),
  );

  Widget buildUserTile(){
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage("assets/images/img.png"),
      ),
      title: Text('Sabri Cakmakci',style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text('Jr. Mobile App Developer'),

    );
  }

  Widget buildDivider(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: Divider(
        thickness: 1.5,
      ),

    );
  }

  Widget buildLogout() {
    return ListTile(
      title:Text(
          'LogOut'
      ),
      leading: IconWidget(icon: Icons.logout, color: Colors.blue),
    onTap: () {
        FirebaseAuth.instance.signOut().then((value) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage() ));
        });
    },
    );
  }

  Widget buildAccountSettings() {
    return ListTile(
      title: Text(
        'Account Settings',),
      subtitle: Text('Privacy, Security, Language'),
      leading: IconWidget(icon: Icons.person, color: Colors.green),
      onTap: () {},
    );
  }

  Widget buildNotification() {
    return ListTile(
      title: Text(
        'Notification ',),
      subtitle: Text('New Letters, App Update'),
      leading: IconWidget(icon: Icons.notifications, color: Colors.orange),
      onTap: () {},
    );
  }

  Widget buildDeleteAcount() {
    return ListTile(
    title:Text(
        'Delete Acount'
    ),
    leading: IconWidget(icon: Icons.delete, color: Colors.pink),
    onTap: () {},
    );
  }

  Widget buildPhone() {
    return ListTile(
      title:Text(
          '+905393720253'
      ),
      leading: IconWidget(icon: Icons.phone, color: Colors.grey),
      onTap: () async {
        final url = Uri.parse('sms:+05393720253');
        if(await canLaunchUrl(url)){
          await launchUrl(url);
        }else{
          throw 'Could not launch $url';
        }
       },
    );
  }

  Widget buildGmail() {
    return ListTile(
      title:Text(
          'cakmakcisabrii@gmail.com'
      ),
      leading: IconWidget(icon: Icons.mail, color: Colors.red),
      onTap: () async{
        final url = Uri.parse('mailto:cakmakcisabrii@gmail.com');
        if(await canLaunchUrl(url)){
        await launchUrl(url);
        }else{
        throw 'Could not launch $url';
        }
      },
    );
  }

  Widget buildFacebook() {
    return ListTile(
      title:Text(
          'SabriCakmakci'
      ),
      leading: IconWidget(icon: Icons.facebook, color: Colors.blueAccent),
      onTap: () async {
        final url = Uri.parse('https://www.facebook.com/MATADOR1953/');
        if(await canLaunchUrl(url)){
        await launchUrl(url);
        }else{
        throw 'Could not launch $url';
        }

        },
    );
  }

}
