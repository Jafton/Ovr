import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyWidgetState createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());
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
                        mainAxisSize: MainAxisSize.max,
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
                                    Text(
                                      'This privacy notice for OVR Performance LLC (doing business as OVR Performance) (\"OVR Performance,\" \"we,\" \"us,\" or \"our\"), describes how and why we might collect, store, use, and/or share (\"process\") your information when you use our services (\"Services\"), such as when you:\n    •Download and use our mobile application (OVR Connect), or any other application of ours that links to this privacy notice\n    •Engage with us in other related ways, including any sales, marketing, or events\n\nQuestions or concerns? Reading this privacy notice will help you understand your privacy rights and choices. If you do not agree with our policies and practices, please do not use our Services. If you still have any questions or concerns, please contact us at admin@ovrperformance.com.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        'SUMMARY OF KEY POINTS',
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
                                      'This summary provides key points from our privacy notice, but you can find out more details about any of these topics by clicking the link following each key point or by using our table of contents below to find the section you are looking for.\n\nWhat personal information do we process? When you visit, use, or navigate our Services, we may process personal information depending on how you interact with OVR Performance and the Services, the choices you make, and the products and features you use. Learn more about personal information you disclose to us.\n\nDo we process any sensitive personal information? We do not process sensitive personal information.\n\nDo we receive any information from third parties? We do not receive any information from third parties.\n\nHow do we process your information? We process your information to provide, improve, and administer our Services, communicate with you, for security and fraud prevention, and to comply with law. We may also process your information for other purposes with your consent. We process your information only when we have a valid legal reason to do so. Learn more about how we process your information.\n\nIn what situations and with which parties do we share personal information? We may share information in specific situations and with specific third parties. Learn more about when and with whom we share your personal information.\n\nWhat are your rights? Depending on where you are located geographically, the applicable privacy law may mean you have certain rights regarding your personal information. Learn more about your privacy rights.\n\nHow do you exercise your rights? The easiest way to exercise your rights is by submitting a data subject access request, or by contacting us. We will consider and act upon any request in accordance with applicable data protection laws.\nWant to learn more about what OVR Performance does with any information we collect? Review the privacy notice in full.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
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
                                      '1. WHAT INFORMATION DO WE COLLECT?\n2. HOW DO WE PROCESS YOUR INFORMATION?\n3. WHAT LEGAL BASES DO WE RELY ON TO PROCESS YOUR PERSONAL INFORMATION?\n4. WHEN AND WITH WHOM DO WE SHARE YOUR PERSONAL INFORMATION?\n5. HOW LONG DO WE KEEP YOUR INFORMATION?\n6. WHAT ARE YOUR PRIVACY RIGHTS?\n7. CONTROLS FOR DO-NOT-TRACK FEATURES\n8. DO CALIFORNIA RESIDENTS HAVE SPECIFIC PRIVACY RIGHTS?\n9. DO VIRGINIA RESIDENTS HAVE SPECIFIC PRIVACY RIGHTS?\n10. DO WE MAKE UPDATES TO THIS NOTICE?1\n1. HOW CAN YOU CONTACT US ABOUT THIS NOTICE?\n12. HOW CAN YOU REVIEW, UPDATE, OR DELETE THE DATA WE COLLECT FROM YOU?',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '1. WHAT INFORMATION DO WE COLLECT?',
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
                                      'Personal information you disclose to us\n\nIn Short: We collect personal information that you provide to us.\n\nWe collect personal information that you voluntarily provide to us when you register on the Services, express an interest in obtaining information about us or our products and Services, when you participate in activities on the Services, or otherwise when you contact us.\n\nPersonal Information Provided by You. The personal information that we collect depends on the context of your interactions with us and the Services, the choices you make, and the products and features you use. The personal information we collect may include the following:\n    •Names\n    •Email addresses\n    •Usernames\n    •Passwords\n\nSensitive Information. We do not process sensitive information.\n\nApplication Data. If you use our application(s), we also may collect the following information if you choose to provide us with access or permission:\n    •Mobile Device Access. We may request access or permission to certain features from your mobile device, including your mobile device\'s bluetooth, microphone, camera, and other features. If you wish to change our access or permissions, you may do so in your device\'s settings.\n    •Push Notifications. We may request to send you push notifications regarding your account or certain features of the application(s). If you wish to opt out from receiving these types of communications, you may turn them off in your device\'s settings.\n\nThis information is primarily needed to maintain the security and operation of our application(s), for troubleshooting, and for our internal analytics and reporting purposes.\n\n\nAll personal information that you provide to us must be true, complete, and accurate, and you must notify us of any changes to such personal information.\n\nInformation automatically collected\nIn Short: Some information — such as your Internet Protocol (IP) address and/or browser and device characteristics — is collected automatically when you visit our Services.\n\nWe automatically collect certain information when you visit, use, or navigate the Services. This information does not reveal your specific identity (like your name or contact information) but may include device and usage information, such as your IP address, browser and device characteristics, operating system, language preferences, referring URLs, device name, country, location, information about how and when you use our Services, and other technical information. This information is primarily needed to maintain the security and operation of our Services, and for our internal analytics and reporting purposes.\n\nThe information we collect includes:\n    •Log and Usage Data. Log and usage data is service-related, diagnostic, usage, and performance information our servers automatically collect when you access or use our Services and which we record in log files. Depending on how you interact with us, this log data may include your IP address, device information, browser type, and settings and information about your activity in the Services (such as the date/time stamps associated with your usage, pages and files viewed, searches, and other actions you take such as which features you use), device event information (such as system activity, error reports (sometimes called \"crash dumps\"), and hardware settings).',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '2. HOW DO WE PROCESS YOUR INFORMATION?',
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
                                      'In Short: We process your information to provide, improve, and administer our Services, communicate with you, for security and fraud prevention, and to comply with law. We may also process your information for other purposes with your consent.\n\nWe process your personal information for a variety of reasons, depending on how you interact with our Services, including:\n    •To facilitate account creation and authentication and otherwise manage user accounts. We may process your information so you can create and log in to your account, as well as keep your account in working order.\n    •To send you marketing and promotional communications. We may process the personal information you send to us for our marketing purposes, if this is in accordance with your marketing preferences. You can opt out of our marketing emails at any time. For more information, see \"WHAT ARE YOUR PRIVACY RIGHTS?\" below.\n    •To deliver targeted advertising to you. We may process your information to develop and display personalized content and advertising tailored to your interests, location, and more.\n    •To identify usage trends. We may process information about how you use our Services to better understand how they are being used so we can improve them.\n    •To determine the effectiveness of our marketing and promotional campaigns. We may process your information to better understand how to provide marketing and promotional campaigns that are most relevant to you.\n    •To save or protect an individual\'s vital interest. We may process your information when necessary to save or protect an individual’s vital interest, such as to prevent harm.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '3. WHAT LEGAL BASES DO WE RELY ON TO PROCESS YOUR INFORMATION?',
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
                                      'In Short: We only process your personal information when we believe it is necessary and we have a valid legal reason (i.e., legal basis) to do so under applicable law, like with your consent, to comply with laws, to provide you with services to enter into or fulfill our contractual obligations, to protect your rights, or to fulfill our legitimate business interests.\n\nIf you are located in the EU or UK, this section applies to you.\n\nThe General Data Protection Regulation (GDPR) and UK GDPR require us to explain the valid legal bases we rely on in order to process your personal information. As such, we may rely on the following legal bases to process your personal information:\n    •Consent. We may process your information if you have given us permission (i.e., consent) to use your personal information for a specific purpose. You can withdraw your consent at any time. Learn more about withdrawing your consent.\n    •Legitimate Interests. We may process your information when we believe it is reasonably necessary to achieve our legitimate business interests and those interests do not outweigh your interests and fundamental rights and freedoms. For example, we may process your personal information for some of the purposes described in order to:\n        ◦Send users information about special offers and discounts on our products and services\n        ◦Develop and display personalized and relevant advertising content for our users\n        ◦Analyze how our Services are used so we can improve them to engage and retain users\n        ◦Support our marketing activities\n    •Legal Obligations. We may process your information where we believe it is necessary for compliance with our legal obligations, such as to cooperate with a law enforcement body or regulatory agency, exercise or defend our legal rights, or disclose your information as evidence in litigation in which we are involved.\n    •Vital Interests. We may process your information where we believe it is necessary to protect your vital interests or the vital interests of a third party, such as situations involving potential threats to the safety of any person.\n\nIf you are located in Canada, this section applies to you.\n\nWe may process your information if you have given us specific permission (i.e., express consent) to use your personal information for a specific purpose, or in situations where your permission can be inferred (i.e., implied consent). You can withdraw your consent at any time.\n\nIn some exceptional cases, we may be legally permitted under applicable law to process your information without your consent, including, for example:\n    •If collection is clearly in the interests of an individual and consent cannot be obtained in a timely way\n    •For investigations and fraud detection and prevention\n    •For business transactions provided certain conditions are met\n    •If it is contained in a witness statement and the collection is necessary to assess, process, or settle an insurance claim\n    •For identifying injured, ill, or deceased persons and communicating with next of kin\n    •If we have reasonable grounds to believe an individual has been, is, or may be victim of financial abuse\n    •If it is reasonable to expect collection and use with consent would compromise the availability or the accuracy of the information and the collection is reasonable for purposes related to investigating a breach of an agreement or a contravention of the laws of Canada or a province\n    •If disclosure is required to comply with a subpoena, warrant, court order, or rules of the court relating to the production of records\n    •If it was produced by an individual in the course of their employment, business, or profession and the collection is consistent with the purposes for which the information was produced\n    •If the collection is solely for journalistic, artistic, or literary purposes\n    •If the information is publicly available and is specified by the regulations',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '4. WHEN AND WITH WHOM DO WE SHARE YOUR PERSONAL INFORMATION?',
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
                                      'In Short: We may share information in specific situations described in this section and/or with the following third parties.\n\nWe may need to share your personal information in the following situations:\n    •Business Transfers. We may share or transfer your information in connection with, or during negotiations of, any merger, sale of company assets, financing, or acquisition of all or a portion of our business to another company.\n    •Business Partners. We may share your information with our business partners to offer you certain products, services, or promotions.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '5. HOW LONG DO WE KEEP YOUR INFORMATION?',
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
                                      'In Short: We keep your information for as long as necessary to fulfill the purposes outlined in this privacy notice unless otherwise required by law.\n\nWe will only keep your personal information for as long as it is necessary for the purposes set out in this privacy notice, unless a longer retention period is required or permitted by law (such as tax, accounting, or other legal requirements). No purpose in this notice will require us keeping your personal information for longer than the period of time in which users have an account with us.\n\nWhen we have no ongoing legitimate business need to process your personal information, we will either delete or anonymize such information, or, if this is not possible (for example, because your personal information has been stored in backup archives), then we will securely store your personal information and isolate it from any further processing until deletion is possible.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '6. WHAT ARE YOUR PRIVACY RIGHTS?',
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
                                      'In Short: In some regions, such as the European Economic Area (EEA), United Kingdom (UK), and Canada, you have rights that allow you greater access to and control over your personal information. You may review, change, or terminate your account at any time.\n\nIn some regions (like the EEA, UK, and Canada), you have certain rights under applicable data protection laws. These may include the right (i) to request access and obtain a copy of your personal information, (ii) to request rectification or erasure; (iii) to restrict the processing of your personal information; and (iv) if applicable, to data portability. In certain circumstances, you may also have the right to object to the processing of your personal information. You can make such a request by contacting us by using the contact details provided in the section \"HOW CAN YOU CONTACT US ABOUT THIS NOTICE?\" below.\n\nWe will consider and act upon any request in accordance with applicable data protection laws. \n\nIf you are located in the EEA or UK and you believe we are unlawfully processing your personal information, you also have the right to complain to your Member State data protection authority or UK data protection authority.\n\nIf you are located in Switzerland, you may contact the Federal Data Protection and Information Commissioner.\n\nWithdrawing your consent: If we are relying on your consent to process your personal information, which may be express and/or implied consent depending on the applicable law, you have the right to withdraw your consent at any time. You can withdraw your consent at any time by contacting us by using the contact details provided in the section \"HOW CAN YOU CONTACT US ABOUT THIS NOTICE?\" below or updating your preferences.\n\nHowever, please note that this will not affect the lawfulness of the processing before its withdrawal nor, when applicable law allows, will it affect the processing of your personal information conducted in reliance on lawful processing grounds other than consent.\n\nOpting out of marketing and promotional communications: You can unsubscribe from our marketing and promotional communications at any time by clicking on the unsubscribe link in the emails that we send, or by contacting us using the details provided in the section \"HOW CAN YOU CONTACT US ABOUT THIS NOTICE?\" below. You will then be removed from the marketing lists. However, we may still communicate with you — for example, to send you service-related messages that are necessary for the administration and use of your account, to respond to service requests, or for other non-marketing purposes.\n\nAccount Information\nIf you would at any time like to review or change the information in your account or terminate your account, you can:\n    •Log in to your account settings and update your user account.\n\nUpon your request to terminate your account, we will deactivate or delete your account and information from our active databases. However, we may retain some information in our files to prevent fraud, troubleshoot problems, assist with any investigations, enforce our legal terms and/or comply with applicable legal requirements.\n\nIf you have questions or comments about your privacy rights, you may email us at admin@ovrperformance.com.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '7. CONTROLS FOR DO-NOT-TRACK FEATURES',
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
                                      'Most web browsers and some mobile operating systems and mobile applications include a Do-Not-Track (\"DNT\") feature or setting you can activate to signal your privacy preference not to have data about your online browsing activities monitored and collected. At this stage no uniform technology standard for recognizing and implementing DNT signals has been finalized. As such, we do not currently respond to DNT browser signals or any other mechanism that automatically communicates your choice not to be tracked online. If a standard for online tracking is adopted that we must follow in the future, we will inform you about that practice in a revised version of this privacy notice.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '8. DO CALIFORNIA RESIDENTS HAVE SPECIFIC PRIVACY RIGHTS?',
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
                                      'In Short: Yes, if you are a resident of California, you are granted specific rights regarding access to your personal information.\n\nCalifornia Civil Code Section 1798.83, also known as the \"Shine The Light\" law, permits our users who are California residents to request and obtain from us, once a year and free of charge, information about categories of personal information (if any) we disclosed to third parties for direct marketing purposes and the names and addresses of all third parties with which we shared personal information in the immediately preceding calendar year. If you are a California resident and would like to make such a request, please submit your request in writing to us using the contact information provided below.\n\nIf you are under 18 years of age, reside in California, and have a registered account with Services, you have the right to request removal of unwanted data that you publicly post on the Services. To request removal of such data, please contact us using the contact information provided below and include the email address associated with your account and a statement that you reside in California. We will make sure the data is not publicly displayed on the Services, but please be aware that the data may not be completely or comprehensively removed from all our systems (e.g., backups, etc.).\nCCPA Privacy Notice\nThe California Code of Regulations defines a \"resident\" as:\n(1) every individual who is in the State of California for other than a temporary or transitory purpose and\n(2) every individual who is domiciled in the State of California who is outside the State of California for a temporary or transitory purpose\n\nAll other individuals are defined as \"non-residents.\"\n\nIf this definition of \"resident\" applies to you, we must adhere to certain rights and obligations regarding your personal information.\n\nWhat categories of personal information do we collect?\n\nWe have collected the following categories of personal information in the past twelve (12) months:\n',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    StreamBuilder<
                                        List<PrivacyPolicyTableRecord>>(
                                      stream: queryPrivacyPolicyTableRecord(
                                        queryBuilder:
                                            (privacyPolicyTableRecord) =>
                                                privacyPolicyTableRecord
                                                    .orderBy('order'),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<PrivacyPolicyTableRecord>
                                            dataTablePrivacyPolicyTableRecordList =
                                            snapshot.data!;
                                        return SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Container(
                                            width: 900.0,
                                            height: 400.0,
                                            child: DataTable2(
                                              columns: [
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Category',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'SF Pro Display',
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Examples',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'SF Pro Display',
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Collected',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'SF Pro Display',
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                              rows:
                                                  dataTablePrivacyPolicyTableRecordList
                                                      .mapIndexed((dataTableIndex,
                                                              dataTablePrivacyPolicyTableRecord) =>
                                                          [
                                                            Text(
                                                              dataTablePrivacyPolicyTableRecord
                                                                  .category,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'SF Pro Display',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .txtText2,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                            Text(
                                                              dataTablePrivacyPolicyTableRecord
                                                                  .examples,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'SF Pro Display',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .txtText2,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                            Text(
                                                              dataTablePrivacyPolicyTableRecord
                                                                  .collected,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'SF Pro Display',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .txtText2,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ]
                                                              .map((c) =>
                                                                  DataCell(c))
                                                              .toList())
                                                      .map((e) =>
                                                          DataRow(cells: e))
                                                      .toList(),
                                              headingRowColor:
                                                  MaterialStateProperty.all(
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                              ),
                                              headingRowHeight: 56.0,
                                              dataRowColor:
                                                  MaterialStateProperty.all(
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                              ),
                                              dataRowHeight: 170.0,
                                              border: TableBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              dividerThickness: 5.0,
                                              showBottomBorder: false,
                                              minWidth: 49.0,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    Text(
                                      'CategoryExamplesCollectedA. IdentifiersContact details, such as real name, alias, postal address, telephone or mobile contact number, unique personal identifier, online identifier, Internet Protocol address, email address, and account nameNOB. Personal information categories listed in the California Customer Records statuteName, contact information, education, employment, employment history, and financial informationYESC. Protected classification characteristics under California or federal lawGender and date of birthNOD. Commercial informationTransaction information, purchase history, financial details, and payment informationNOE. Biometric informationFingerprints and voiceprintsNOF. Internet or other similar network activityBrowsing history, search history, online behavior, interest data, and interactions with our and other websites, applications, systems, and advertisementsNOG. Geolocation dataDevice locationNOH. Audio, electronic, visual, thermal, olfactory, or similar informationImages and audio, video or call recordings created in connection with our business activitiesNOI. Professional or employment-related informationBusiness contact details in order to provide you our Services at a business level or job title, work history, and professional qualifications if you apply for a job with usNOJ. Education InformationStudent records and directory informationNOK. Inferences drawn from other personal informationInferences drawn from any of the collected personal information listed above to create a profile or summary about, for example, an individual’s preferences and characteristicsYESL. Sensitive Personal InformationNO\n\nWe will use and retain the collected personal information as needed to provide the Services or for:\n    •Category B - As long as the user has an account with us\n    •Category K - As long as the user has an account with us\n\nWe may also collect other personal information outside of these categories through instances where you interact with us in person, online, or by phone or mail in the context of:\n    •Receiving help through our customer support channels;\n    •Participation in customer surveys or contests; and\n    •Facilitation in the delivery of our Services and to respond to your inquiries.\n\nHow do we use and share your personal information?\n\nMore information about our data collection and sharing practices can be found in this privacy notice.\n\nYou may contact us by contacting us on our website http://www.ovrperformance.com, or by referring to the contact details at the bottom of this document.\n\nIf you are using an authorized agent to exercise your right to opt out we may deny a request if the authorized agent does not submit proof that they have been validly authorized to act on your behalf.\n\nWill your information be shared with anyone else?\n\nWe may disclose your personal information with our service providers pursuant to a written contract between us and each service provider. Each service provider is a for-profit entity that processes the information on our behalf, following the same strict privacy protection obligations mandated by the CCPA.\n\nWe may use your personal information for our own business purposes, such as for undertaking internal research for technological development and demonstration. This is not considered to be \"selling\" of your personal information.\n\nOVR Performance LLC has not disclosed, sold, or shared any personal information to third parties for a business or commercial purpose in the preceding twelve (12) months. OVR Performance LLC will not sell or share personal information in the future belonging to website visitors, users, and other consumers.\n\nYour rights with respect to your personal data\n\nRight to request deletion of the data — Request to delete\n\nYou can ask for the deletion of your personal information. If you ask us to delete your personal information, we will respect your request and delete your personal information, subject to certain exceptions provided by law, such as (but not limited to) the exercise by another consumer of his or her right to free speech, our compliance requirements resulting from a legal obligation, or any processing that may be required to protect against illegal activities.\n\nRight to be informed — Request to know\n\nDepending on the circumstances, you have a right to know:\n    •whether we collect and use your personal information;\n    •the categories of personal information that we collect;\n    •the purposes for which the collected personal information is used;\n    •whether we sell or share personal information to third parties;\n    •the categories of personal information that we sold, shared, or disclosed for a business purpose;\n    •the categories of third parties to whom the personal information was sold, shared, or disclosed for a business purpose;the business or commercial purpose for collecting, selling, or sharing personal information; and\n    •the specific pieces of personal information we collected about you.\n\nIn accordance with applicable law, we are not obligated to provide or delete consumer information that is de-identified in response to a consumer request or to re-identify individual data to verify a consumer request.\n\nRight to Non-Discrimination for the Exercise of a Consumer’s Privacy Rights\n\nWe will not discriminate against you if you exercise your privacy rights.\n\nRight to Limit Use and Disclosure of Sensitive Personal Information\n\nWe do not process consumer\'s sensitive personal information.\n\nVerification process\n\nUpon receiving your request, we will need to verify your identity to determine you are the same person about whom we have the information in our system. These verification efforts require us to ask you to provide information so that we can match it with information you have previously provided us. For instance, depending on the type of request you submit, we may ask you to provide certain information so that we can match the information you provide with the information we already have on file, or we may contact you through a communication method (e.g., phone or email) that you have previously provided to us. We may also use other verification methods as the circumstances dictate.\n\nWe will only use personal information provided in your request to verify your identity or authority to make the request. To the extent possible, we will avoid requesting additional information from you for the purposes of verification. However, if we cannot verify your identity from the information already maintained by us, we may request that you provide additional information for the purposes of verifying your identity and for security or fraud-prevention purposes. We will delete such additionally provided information as soon as we finish verifying you.\n\nOther privacy rights\n    •You may object to the processing of your personal information.\n    •You may request correction of your personal data if it is incorrect or no longer relevant, or ask to restrict the processing of the information.\n    •You can designate an authorized agent to make a request under the CCPA on your behalf. We may deny a request from an authorized agent that does not submit proof that they have been validly authorized to act on your behalf in accordance with the CCPA.\n    •You may request to opt out from future selling or sharing of your personal information to third parties. Upon receiving an opt-out request, we will act upon the request as soon as feasibly possible, but no later than fifteen (15) days from the date of the request submission.\n\nTo exercise these rights, you can contact us  Contacting us on our website http://www.ovrperformance.com, or by referring to the contact details at the bottom of this document. If you have a complaint about how we handle your data, we would like to hear from you.\n',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '9. DO VIRGINIA RESIDENTS HAVE SPECIFIC PRIVACY RIGHTS?',
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
                                      'In Short: Yes, if you are a resident of Virginia, you may be granted specific rights regarding access to and use of your personal information.\n\nVirginia CDPA Privacy Notice\n\nUnder the Virginia Consumer Data Protection Act (CDPA):\n\n\"Consumer\" means a natural person who is a resident of the Commonwealth acting only in an individual or household context. It does not include a natural person acting in a commercial or employment context.\n\n\"Personal data\" means any information that is linked or reasonably linkable to an identified or identifiable natural person. \"Personal data\" does not include de-identified data or publicly available information.\n\n\"Sale of personal data\" means the exchange of personal data for monetary consideration.\n\nIf this definition \"consumer\" applies to you, we must adhere to certain rights and obligations regarding your personal data.\n\nThe information we collect, use, and disclose about you will vary depending on how you interact with OVR Performance LLC and our Services. To find out more, please visit the following links:\n    •Personal data we collect\n    •How we use your personal data\n    •When and with whom we share your personal data\n\nYour rights with respect to your personal data\n\n    •Right to be informed whether or not we are processing your personal data\n    •Right to access your personal data\n    •Right to correct inaccuracies in your personal data\n    •Right to request deletion of your personal data\n    •Right to obtain a copy of the personal data you previously shared with us\n    •Right to opt out of the processing of your personal data if it is used for targeted advertising, the sale of personal data, or profiling in furtherance of decisions that produce legal or similarly significant effects (\"profiling\")\n\nOVR Performance LLC has not sold any personal data to third parties for business or commercial purposes. OVR Performance LLC will not sell personal data in the future belonging to website visitors, users, and other consumers.\n\nExercise your rights provided under the Virginia CDPA\n\nMore information about our data collection and sharing practices can be found in this privacy notice.\n\nYou may contact us by email at admin@ovrperformance.com, by submitting a data subject access request, or by referring to the contact details at the bottom of this document.\n\nIf you are using an authorized agent to exercise your rights, we may deny a request if the authorized agent does not submit proof that they have been validly authorized to act on your behalf.\n\nVerification process\n\nWe may request that you provide additional information reasonably necessary to verify you and your consumer\'s request. If you submit the request through an authorized agent, we may need to collect additional information to verify your identity before processing your request.\n\nUpon receiving your request, we will respond without undue delay, but in all cases, within forty-five (45) days of receipt. The response period may be extended once by forty-five (45) additional days when reasonably necessary. We will inform you of any such extension within the initial 45-day response period, together with the reason for the extension.\n\nRight to appeal\n\nIf we decline to take action regarding your request, we will inform you of our decision and reasoning behind it. If you wish to appeal our decision, please email us at admin@ovrperformance.com. Within sixty (60) days of receipt of an appeal, we will inform you in writing of any action taken or not taken in response to the appeal, including a written explanation of the reasons for the decisions. If your appeal if denied, you may contact the Attorney General to submit a complaint.\n',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '10. DO WE MAKE UPDATES TO THIS NOTICE?',
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
                                      'In Short: Yes, we will update this notice as necessary to stay compliant with relevant laws.\n\nWe may update this privacy notice from time to time. The updated version will be indicated by an updated \"Revised\" date and the updated version will be effective as soon as it is accessible. If we make material changes to this privacy notice, we may notify you either by prominently posting a notice of such changes or by directly sending you a notification. We encourage you to review this privacy notice frequently to be informed of how we are protecting your information.\n',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '11. HOW CAN YOU CONTACT US ABOUT THIS NOTICE?',
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
                                      'If you have questions or comments about this notice, you may email us at admin@ovrperformance.com or contact us by post at:\n\nOVR Performance LLC, FL\nUnited States',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 5.0),
                                      child: Text(
                                        '12. HOW CAN YOU REVIEW, UPDATE, OR DELETE THE DATA WE COLLECT FROM YOU?',
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
                                      'You have the right to request access to the personal information we collect from you, change that information, or delete it. To request to review, update, or delete your personal information, please fill out and submit a data subject access request.\n\nThis privacy policy was created using Termly\'s Privacy Policy Generator.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
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
                        'PRIVACY\nPOLICY',
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
