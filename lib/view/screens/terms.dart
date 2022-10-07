import 'package:flutter/material.dart';

class TermsSc extends StatelessWidget {
  const TermsSc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text('Terms & Conditions',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text('Terms and Conditions',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 25)),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                    textAlign: TextAlign.center,
                    "By accessing, browsing and/or using all Orange environments existing in whatever form or format including but not limited to website (Web Portal),WAP Portal, USSD Portal, SMS Portal, Interactive Voice Response Portal, On-Device Portal herein referred to as “Orange Medium”, you agree to the following terms class All Orange products and/or services are registered trademarks of The Egyptian Company for Mobile Services (Orange). All Contents in whatever form or format i​ncluding but not limited to (information, communications, wordings, text, images, footages and/or soundtracks, ringtones, sounds contained or available through any Orange environment/Medium are legally provided by Orange, its affiliates, independent content providers and recognized third parties The contents provided on all Orange medium in whatever form or format are protected by relevant copyrights laws and regulations. Accordingly, all rights reserved The contents of any Orange medium cannot be reproduced, modified, transferred, distributed, republished, downloaded, posted or transmitted in any form or by any means including but not limited to electronic, mechanical photocopying or recording or by any other means or technologies, without the prior written authorization of The Egyptian Company for Mobile Services (Orange). You agree that all material, data and content in whatever form or format contained within or is for your own personal use only and may not be used for any commercial purposes or commercially/publicly distributed. Orange will use its reasonable endeavors to maintain all Orange Medium in a fully operational mode. Orange will not be responsible for the results of any defects that may exist beyond its reasonable control or due to any force majeure and/or any third party(s) misconduct. You should not assume that all Orange medium or their respective content are error-free or that it will be suitable for the particular purposes that you have in mind when using them. Orange reserves the right to conduct any changes, modifications and/or replacements, revamping, termination for any existing services and/or products, without any prior notification. It is a condition of us allowing you to access to the information on any Orange Medium, that you accept the Orange terms &amp; conditions. We will not be liable for any action you take relying on the information on such Medium. Orange will not be liable if your use of material or information from any Orange medium that may result in the need for servicing, repair or correction of equipment or data, you assume at all times, any costs related to the above. Orange reserves the right to impose relevant charges for browsing, accessing and purchasing activities to any Orange Mediums. ",
                    style:
                        TextStyle(color: Colors.grey.shade500, fontSize: 16)),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
