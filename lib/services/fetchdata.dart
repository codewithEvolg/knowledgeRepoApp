import 'package:flutterchatui/models/quizResponse.dart';
import 'package:http/http.dart';
import 'dart:convert';



class MultipleChoiceQuestions{
//  int responseCode;
//  List<dynamic> results;

  MultipleChoiceQuestions();

  Future<List<Result>> fetchQuestions() async{
    try {
//      Response response = await get(
//          'https://opentdb.com/api.php?amount=10&category=9&difficulty=easy&type=multiple');
//
//      QuizResponse res = QuizResponse.fromJson(json.decode(response.body));

      var response = {"response_code":0,"results":[{"category":"General Knowledge","type":"multiple","difficulty":"easy","question":"What word represents the letter &#039;T&#039; in the NATO phonetic alphabet?","correct_answer":"Tango","incorrect_answers":["Target","Taxi","Turkey"]},{"category":"General Knowledge","type":"multiple","difficulty":"easy","question":"Which one of the following rhythm games was made by Harmonix?","correct_answer":"Rock Band","incorrect_answers":["Meat Beat Mania","Guitar Hero Live","Dance Dance Revolution"]},{"category":"General Knowledge","type":"multiple","difficulty":"easy","question":"Which of these colours is NOT featured in the logo for Google?","correct_answer":"Pink","incorrect_answers":["Yellow","Blue","Green"]},{"category":"General Knowledge","type":"multiple","difficulty":"easy","question":"What is the Spanish word for &quot;donkey&quot;?","correct_answer":"Burro","incorrect_answers":["Caballo","Toro","Perro"]},{"category":"General Knowledge","type":"multiple","difficulty":"easy","question":"Five dollars is worth how many nickles?","correct_answer":"100","incorrect_answers":["50","25","69"]},{"category":"General Knowledge","type":"multiple","difficulty":"easy","question":"The New York Times slogan is, &ldquo;All the News That&rsquo;s Fit to&hellip;&rdquo;","correct_answer":"Print","incorrect_answers":["Digest","Look","Read"]},{"category":"General Knowledge","type":"multiple","difficulty":"easy","question":"What machine element is located in the center of fidget spinners?","correct_answer":"Bearings","incorrect_answers":["Axles","Gears","Belts"]},{"category":"General Knowledge","type":"multiple","difficulty":"easy","question":"Terry Gilliam was an animator that worked with which British comedy group?","correct_answer":"Monty Python","incorrect_answers":["The Goodies&lrm;","The League of Gentlemen&lrm;","The Penny Dreadfuls"]},{"category":"General Knowledge","type":"multiple","difficulty":"easy","question":"If you are caught &quot;Goldbricking&quot;, what are you doing wrong?","correct_answer":"Slacking","incorrect_answers":["Smoking","Stealing","Cheating"]},{"category":"General Knowledge","type":"multiple","difficulty":"easy","question":"The Flag of the European Union has how many stars on it?","correct_answer":"12","incorrect_answers":["10","14","16"]}]};
      QuizResponse res = QuizResponse.fromJson(response);
      return res.results;
    }
    catch(ex){
      print('Error occurred: $ex');
      throw ex.toString();
    }
  }

}


