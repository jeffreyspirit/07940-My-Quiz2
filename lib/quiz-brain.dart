import 'question.dart';
class QuizBrain {

  int _questionNumber = 0;

  //TODO 1: ปรับเปลี่ยนหรือเพิ่มชุดคำถามใน questionBank ให้มีอย่างน้อย 5 คำถาม
  List<Question> _questionBank=[
    Question(q: 'สีประจำโรงเรียน MWIT คือ น้ำเงิน-เหลือง', a: true),
    Question(q: 'ปลาวาฬ เป็น ปลา', a: false),
    Question(q: 'ถ้าสัตว์ปีกทุกตัวบินได้ ปลามีปีก ปลาบินได้', a: false),
    Question(q: 'ต่อมใต้สมองส่วนหลัง คือ anterior pituitary', a: false),
    Question(q: 'กฎหมายอาญาเป็นกฎหมายมหาชน', a: true),
    Question(q: 'ปี 2022 CR7 เป็นคนยิงประตูมากที่สุดในวงการฟุตบอล', a: true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length-1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

}