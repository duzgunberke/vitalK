import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:piano_ls/src/constants/colors.dart';
import 'package:piano_ls/src/features/core/screens/dashboard/widgets/dashboard_appbar_widget.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechScreen extends StatefulWidget {
  const SpeechScreen({super.key});

  @override
  State<SpeechScreen> createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {
  SpeechToText speechToText = SpeechToText();

  var text = "Butona basılı tutun ve konuşun";
  var isListening = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: AvatarGlow(
          duration: const Duration(milliseconds: 2000),
          glowColor: tSecondaryColor,
          repeat: true,
          animate: isListening,
          endRadius: 75.0,
          repeatPauseDuration: const Duration(milliseconds: 100),
          showTwoGlows: true,
          child: GestureDetector(
            onTapDown: (details) async {
              if (!isListening) {
                var available = await speechToText.initialize();
                print("Konuşma tanıma başlatıldı: $available");
                if (available) {
                  setState(() {
                    isListening = true;
                    speechToText.listen(onResult: (result) {
                      setState(() {
                        text = result.recognizedWords;
                      });
                    });
                  });
                }
              }
            },
            onTapUp: (details) {
              setState(() {
                isListening = false;
              });
              speechToText.stop();
              print("Konuşma tanıma başlatıldı: $text");
            },
            child: CircleAvatar(
              backgroundColor: tPrimaryColor,
              radius: 35,
              child: Icon(isListening ? Icons.mic : Icons.mic_none,
                  color: Colors.white),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: const DashboardAppBar(),
        body: SingleChildScrollView(
          reverse: true,
          physics: const BouncingScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            margin: const EdgeInsets.only(bottom: 150),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 24,
                  color: isListening ? Colors.black87 : Colors.black54,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ));
  }
}
