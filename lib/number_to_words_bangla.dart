library number_to_words_bangla;

/// Number to Bangla Words Converter.
class NumberToWordsBangla {
  Map<String, String> engToBn = {
    '1': '১',
    '2': '২',
    '3': '৩',
    '4': '৪',
    '5': '৫',
    '6': '৬',
    '7': '৭',
    '8': '৮',
    '9': '৯',
    '0': '০'
  };
  Map<String, String> numToBd = {
    '1': 'এক',
    '2': 'দুই',
    '3': 'তিন',
    '4': 'চার',
    '5': 'পাঁচ',
    '6': 'ছয়',
    '7': 'সাত',
    '8': 'আট',
    '9': 'নয়',
    '10': 'দশ',
    '11': 'এগার',
    '12': 'বার',
    '13': 'তের',
    '14': 'চৌদ্দ',
    '15': 'পনের',
    '16': 'ষোল',
    '17': 'সতের',
    '18': 'আঠার',
    '19': 'ঊনিশ',
    '20': 'বিশ',
    '21': 'একুশ',
    '22': 'বাইশ',
    '23': 'তেইশ',
    '24': 'চব্বিশ',
    '25': 'পঁচিশ',
    '26': 'ছাব্বিশ',
    '27': 'সাতাশ',
    '28': 'আটাশ',
    '29': 'ঊনত্রিশ',
    '30': 'ত্রিশ',
    '31': 'একত্রিশ',
    '32': 'বত্রিশ',
    '33': 'তেত্রিশ',
    '34': 'চৌত্রিশ',
    '35': 'পঁয়ত্রিশ',
    '36': 'ছত্রিশ',
    '37': 'সাঁইত্রিশ',
    '38': 'আটত্রিশ',
    '39': 'ঊনচল্লিশ',
    '40': 'চল্লিশ',
    '41': 'একচল্লিশ',
    '42': 'বিয়াল্লিশ',
    '43': 'তেতাল্লিশ',
    '44': 'চুয়াল্লিশ',
    '45': 'পঁয়তাল্লিশ',
    '46': 'ছেচল্লিশ',
    '47': 'সাতচল্লিশ',
    '48': 'আটচল্লিশ',
    '49': 'ঊনপঞ্চাশ',
    '50': 'পঞ্চাশ',
    '51': 'একান্ন',
    '52': 'বায়ান্ন',
    '53': 'তিপ্পান্ন',
    '54': 'চুয়ান্ন',
    '55': 'পঞ্চান্ন',
    '56': 'ছাপ্পান্ন',
    '57': 'সাতান্ন',
    '58': 'আটান্ন',
    '59': 'ঊনষাট',
    '60': 'ষাট',
    '61': 'একষট্টি',
    '62': 'বাষট্টি',
    '63': 'তেষট্টি',
    '64': 'চৌষট্টি',
    '65': 'পঁয়ষট্টি',
    '66': 'ছেষট্টি',
    '67': 'সাতষট্টি',
    '68': 'আটষট্টি',
    '69': 'ঊনসত্তর',
    '70': 'সত্তর',
    '71': 'একাত্তর',
    '72': 'বাহাত্তর',
    '73': 'তিয়াত্তর',
    '74': 'চুয়াত্তর',
    '75': 'পঁচাত্তর',
    '76': 'ছিয়াত্তর',
    '77': 'সাতাত্তর',
    '78': 'আটাত্তর',
    '79': 'ঊনআশি',
    '80': 'আশি',
    '81': 'একাশি',
    '82': 'বিরাশি',
    '83': 'তিরাশি',
    '84': 'চুরাশি',
    '85': 'পঁচাশি',
    '86': 'ছিয়াশি',
    '87': 'সাতাশি',
    '88': 'আটাশি',
    '89': 'ঊননব্বই',
    '90': 'নব্বই',
    '91': 'একানব্বই',
    '92': 'বিরানব্বই',
    '93': 'তিরানব্বই',
    '94': 'চুরানব্বই',
    '95': 'পঁচানব্বই',
    '96': 'ছিয়ানব্বই',
    '97': 'সাতানব্বই',
    '98': 'আটানব্বই',
    '99': 'নিরানব্বই'
  };
  Map<String, String> numToBnDecimal = {
    '0': 'শূন্য ',
    '1': 'এক ',
    '2': 'দুই ',
    '3': 'তিন ',
    '4': 'চার ',
    '5': 'পাঁচ ',
    '6': 'ছয় ',
    '7': 'সাত ',
    '8': 'আট ',
    '9': 'নয় '
  };

  String numToBnDecimalConvert(String number) {
    return number.replaceAllMapped(RegExp(r'\d'), (match) => numToBnDecimal[match.group(0)]!);
  }

  String hundred = 'শত';
  String thousand = 'হাজার';
  String lakh = 'লক্ষ';
  String crore = 'কোটি';

  String engToBnConvert({required String englishNumber}) {
    return englishNumber.replaceAllMapped(RegExp(r'\d'), (match) => engToBn[match.group(0)]!);
  }

  String numToWord(num number) {
    if (number > 9999999) {
      return croreToWord(number);
    } else if (number > 99999) {
      return lakhToWord(number);
    } else if (number > 999) {
      return thousandToWord(number);
    } else if (number > 99) {
      return hundredToWord(number);
    } else {
      return underHundredToWord(number);
    }
  }

  String underHundredToWord(num number) {
    String word = numToBd[number.toString()] ?? '';
    return word;
  }

  String hundredToWord(num number) {
    num a = number ~/ 100;
    num b = number % 100;
    String hundred = (a == 0) ? '' : numToWord(a) + ' ' + this.hundred;
    return hundred + (a == 0 ? '' : ' ') + underHundredToWord(b);
    // return hundred + ' ' + underHundredToWord(b);
  }

  String thousandToWord(num number) {
    num a = number ~/ 1000;
    num b = number % 1000;
    String thousand = (a == 0) ? '' : numToWord(a) + ' ' + this.thousand;
    // return thousand + ' ' + hundredToWord(b);
    return thousand + (a == 0 ? '' : ' ') + hundredToWord(b);
  }

  String lakhToWord(num number) {
    num a = number ~/ 100000;
    num b = number % 100000;
    String lakh = (a == 0) ? '' : numToWord(a) + ' ' + this.lakh;
    return lakh + (a == 0 ? '' : ' ') + thousandToWord(b);
    return lakh + ' ' + thousandToWord(b);
  }

  String croreToWord(num number) {
    num a = number ~/ 10000000;
    num b = number % 10000000;
    String moreThanCore = (a > 99) ? lakhToWord(a) : numToWord(a);
    return '$moreThanCore${a == 0 ? '' : ' '}$crore ${lakhToWord(b)}';
    // return moreThanCore + ' ' + crore + ' ' + lakhToWord(b);
  }


  String inputNumberConvertToBanglaWord({required String inputNumber}){

    String firstNumberConvertedBanglaWord="";
    String secondNumberConvertedBanglaWord="";


    double parsedNumber = double.parse(inputNumber);
    int beforeDotNumber = parsedNumber.toInt();
    firstNumberConvertedBanglaWord=numToWord(beforeDotNumber) ;


    if(inputNumber.contains(".")){
      String afterDecimal = inputNumber.split(".")[1];
      secondNumberConvertedBanglaWord = " দশমিক ${numToBnDecimalConvert(afterDecimal)}";
    }


    return firstNumberConvertedBanglaWord+secondNumberConvertedBanglaWord;
  }

}