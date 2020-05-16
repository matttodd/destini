import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
      'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
      Choice('I\'ll hop in. Thanks for the help!', 2),
      Choice('Better ask him if he\'s a murderer first.', 1),
    ),
    Story(
      'He nods slowly, unphased by the question.',
      Choice('At least he\'s honest. I\'ll climb in.', 2),
      Choice('Wait, I know how to change a tire.', 3),
    ),
    Story(
      'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      Choice('I love Elton John! Hand him the cassette tape.', 5),
      Choice('It\'s him or me! You take the knife and stab him.', 4),
    ),
    Story(
      'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      Choice('Restart', 0),
      Choice('', null),
    ),
    Story(
      'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      Choice('Restart', 0),
      Choice('', null),
    ),
    Story(
      'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      Choice('Restart', 0),
      Choice('', null),
    ),
  ];
  int _storyNumber = 0;

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1.getText();
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2.getText();
  }

  void nextStory(int choiceNumber) {
    Choice targetChoice = (choiceNumber == 1)
        ? _storyData[_storyNumber].choice1
        : _storyData[_storyNumber].choice2;
    if (targetChoice.getDestination() == null) {
      reset();
    } else {
      _storyNumber = targetChoice.getDestination();
    }
  }

  void reset() {
    _storyNumber = 0;
  }

  shouldButtonBeVisible(int choiceNumber) {
    Choice targetChoice = (choiceNumber == 1)
        ? _storyData[_storyNumber].choice1
        : _storyData[_storyNumber].choice2;
    if (targetChoice.getText() == "") {
      return false;
    } else {
      return true;
    }
  }
}
