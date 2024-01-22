import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Чаты',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF2B333E),
            fontSize: 32,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          width: 335,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          decoration: ShapeDecoration(
            color: const Color(0xFFEDF2F6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/Search_s.svg',
                semanticsLabel: 'Search Icon',
                colorFilter: const ColorFilter.mode(Color(0xFF9DB6CA), BlendMode.srcIn),
              ),
              const SizedBox(width: 6),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Поиск',
                    hintStyle: TextStyle(
                      color: Color(0xFF9DB6CA),
                      fontSize: 16,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    color: Color(0xFF9DB6CA),
                    fontSize: 16,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ChatsListItem extends StatelessWidget {
  const ChatsListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 70,
      padding: const EdgeInsets.only(top: 10, right: 12, bottom: 10),
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(color: Color(0xFFEDF2F6)),
          top: BorderSide(color: Color(0xFFEDF2F6)),
          right: BorderSide(color: Color(0xFFEDF2F6)),
          bottom: BorderSide(width: 1, color: Color(0xFFEDF2F6)),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: ShapeDecoration(
              gradient: const LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0xFF1EDA5E), Color(0xFF31C764)],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(34),
              ),
            ),
            child: const Center(
              child: Text(
                'ВВ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Виктор Власов',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Вы:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF2B333E),
                      fontSize: 12,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Уже сделал?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF5D7A90),
                      fontSize: 12,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Expanded(
            child: SizedBox(
              height: double.infinity,
              child: Text(
                'Вчера',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF5D7A90),
                  fontSize: 12,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
