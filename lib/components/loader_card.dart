import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoaderCard extends StatefulWidget {
  final Widget child;
  final String head;
  final String subhead;
  const LoaderCard({ Key? key, required this.child, required this.head, required this.subhead }) : super(key: key);

  @override
  State<LoaderCard> createState() => _LoaderCardState();
}

class _LoaderCardState extends State<LoaderCard> {
  Border borderOnIdle = Border.all(color: Colors.transparent, width: 0);
  Border borderOnHover = Border.all(color: const Color(0xffd7d7d7), width: 1.5);
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHovering = false;
        });
      },
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        splashColor: Colors.white,
        hoverColor: Colors.transparent,
        onTap: () {}, 
        child: Ink( 
          width: 300,
          height: 400,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 90),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: _isHovering ? borderOnHover : borderOnIdle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(10, 10),
                blurRadius: 30,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(child: widget.child),
              const SizedBox(height: 50),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(widget.head, style: GoogleFonts.urbanist(fontSize: 22, fontWeight: FontWeight.normal, color: const Color(0xff000000), letterSpacing: 0.75)),
                  const SizedBox(height: 20),
                  Text(widget.subhead, style:  GoogleFonts.urbanist(fontSize: 16, fontWeight: FontWeight.normal, color: const Color(0xff9b9b9b), letterSpacing: 0.75),),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}

