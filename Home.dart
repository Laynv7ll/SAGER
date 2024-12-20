import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'SignIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SAGER App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الصفحة الرئيسية '),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color(0xFFB1D8E8), Colors.white],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconWithLabel(
                context,
                icon: Icons.settings,
                label: 'حسابي',
                color: Colors.green,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountSettingsP()),
                  );
                },
              ),
              _buildIconWithLabel(
                context,
                icon: Icons.home,
                label: 'ابدأ',
                color: const Color.fromARGB(255, 234, 89, 137),
                onTap: () {
                
                },
              ),
              _buildIconWithLabel(
                context,
                icon: Icons.bar_chart,
                label: 'مهاراتي',
                color: const Color.fromARGB(255, 240, 184, 28),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SkillTrackingPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconWithLabel(BuildContext context,
      {required IconData icon, required String label, required Color color, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 50, color: color),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              color: const Color.fromARGB(255, 74, 103, 94),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class AccountSettingsP extends StatefulWidget {
  @override
  _AccountSettingsP createState() => _AccountSettingsP();
}

class _AccountSettingsP extends State<AccountSettingsP> {
  String? _language = 'العربية';
  File? _imageFile; // لتخزين الصورة الجديدة

  final ImagePicker _picker = ImagePicker();

  // اختيار صورة من المعرض
  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إعدادات الحساب'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: GestureDetector(
                onTap: _pickImage, // عند النقر يتم اختيار صورة جديدة
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: _imageFile != null
                          ? FileImage(_imageFile!)
                          : AssetImage('assets/avatar_placeholder.png') as ImageProvider,
                      child: Icon(Icons.camera_alt, size: 30, color: Colors.white),
                    ),
                    Icon(Icons.edit, size: 20, color: const Color.fromARGB(255, 3, 8, 73)), // رمز القلم
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'البريد الإلكتروني',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                labelText: 'كلمة المرور',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 50),
            DropdownButtonFormField<String>(
              value: _language,
              items: [
                DropdownMenuItem(value: 'العربية', child: Text('العربية')),
                DropdownMenuItem(value: 'English', child: Text('English')), /* OR delete? */
              ],
              onChanged: (value) {
                setState(() {
                  _language = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'اللغة',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // إجراء حفظ الإعدادات
                },
                child: Text('حفظ'),

              ),
            ),
          ],
        ),
      ),
    );
  }
}

// شاشة تتبع المهارات
class SkillTrackingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تقرير المهارات'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SkillCard(skillName: 'القراءة', percentage: 54),
            SkillCard(skillName: 'تكوين الجمل', percentage: 43),
            SkillCard(skillName: 'التواصل', percentage: 54),
          ],
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final String skillName;
  final int percentage;

  SkillCard({required this.skillName, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: CircularProgressIndicator(
          value: percentage / 100,
          backgroundColor: Colors.grey[300],
          color: Colors.green,
        ),
        title: Text(skillName),
        trailing: Text('$percentage%'),
      ),
    );
  }
}

