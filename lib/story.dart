class Story {
  String storyTitle;
  Choice choice1;
  Choice choice2;

  Story(String storyTitle, Choice choice1, Choice choice2) {
    this.storyTitle = storyTitle;
    this.choice1 = choice1;
    this.choice2 = choice2;
  }
}

class Choice {
  String _text;
  int _destination;

  Choice(String text, int destination) {
    this._text = text;
    this._destination = destination;
  }

  String getText() {
    return this._text;
  }

  int getDestination() {
    return this._destination;
  }
}
