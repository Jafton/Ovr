import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'terms_and_conditions_model.dart';
export 'terms_and_conditions_model.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({Key? key}) : super(key: key);

  @override
  _TermsAndConditionsWidgetState createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  late TermsAndConditionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsAndConditionsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 16.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              decoration: BoxDecoration(
                                color: Color(0xFF182433),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 24.0, 24.0, 24.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        'AGREEMENT TO OUR LEGAL TERMS',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'We are OVR Performance LLC, doing business as OVR Performance (\"Company,\" \"we,\" \"us,\" \"our\"), a company registered in Florida, United States at Tallahassee, FL.\n\nWe operate the mobile application OVR Connect (the \"App\"), as well as any other related products and services that refer or link to these legal terms (the \"Legal Terms\") (collectively, the \"Services\").\n\nYou can contact us by email at admin@ovrperformance.com or by mail to Tallahassee, FL, United States.\n\nThese Legal Terms constitute a legally binding agreement made between you, whether personally or on behalf of an entity (\"you\"), and OVR Performance LLC, concerning your access to and use of the Services. You agree that by accessing the Services, you have read, understood, and agreed to be bound by all of these Legal Terms. IF YOU DO NOT AGREE WITH ALL OF THESE LEGAL TERMS, THEN YOU ARE EXPRESSLY PROHIBITED FROM USING THE SERVICES AND YOU MUST DISCONTINUE USE IMMEDIATELY.\n\nWe will provide you with prior notice of any scheduled changes to the Services you are using. The modified Legal Terms will become effective upon posting or notifying you by admin@ovrperformance.com, as stated in the email message. By continuing to use the Services after the effective date of any changes, you agree to be bound by the modified terms.\n\nThe Services are intended for users who are at least 13 years of age. All users who are minors in the jurisdiction in which they reside (generally under the age of 18) must have the permission of, and be directly supervised by, their parent or guardian to use the Services. If you are a minor, you must have your parent or guardian read and agree to these Legal Terms prior to you using the Services.\n\nWe recommend that you print a copy of these Legal Terms for your records.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        'TABLE OF CONTENTS',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      '1. OUR SERVICES\n2. INTELLECTUAL PROPERTY RIGHTS\n3. USER REPRESENTATIONS\n4. USER REGISTRATION\n5. PROHIBITED ACTIVITIES\n6. USER GENERATED CONTRIBUTIONS\n7. CONTRIBUTION LICENSE\n8. MOBILE APPLICATION LICENSE\n9. SERVICES MANAGEMENT\n10. PRIVACY POLICY\n11. COPYRIGHT INFRINGEMENTS\n12. TERM AND TERMINATION\n13. MODIFICATIONS AND INTERRUPTIONS\n14. GOVERNING LAW\n15. DISPUTE RESOLUTION\n16. CORRECTIONS\n17. DISCLAIMER\n18. LIMITATIONS OF LIABILITY\n19. INDEMNIFICATION\n20. USER DATA\n21. ELECTRONIC COMMUNICATIONS, TRANSACTIONS, AND SIGNATURES 22. CALIFORNIA USERS AND RESIDENTS\n23. MISCELLANEOUS\n24. CONTACT US',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '1. OUR SERVICES',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'The information provided when using the Services is not intended for distribution to or use by any person or entity in any jurisdiction or country where such distribution or use would be contrary to law or regulation or which would subject us to any registration requirement within such jurisdiction or country. Accordingly, those persons who choose to access the Services from other locations do so on their own initiative and are solely responsible for compliance with local laws, if and to the extent local laws are applicable.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '2. INTELLECTUAL PROPERTY RIGHTS ',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'Our intellectual property\nWe are the owner or the licensee of all intellectual property rights in our Services, including all source code, databases, functionality, software, website designs, audio, video, text, photographs, and graphics in the Services (collectively, the \"Content\"), as well as the trademarks, service marks, and logos contained therein (the \"Marks\").\n\nOur Content and Marks are protected by copyright and trademark laws (and various other intellectual property rights and unfair competition laws) and treaties in the United States and around the world.\n\nThe Content and Marks are provided in or through the Services \"AS IS\" for your personal, non-commercial use or internal business purpose only.\nYour use of our Services\nSubject to your compliance with these Legal Terms, including the \"PROHIBITED ACTIVITIES\" section below, we grant you a non-exclusive, non-transferable, revocable license to:\n    • access the Services; and\n    • download or print a copy of any portion of the Content to which you have properly gained access.\n\nsolely for your personal, non-commercial use or internal business purpose.\n\nExcept as set out in this section or elsewhere in our Legal Terms, no part of the Services and no Content or Marks may be copied, reproduced, aggregated, republished, uploaded, posted, publicly displayed, encoded, translated, transmitted, distributed, sold, licensed, or otherwise exploited for any commercial purpose whatsoever, without our express prior written permission.\n\nIf you wish to make any use of the Services, Content, or Marks other than as set out in this section or elsewhere in our Legal Terms, please address your request to: admin@ovrperformance.com. If we ever grant you the permission to post, reproduce, or publicly display any part of our Services or Content, you must identify us as the owners or licensors of the Services, Content, or Marks and ensure that any copyright or proprietary notice appears or is visible on posting, reproducing, or displaying our Content.\n\nWe reserve all rights not expressly granted to you in and to the Services, Content, and Marks.\n\nAny breach of these Intellectual Property Rights will constitute a material breach of our Legal Terms and your right to use our Services will terminate immediately.\nYour submissions and contributions\nPlease review this section and the \"PROHIBITED ACTIVITIES\" section carefully prior to using our Services to understand the (a) rights you give us and (b) obligations you have when you post or upload any content through the Services.\n\nSubmissions: By directly sending us any question, comment, suggestion, idea, feedback, or other information about the Services (\"Submissions\"), you agree to assign to us all intellectual property rights in such Submission. You agree that we shall own this Submission and be entitled to its unrestricted use and dissemination for any lawful purpose, commercial or otherwise, without acknowledgment or compensation to you.\n\nContributions: The Services may invite you to chat, contribute to, or participate in blogs, message boards, online forums, and other functionality during which you may create, submit, post, display, transmit, publish, distribute, or broadcast content and materials to us or through the Services, including but not limited to text, writings, video, audio, photographs, music, graphics, comments, reviews, rating suggestions, personal information, or other material (\"Contributions\"). Any Submission that is publicly posted shall also be treated as a Contribution.\n\nYou understand that Contributions may be viewable by other users of the Services.\n\nWhen you post Contributions, you grant us a license (including use of your name, trademarks, and logos): By posting any Contributions, you grant us an unrestricted, unlimited, irrevocable, perpetual, non-exclusive, transferable, royalty-free, fully-paid, worldwide right, and license to: use, copy, reproduce, distribute, sell, resell, publish, broadcast, retitle, store, publicly perform, publicly display, reformat, translate, excerpt (in whole or in part), and exploit your Contributions (including, without limitation, your image, name, and voice) for any purpose, commercial, advertising, or otherwise, to prepare derivative works of, or incorporate into other works, your Contributions, and to sublicense the licenses granted in this section. Our use and distribution may occur in any media formats and through any media channels.\n\nThis license includes our use of your name, company name, and franchise name, as applicable, and any of the trademarks, service marks, trade names, logos, and personal and commercial images you provide.\n\nYou are responsible for what you post or upload: By sending us Submissions and/or posting Contributions through any part of the Services or making Contributions accessible through the Services by linking your account through the Services to any of your social networking accounts, you:\n\n    • confirm that you have read and agree with our \"PROHIBITED ACTIVITIES\" and will not post, send, publish, upload, or transmit through the Services any Submission nor post any Contribution that is illegal, harassing, hateful, harmful, defamatory, obscene, bullying, abusive, discriminatory, threatening to any person or group, sexually explicit, false, inaccurate, deceitful, or misleading;\n    • to the extent permissible by applicable law, waive any and all moral rights to any such Submission and/or Contribution;\n    • warrant that any such Submission and/or Contributions are original to you or that you have the necessary rights and licenses to submit such Submissions and/or Contributions and that you have full authority to grant us the above-mentioned rights in relation to your Submissions and/or Contributions; and\n    • warrant and represent that your Submissions and/or Contributions do not constitute confidential information.\n\nYou are solely responsible for your Submissions and/or Contributions and you expressly agree to reimburse us for any and all losses that we may suffer because of your breach of (a) this section, (b) any third party’s intellectual property rights, or (c) applicable law.\n\nWe may remove or edit your Content: Although we have no obligation to monitor any Contributions, we shall have the right to remove or edit any Contributions at any time without notice if in our reasonable opinion we consider such Contributions harmful or in breach of these Legal Terms. If we remove or edit any such Contributions, we may also suspend or disable your account and report you to the authorities.\nCopyright infringement\nWe respect the intellectual property rights of others. If you believe that any material available on or through the Services infringes upon any copyright you own or control, please immediately refer to the \"COPYRIGHT INFRINGEMENTS\" section below.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '3. USER REPRESENTATIONS',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'By using the Services, you represent and warrant that: (1) all registration information you submit will be true, accurate, current, and complete; (2) you will maintain the accuracy of such information and promptly update such registration information as necessary; (3) you have the legal capacity and you agree to comply with these Legal Terms; (4) you are not under the age of 13; (5) you are not a minor in the jurisdiction in which you reside, or if a minor, you have received parental permission to use the Services; (6) you will not access the Services through automated or non-human means, whether through a bot, script or otherwise; (7) you will not use the Services for any illegal or unauthorized purpose; and (8) your use of the Services will not violate any applicable law or regulation.\n\nIf you provide any information that is untrue, inaccurate, not current, or incomplete, we have the right to suspend or terminate your account and refuse any and all current or future use of the Services (or any portion thereof).',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '4. USER REGISTRATION',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'You may be required to register to use the Services. You agree to keep your password confidential and will be responsible for all use of your account and password. We reserve the right to remove, reclaim, or change a username you select if we determine, in our sole discretion, that such username is inappropriate, obscene, or otherwise objectionable.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '5. PROHIBITED ACTIVITIES',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'You may not access or use the Services for any purpose other than that for which we make the Services available. The Services may not be used in connection with any commercial endeavors except those that are specifically endorsed or approved by us.\n\nAs a user of the Services, you agree not to:\n\n    • Systematically retrieve data or other content from the Services to create or compile, directly or indirectly, a collection, compilation, database, or directory without written permission from us.\n    • Trick, defraud, or mislead us and other users, especially in any attempt to learn sensitive account information such as user passwords.\n    • Circumvent, disable, or otherwise interfere with security-related features of the Services, including features that prevent or restrict the use or copying of any Content or enforce limitations on the use of the Services and/or the Content contained therein.\n    • Disparage, tarnish, or otherwise harm, in our opinion, us and/or the Services.\n    • Use any information obtained from the Services in order to harass, abuse, or harm another person.\n    • Make improper use of our support services or submit false reports of abuse or misconduct.\n    • Use the Services in a manner inconsistent with any applicable laws or regulations. Engage in unauthorized framing of or linking to the Services.\n    • Upload or transmit (or attempt to upload or to transmit) viruses, Trojan horses, or other material, including excessive use of capital letters and spamming (continuous posting of repetitive text), that interferes with any party’s uninterrupted use and enjoyment of the Services or modifies, impairs, disrupts, alters, or interferes with the use, features, functions, operation, or maintenance of the Services.\n    • Engage in any automated use of the system, such as using scripts to send comments or messages, or using any data mining, robots, or similar data gathering and extraction tools.\n    • Delete the copyright or other proprietary rights notice from any Content.\n    • Attempt to impersonate another user or person or use the username of another user.\n    • Upload or transmit (or attempt to upload or to transmit) any material that acts as a passive or active information collection or transmission mechanism, including without limitation, clear graphics interchange formats (\"gifs\"), 1×1 pixels, web bugs, cookies, or other similar devices (sometimes referred to as \"spyware\" or \"passive collection mechanisms\" or \"pcms\").\n    • Interfere with, disrupt, or create an undue burden on the Services or the networks or services connected to the Services.\n    • Harass, annoy, intimidate, or threaten any of our employees or agents engaged in providing any portion of the Services to you.\n    • Attempt to bypass any measures of the Services designed to prevent or restrict access to the Services, or any portion of the Services.\n    • Copy or adapt the Services\' software, including but not limited to Flash, PHP, HTML, JavaScript, or other code.\nExcept as permitted by applicable law, decipher, decompile, disassemble, or reverse engineer any of the software comprising or in any way making up a part of the Services.\n    • Except as may be the result of standard search engine or Internet browser usage, use, launch, develop, or distribute any automated system, including without limitation, any spider, robot, cheat utility, scraper, or offline reader that accesses the     • Services, or use or launch any unauthorized script or other software.\n    • Use a buying agent or purchasing agent to make purchases on the Services.\n    • Make any unauthorized use of the Services, including collecting usernames and/or email addresses of users by electronic or other means for the purpose of sending unsolicited email, or creating user accounts by automated means or under false pretenses.\n    • Use the Services as part of any effort to compete with us or otherwise use the Services and/or the Content for any revenue-generating endeavor or commercial enterprise.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '6. USER GENERATED CONTRIBUTIONS',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'You may not access or use the Services for any purpose other than that for which we make the Services available. The Services may not be used in connection with any commercial endeavors except those that are specifically endorsed or approved by us.\n\nAs a user of the Services, you agree not to:\n\n    • Systematically retrieve data or other content from the Services to create or compile, directly or indirectly, a collection, compilation, database, or directory without written permission from us.\n    • Trick, defraud, or mislead us and other users, especially in any attempt to learn sensitive account information such as user passwords.\n    • Circumvent, disable, or otherwise interfere with security-related features of the Services, including features that prevent or restrict the use or copying of any Content or enforce limitations on the use of the Services and/or the Content contained therein.\n    • Disparage, tarnish, or otherwise harm, in our opinion, us and/or the Services.\n    • Use any information obtained from the Services in order to harass, abuse, or harm another person.\n    • Make improper use of our support services or submit false reports of abuse or misconduct.\n    • Use the Services in a manner inconsistent with any applicable laws or regulations. Engage in unauthorized framing of or linking to the Services.\n    • Upload or transmit (or attempt to upload or to transmit) viruses, Trojan horses, or other material, including excessive use of capital letters and spamming (continuous posting of repetitive text), that interferes with any party’s uninterrupted use and enjoyment of the Services or modifies, impairs, disrupts, alters, or interferes with the use, features, functions, operation, or maintenance of the Services.\n    • Engage in any automated use of the system, such as using scripts to send comments or messages, or using any data mining, robots, or similar data gathering and extraction tools.\n    • Delete the copyright or other proprietary rights notice from any Content.\n    • Attempt to impersonate another user or person or use the username of another user.\n    • Upload or transmit (or attempt to upload or to transmit) any material that acts as a passive or active information collection or transmission mechanism, including without limitation, clear graphics interchange formats (\"gifs\"), 1×1 pixels, web bugs, cookies, or other similar devices (sometimes referred to as \"spyware\" or \"passive collection mechanisms\" or \"pcms\").\n    • Interfere with, disrupt, or create an undue burden on the Services or the networks or services connected to the Services.\n    • Harass, annoy, intimidate, or threaten any of our employees or agents engaged in providing any portion of the Services to you.\n    • Attempt to bypass any measures of the Services designed to prevent or restrict access to the Services, or any portion of the Services.\n    • Copy or adapt the Services\' software, including but not limited to Flash, PHP, HTML, JavaScript, or other code.\nExcept as permitted by applicable law, decipher, decompile, disassemble, or reverse engineer any of the software comprising or in any way making up a part of the Services.\n    • Except as may be the result of standard search engine or Internet browser usage, use, launch, develop, or distribute any automated system, including without limitation, any spider, robot, cheat utility, scraper, or offline reader that accesses the     • Services, or use or launch any unauthorized script or other software.\n    • Use a buying agent or purchasing agent to make purchases on the Services.\n    • Make any unauthorized use of the Services, including collecting usernames and/or email addresses of users by electronic or other means for the purpose of sending unsolicited email, or creating user accounts by automated means or under false pretenses.\n    • Use the Services as part of any effort to compete with us or otherwise use the Services and/or the Content for any revenue-generating endeavor or commercial enterprise.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '7. CONTRIBUTION LICENSE',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'By posting your Contributions to any part of the Services, you automatically grant, and you represent and warrant that you have the right to grant, to us an unrestricted, unlimited, irrevocable, perpetual, non-exclusive, transferable, royalty-free, fully-paid, worldwide right, and license to host, use, copy, reproduce, disclose, sell, resell, publish, broadcast, retitle, archive, store, cache, publicly perform, publicly display, reformat, translate, transmit, excerpt (in whole or in part), and distribute such Contributions (including, without limitation, your image and voice) for any purpose, commercial, advertising, or otherwise, and to prepare derivative works of, or incorporate into other works, such Contributions, and grant and authorize sublicenses of the foregoing. The use and distribution may occur in any media formats and through any media channels.\n\nThis license will apply to any form, media, or technology now known or hereafter developed, and includes our use of your name, company name, and franchise name, as applicable, and any of the trademarks, service marks, trade names, logos, and personal and commercial images you provide. You waive all moral rights in your Contributions, and you warrant that moral rights have not otherwise been asserted in your Contributions.\n\nWe do not assert any ownership over your Contributions. You retain full ownership of all of your Contributions and any intellectual property rights or other proprietary rights associated with your Contributions. We are not liable for any statements or representations in your Contributions provided by you in any area on the Services. You are solely responsible for your Contributions to the Services and you expressly agree to exonerate us from any and all responsibility and to refrain from any legal action against us regarding your Contributions.\n\nWe have the right, in our sole and absolute discretion, (1) to edit, redact, or otherwise change any Contributions; (2) to re-categorize any Contributions to place them in more appropriate locations on the Services; and (3) to pre-screen or delete any Contributions at any time and for any reason, without notice. We have no obligation to monitor your Contributions.\n',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '8. MOBILE APPLICATION LICENSE ',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'Use License\nIf you access the Services via the App, then we grant you a revocable, non-exclusive, non-transferable, limited right to install and use the App on wireless electronic devices owned or controlled by you, and to access and use the App on such devices strictly in accordance with the terms and conditions of this mobile application license contained in these Legal Terms. You shall not: (1) except as permitted by applicable law, decompile, reverse engineer, disassemble, attempt to derive the source code of, or decrypt the App; (2) make any modification, adaptation, improvement, enhancement, translation, or derivative work from the App; (3) violate any applicable laws, rules, or regulations in connection with your access or use of the App; (4) remove, alter, or obscure any proprietary notice (including any notice of copyright or trademark) posted by us or the licensors of the App; (5) use the App for any revenue-generating endeavor, commercial enterprise, or other purpose for which it is not designed or intended; (6) make the App available over a network or other environment permitting access or use by multiple devices or users at the same time; (7) use the App for creating a product, service, or software that is, directly or indirectly, competitive with or in any way a substitute for the App; (8) use the App to send automated queries to any website or to send any unsolicited commercial email; or (9) use any proprietary information or any of our interfaces or our other intellectual property in the design, development, manufacture, licensing, or distribution of any applications, accessories, or devices for use with the App.\nApple and Android Devices\nThe following terms apply when you use the App obtained from either the Apple Store or Google Play (each an \"App Distributor\") to access the Services: (1) the license granted to you for our App is limited to a non-transferable license to use the application on a device that utilizes the Apple iOS or Android operating systems, as applicable, and in accordance with the usage rules set forth in the applicable App Distributor’s terms of service; (2) we are responsible for providing any maintenance and support services with respect to the App as specified in the terms and conditions of this mobile application license contained in these Legal Terms or as otherwise required under applicable law, and you acknowledge that each App Distributor has no obligation whatsoever to furnish any maintenance and support services with respect to the App; (3) in the event of any failure of the App to conform to any applicable warranty, you may notify the applicable App Distributor, and the App Distributor, in accordance with its terms and policies, may refund the purchase price, if any, paid for the App, and to the maximum extent permitted by applicable law, the App Distributor will have no other warranty obligation whatsoever with respect to the App; (4) you represent and warrant that (i) you are not located in a country that is subject to a US government embargo, or that has been designated by the US government as a \"terrorist supporting\" country and (ii) you are not listed on any US government list of prohibited or restricted parties; (5) you must comply with applicable third-party terms of agreement when using the App, e.g., if you have a VoIP application, then you must not be in violation of their wireless data service agreement when using the App; and (6) you acknowledge and agree that the App Distributors are third-party beneficiaries of the terms and conditions in this mobile application license contained in these Legal Terms, and that each App Distributor will have the right (and will be deemed to have accepted the right) to enforce the terms and conditions in this mobile application license contained in these Legal Terms against you as a third-party beneficiary thereof.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '9. SERVICES MANAGEMENT',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'We reserve the right, but not the obligation, to: (1) monitor the Services for violations of these Legal Terms; (2) take appropriate legal action against anyone who, in our sole discretion, violates the law or these Legal Terms, including without limitation, reporting such user to law enforcement authorities; (3) in our sole discretion and without limitation, refuse, restrict access to, limit the availability of, or disable (to the extent technologically feasible) any of your Contributions or any portion thereof; (4) in our sole discretion and without limitation, notice, or liability, to remove from the Services or otherwise disable all files and content that are excessive in size or are in any way burdensome to our systems; and (5) otherwise manage the Services in a manner designed to protect our rights and property and to facilitate the proper functioning of the Services.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '10. PRIVACY POLICY',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'We care about data privacy and security. Please review our Privacy Policy located within the OVR Connect application. By using the Services, you agree to be bound by our Privacy Policy, which is incorporated into these Legal Terms. Please be advised the Services are hosted in the United States. If you access the Services from any other region of the world with laws or other requirements governing personal data collection, use, or disclosure that differ from applicable laws in the United States, then through your continued use of the Services, you are transferring your data to the United States, and you expressly consent to have your data transferred to and processed in the United States. Further, we do not knowingly accept, request, or solicit information from children or knowingly market to children. Therefore, in accordance with the U.S. Children’s Online Privacy Protection Act, if we receive actual knowledge that anyone under the age of 13 has provided personal information to us without the requisite and verifiable parental consent, we will delete that information from the Services as quickly as is reasonably practical.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '11. COPYRIGHT INFRINGEMENTS',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'We respect the intellectual property rights of others. If you believe that any material available on or through the Services infringes upon any copyright you own or control, please immediately notify us using the contact information provided below (a \"Notification\"). A copy of your Notification will be sent to the person who posted or stored the material addressed in the Notification. Please be advised that pursuant to applicable law you may be held liable for damages if you make material misrepresentations in a Notification. Thus, if you are not sure that material located on or linked to by the Services infringes your copyright, you should consider first contacting an attorney.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '12. TERM AND TERMINATION',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'These Legal Terms shall remain in full force and effect while you use the Services. WITHOUT LIMITING ANY OTHER PROVISION OF THESE LEGAL TERMS, WE RESERVE THE RIGHT TO, IN OUR SOLE DISCRETION AND WITHOUT NOTICE OR LIABILITY, DENY ACCESS TO AND USE OF THE SERVICES (INCLUDING BLOCKING CERTAIN IP ADDRESSES), TO ANY PERSON FOR ANY REASON OR FOR NO REASON, INCLUDING WITHOUT LIMITATION FOR BREACH OF ANY REPRESENTATION, WARRANTY, OR COVENANT CONTAINED IN THESE LEGAL TERMS OR OF ANY APPLICABLE LAW OR REGULATION. WE MAY TERMINATE YOUR USE OR PARTICIPATION IN THE SERVICES OR DELETE YOUR ACCOUNT AND ANY CONTENT OR INFORMATION THAT YOU POSTED AT ANY TIME, WITHOUT WARNING, IN OUR SOLE DISCRETION.\nIf we terminate or suspend your account for any reason, you are prohibited from registering and creating a new account under your name, a fake or borrowed name, or the name of any third party, even if you may be acting on behalf of the third party. In addition to terminating or suspending your account, we reserve the right to take appropriate legal action, including without limitation pursuing civil, criminal, and injunctive redress.\n',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '13. MODIFICATIONS AND INTERRUPTIONS',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'We reserve the right to change, modify, or remove the contents of the Services at any time or for any reason at our sole discretion without notice. However, we have no obligation to update any information on our Services. We will not be liable to you or any third party for any modification, price change, suspension, or discontinuance of the Services.\nWe cannot guarantee the Services will be available at all times. We may experience hardware, software, or other problems or need to perform maintenance related to the Services, resulting in interruptions, delays, or errors. We reserve the right to change, revise, update, suspend, discontinue, or otherwise modify the Services at any time or for any reason without notice to you. You agree that we have no liability whatsoever for any loss, damage, or inconvenience caused by your inability to access or use the Services during any downtime or discontinuance of the Services. Nothing in these Legal Terms will be construed to obligate us to maintain and support the Services or to supply any corrections, updates, or releases in connection therewith.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '14. GOVERNING LAW',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'These Legal Terms and your use of the Services are governed by and construed in accordance with the laws of the State of Florida applicable to agreements made and to be entirely performed within the State of Florida, without regard to its conflict of law principles.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '15. DISPUTE RESOLUTION ',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'Informal Negotiations\nTo expedite resolution and control the cost of any dispute, controversy, or claim related to these Legal Terms (each a \"Dispute\" and collectively, the \"Disputes\") brought by either you or us (individually, a \"Party\" and collectively, the \"Parties\"), the Parties agree to first attempt to negotiate any Dispute (except those Disputes expressly provided below) informally for at least thirty (30) days before initiating arbitration. Such informal negotiations commence upon written notice from one Party to the other Party.\nBinding Arbitration\nIf the Parties are unable to resolve a Dispute through informal negotiations, the Dispute (except those Disputes expressly excluded below) will be finally and exclusively resolved by binding arbitration. YOU UNDERSTAND THAT WITHOUT THIS PROVISION, YOU WOULD HAVE THE RIGHT TO SUE IN COURT AND HAVE A JURY TRIAL. The arbitration shall be commenced and conducted under the Commercial Arbitration Rules of the American Arbitration Association (\"AAA\") and, where appropriate, the AAA’s Supplementary Procedures for Consumer Related Disputes (\"AAA Consumer Rules\"), both of which are available at the American Arbitration Association (AAA) website. Your arbitration fees and your share of arbitrator compensation shall be governed by the AAA Consumer Rules and, where appropriate, limited by the AAA Consumer Rules. The arbitration may be conducted in person, through the submission of documents, by phone, or online. The arbitrator will make a decision in writing, but need not provide a statement of reasons unless requested by either Party. The arbitrator must follow applicable law, and any award may be challenged if the arbitrator fails to do so. Except where otherwise required by the applicable AAA rules or applicable law, the arbitration will take place in Florida. Except as otherwise provided herein, the Parties may litigate in court to compel arbitration, stay proceedings pending arbitration, or to confirm, modify, vacate, or enter judgment on the award entered by the arbitrator.\n\nIf for any reason, a Dispute proceeds in court rather than arbitration, the Dispute shall be commenced or prosecuted in the state and federal courts located in __________, and the Parties hereby consent to, and waive all defenses of lack of personal jurisdiction, and forum non conveniens with respect to venue and jurisdiction in such state and federal courts. Application of the United Nations Convention on Contracts for the International Sale of Goods and the Uniform Computer Information Transaction Act (UCITA) are excluded from these Legal Terms.\n\nIn no event shall any Dispute brought by either Party related in any way to the Services be commenced more than one (1) years after the cause of action arose. If this provision is found to be illegal or unenforceable, then neither Party will elect to arbitrate any Dispute falling within that portion of this provision found to be illegal or unenforceable and such Dispute shall be decided by a court of competent jurisdiction within the courts listed for jurisdiction above, and the Parties agree to submit to the personal jurisdiction of that court.\nRestrictions\nThe Parties agree that any arbitration shall be limited to the Dispute between the Parties individually. To the full extent permitted by law, (a) no arbitration shall be joined with any other proceeding; (b) there is no right or authority for any Dispute to be arbitrated on a class-action basis or to utilize class action procedures; and (c) there is no right or authority for any Dispute to be brought in a purported representative capacity on behalf of the general public or any other persons.\nExceptions to Informal Negotiations and Arbitration\nThe Parties agree that the following Disputes are not subject to the above provisions concerning informal negotiations binding arbitration: (a) any Disputes seeking to enforce or protect, or concerning the validity of, any of the intellectual property rights of a Party; (b) any Dispute related to, or arising from, allegations of theft, piracy, invasion of privacy, or unauthorized use; and (c) any claim for injunctive relief. If this provision is found to be illegal or unenforceable, then neither Party will elect to arbitrate any Dispute falling within that portion of this provision found to be illegal or unenforceable and such Dispute shall be decided by a court of competent jurisdiction within the courts listed for jurisdiction above, and the Parties agree to submit to the personal jurisdiction of that court.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '16. CORRECTIONS',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'There may be information on the Services that contains typographical errors, inaccuracies, or omissions, including descriptions, pricing, availability, and various other information. We reserve the right to correct any errors, inaccuracies, or omissions and to change or update the information on the Services at any time, without prior notice.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '17. DISCLAIMER',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'THE SERVICES ARE PROVIDED ON AN AS-IS AND AS-AVAILABLE BASIS. YOU AGREE THAT YOUR USE OF THE SERVICES WILL BE AT YOUR SOLE RISK. TO THE FULLEST EXTENT PERMITTED BY LAW, WE DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, IN CONNECTION WITH THE SERVICES AND YOUR USE THEREOF, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON- INFRINGEMENT. WE MAKE NO WARRANTIES OR REPRESENTATIONS ABOUT THE ACCURACY OR COMPLETENESS OF THE SERVICES\' CONTENT OR THE CONTENT OF ANY WEBSITES OR MOBILE APPLICATIONS LINKED TO THE SERVICES AND WE WILL ASSUME NO LIABILITY OR RESPONSIBILITY FOR ANY (1) ERRORS, MISTAKES, OR INACCURACIES OF CONTENT AND MATERIALS, (2) PERSONAL INJURY OR PROPERTY DAMAGE, OF ANY NATURE WHATSOEVER, RESULTING FROM YOUR ACCESS TO AND USE OF THE SERVICES, (3) ANY UNAUTHORIZED ACCESS TO OR USE OF OUR SECURE SERVERS AND/OR ANY AND ALL PERSONAL INFORMATION AND/OR FINANCIAL INFORMATION STORED THEREIN, (4) ANY INTERRUPTION OR CESSATION OF TRANSMISSION TO OR FROM THE SERVICES, (5) ANY BUGS, VIRUSES, TROJAN HORSES, OR THE LIKE WHICH MAY BE TRANSMITTED TO OR THROUGH THE SERVICES BY ANY THIRD PARTY, AND/OR (6) ANY ERRORS OR OMISSIONS IN ANY CONTENT AND MATERIALS OR FOR ANY LOSS OR DAMAGE OF ANY KIND INCURRED AS A RESULT OF THE USE OF ANY CONTENT POSTED, TRANSMITTED, OR OTHERWISE MADE AVAILABLE VIA THE SERVICES. WE DO NOT WARRANT, ENDORSE, GUARANTEE, OR ASSUME RESPONSIBILITY FOR ANY PRODUCT OR SERVICE ADVERTISED OR OFFERED BY A THIRD PARTY THROUGH THE SERVICES, ANY HYPERLINKED WEBSITE, OR ANY WEBSITE OR MOBILE APPLICATION FEATURED IN ANY BANNER OR OTHER ADVERTISING, AND WE WILL NOT BE A PARTY TO OR IN ANY WAY BE RESPONSIBLE FOR MONITORING ANY TRANSACTION BETWEEN YOU AND ANY THIRD-PARTY PROVIDERS OF PRODUCTS OR SERVICES. AS WITH THE PURCHASE OF A PRODUCT OR SERVICE THROUGH ANY MEDIUM OR IN ANY ENVIRONMENT, YOU SHOULD USE YOUR BEST JUDGMENT AND EXERCISE CAUTION WHERE APPROPRIATE.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '18. LIMITATIONS OF LIABILITY',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'IN NO EVENT WILL WE OR OUR DIRECTORS, EMPLOYEES, OR AGENTS BE LIABLE TO YOU OR ANY THIRD PARTY FOR ANY DIRECT, INDIRECT, CONSEQUENTIAL, EXEMPLARY, INCIDENTAL, SPECIAL, OR PUNITIVE DAMAGES, INCLUDING LOST PROFIT, LOST REVENUE, LOSS OF DATA, OR OTHER DAMAGES ARISING FROM YOUR USE OF THE SERVICES, EVEN IF WE HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. NOTWITHSTANDING ANYTHING TO THE CONTRARY CONTAINED HEREIN, OUR LIABILITY TO YOU FOR ANY CAUSE WHATSOEVER AND REGARDLESS OF THE FORM OF THE ACTION, WILL AT ALL TIMES BE LIMITED TO THE AMOUNT PAID, IF ANY, BY YOU TO US DURING THE SIX (6) MONTH PERIOD PRIOR TO ANY CAUSE OF ACTION ARISING. CERTAIN US STATE LAWS AND INTERNATIONAL LAWS DO NOT ALLOW LIMITATIONS ON IMPLIED WARRANTIES OR THE EXCLUSION OR LIMITATION OF CERTAIN DAMAGES. IF THESE LAWS APPLY TO YOU, SOME OR ALL OF THE ABOVE DISCLAIMERS OR LIMITATIONS MAY NOT APPLY TO YOU, AND YOU MAY HAVE ADDITIONAL RIGHTS.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '19. INDEMNIFICATION',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'You agree to defend, indemnify, and hold us harmless, including our subsidiaries, affiliates, and all of our respective officers, agents, partners, and employees, from and against any loss, damage, liability, claim, or demand, including reasonable attorneys’ fees and expenses, made by any third party due to or arising out of: (1) your Contributions; (2) use of the Services; (3) breach of these Legal Terms; (4) any breach of your representations and warranties set forth in these Legal Terms; (5) your violation of the rights of a third party, including but not limited to intellectual property rights; or (6) any overt harmful act toward any other user of the Services with whom you connected via the Services. Notwithstanding the foregoing, we reserve the right, at your expense, to assume the exclusive defense and control of any matter for which you are required to indemnify us, and you agree to cooperate, at your expense, with our defense of such claims. We will use reasonable efforts to notify you of any such claim, action, or proceeding which is subject to this indemnification upon becoming aware of it.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '20. USER DATA',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'We will maintain certain data that you transmit to the Services for the purpose of managing the performance of the Services, as well as data relating to your use of the Services. Although we perform regular routine backups of data, you are solely responsible for all data that you transmit or that relates to any activity you have undertaken using the Services. You agree that we shall have no liability to you for any loss or corruption of any such data, and you hereby waive any right of action against us arising from any such loss or corruption of such data.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '21. ELECTRONIC COMMUNICATIONS, TRANSACTIONS, AND SIGNATURES',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'Visiting the Services, sending us emails, and completing online forms constitute electronic communications. You consent to receive electronic communications, and you agree that all agreements, notices, disclosures, and other communications we provide to you electronically, via email and on the Services, satisfy any legal requirement that such communication be in writing. YOU HEREBY AGREE TO THE USE OF E,LECTRONIC SIGNATURES, CONTRACTS, ORDERS, AND OTHER RECORDS, AND TO ELECTRONIC DELIVERY OF NOTICES, POLICIES, AND RECORDS OF TRANSACTIONS INITIATED OR COMPLETED BY US OR VIA THE SERVICES. You hereby waive any rights or requirements under any statutes, regulations, rules, ordinances, or other laws in any jurisdiction which require an original signature or delivery or retention of non-electronic records, or to payments or the granting of credits by any means other than electronic means.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '22. CALIFORNIA USERS AND RESIDENTS',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'If any complaint with us is not satisfactorily resolved, you can contact the Complaint Assistance Unit of the Division of Consumer Services of the California Department of Consumer Affairs in writing at 1625 North Market Blvd., Suite N 112, Sacramento, California 95834 or by telephone at (800) 952-5210 or (916) 445-1254.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '23. MISCELLANEOUS',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'These Legal Terms and any policies or operating rules posted by us on the Services or in respect to the Services constitute the entire agreement and understanding between you and us. Our failure to exercise or enforce any right or provision of these Legal Terms shall not operate as a waiver of such right or provision. These Legal Terms operate to the fullest extent permissible by law. We may assign any or all of our rights and obligations to others at any time. We shall not be responsible or liable for any loss, damage, delay, or failure to act caused by any cause beyond our reasonable control. If any provision or part of a provision of these Legal Terms is determined to be unlawful, void, or unenforceable, that provision or part of the provision is deemed severable from these Legal Terms and does not affect the validity and enforceability of any remaining provisions. There is no joint venture, partnership, employment or agency relationship created between you and us as a result of these Legal Terms or use of the Services. You agree that these Legal Terms will not be construed against us by virtue of having drafted them. You hereby waive any and all defenses you may have based on the electronic form of these Legal Terms and the lack of signing by the parties hereto to execute these Legal Terms.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '24. CONTACT US',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'In order to resolve a complaint regarding the Services or to receive further information regarding use of the Services, please contact us at:\n\nOVR Performance LLC \nTallahassee, FL\nUnited States\nadmin@ovrperformance.com\n\nThese terms of use were created using Termly\'s Terms and Conditions Generator.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).bgBg,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 10.0,
                        borderWidth: 1.0,
                        buttonSize: 52.0,
                        fillColor: FlutterFlowTheme.of(context).bgBg4,
                        icon: Icon(
                          FFIcons.karrowLeft,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        onPressed: () async {
                          context.safePop();
                        },
                      ),
                      Text(
                        'TERMS &\nCONDITIONS',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                              fontFamily: 'Lulo',
                              fontSize: MediaQuery.sizeOf(context).width < 430.0
                                  ? 24.0
                                  : 36.0,
                              fontWeight: FontWeight.w900,
                              useGoogleFonts: false,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
