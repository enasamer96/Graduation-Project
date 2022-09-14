/*import 'package:flutter/material.dart';
/*import 'package:i_am_actually_rich/extentions.dart';
import 'package:i_am_actually_rich/Components/HeaderText.dart';
import 'package:i_am_actually_rich/Components/TextBoxes.dart';
import 'package:i_am_actually_rich/View/SignInScreen.dart';
import 'package:i_am_actually_rich/Components/constants.dart';*/

class test extends StatefulWidget {
  @override
  State<test> createState() => _State();
}

class _State extends State<test> {
  // bool value = false;

  final _formKey =GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _fNameController = TextEditingController();
  TextEditingController _lNameController = TextEditingController();
  TextEditingController _mobNumController = TextEditingController();
  TextEditingController _nationalityController = TextEditingController();
  TextEditingController _birthDateController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _confirmpassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FocusNode focusNode = FocusNode();

    void dispose() {
      focusNode.dispose();

      super.dispose();
    }
    // Size size = MediaQuery.of(context).size;
    var toColor = toColor;
    var toColor2 = toColor;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(

              key: _formKey,
              child: Column(
                children: [
                  Container(
                    //  height: size.height,
                    // width: double.infinity,
                    padding: EdgeInsets.fromLTRB(0, 45, 0, 0),
                    child: Image.asset(
                      'images/VirtueLogo.png', /*width: size.width*3,*/
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(44, 75, 0, 0),
                    child: Text(
                      'Welcome To Virtue!????',
                      style: TextStyle(
                        fontFamily: 'Microsoft PhagsPa',
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: '000000'.toColor2(),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                    child: Text(
                      'Create your account so you can enjoy all th',
                      style: TextStyle(
                          fontFamily: 'Microsoft PhagsPa',
                          fontSize: 14,
                          color: '666666'.toColor()),
                    ),
                  ),
                  HeaderText(
                    text: 'Email',
                    colour: '404040'.toColor(),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  Padding(
                    padding: kInputBoxPadding,
                    child: TextFormField(
                      controller: _emailController,
                      obscureText: false,
                      validator: (String? value) {
                        if(value!.isEmpty) {
                          return 'Username can't be empty!';
                        }
                        return null;
                      },
                      decoration: inputDeco('Enter email address'),
                    ),
                  ),
                  HeaderText(
                    text: 'Mobile Number',
                    colour: '404040'.toColor(),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  reusableTextField('+1', false, _mobNumController), // TODO flag functionality number
                  HeaderText(
                    text: 'Name',
                    colour: '404040'.toColor(),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),

                  Padding(
                    padding: kInputBoxPadding,
                    child: Row(
                      // alignment: WrapAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: dualInputBox('First name', false, _fNameController),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: dualInputBox('Last name', false, _lNameController),
                        ),
                        SizedBox(
                          width: 24,
                        )
                      ],
                    ),
                  ),
                  HeaderText(
                    text: 'Nationality',
                    colour: '404040'.toColor(),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  reusableTextField('Select Nationality', false, _nationalityController), //TODO Nationality functionality
                  HeaderText(
                    text: 'Birth date',
                    colour: '404040'.toColor(),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  reusableTextField('DD / MM / YYYY', false, _birthDateController),
                  HeaderText(
                    text: 'Gender',
                    colour: '404040'.toColor(),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 24),
                        child: Row(
                          children: [
                            // Checkbox(
                            //   //TODO functionality
                            //  value: value,
                            //  onChanged: (value) => this.value = value!,
                            // ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontFamily: 'Microsoft PhagsPa',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Row(
                        children: [
                          // Checkbox(
                          //   //TODO functionality
                          //   value: value,
                          //   onChanged: (value) => this.value = value!,
                          // ),
                          Text(
                            'Female',
                            style: TextStyle(
                              fontFamily: 'Microsoft PhagsPa',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  HeaderText(
                    text: 'Password',
                    colour: '404040'.toColor(),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  reusableTextField('Enter your password', true, _passwordController), //TODO Icon
                  reusableTextField('Confirm your password', true, _confirmpassController),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //TODO needs to be rounded up
                          primary: Colors.red,
                          padding: EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        child: Text('Sign up'), //TODO functionality
                        onPressed: () {
                          if(_formKey.currentState!.validate()){
                            var _email = _emailController;
                          }
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 32),
                    child: Row(
                      //TODO: Functionality
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(' Have an account?'),
                        Text(
                          '  Sing in',
                          style: TextStyle(
                            fontSize: 16,
                            color: '0038FF'.toColor(),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}*/