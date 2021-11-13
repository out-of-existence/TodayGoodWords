import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todaygoodwords/phrase_themes/phrase_style.dart';
import 'package:todaygoodwords/phrase_themes/phrase_theme.dart';
import 'package:todaygoodwords/phrases/phrase.dart';
import 'package:todaygoodwords/view/state/phrase_state_bloc.dart';

import 'application_runner.dart';
import 'fake_phrase_repository.dart';
import 'fake_phrase_theme_repository.dart';

void main() {
  group('E2E tests', () {
    late ApplicationRunner app;

    testWidgets('display loading message when phrase is loading', (tester) async {
      var phraseStateBloc = PhraseStateBloc(
          FakePhraseRepository.readingNothing(),
          FakePhraseThemeRepository.readingNothing()
      );
      var likeStateBloc = LikeStateBloc(
        LikeRepository.doNothing()
      );

      app = ApplicationRunner(phraseStateBloc, likeStateBloc);

      await app.startApp(tester);
      app.displayLoading();
      app.notDisplayLike();
    });

    testWidgets('display failed message when phrase is not loaded', (tester) async {
      var phraseStateBloc = PhraseStateBloc(
          FakePhraseRepository.occurErrorWhileReading(),
          FakePhraseThemeRepository.occurErrorWhileReading()
      );
      var likeStateBloc = LikeStateBloc(
          LikeRepository.doNothing()
      );

      app = ApplicationRunner(phraseStateBloc, likeStateBloc);

      await app.startApp(tester);
      app.displayFailure();
      app.notDisplayLike();
    });

    testWidgets('display correct phrase when phrase is loaded', (tester) async {
      var phrase = Phrase('name', 'text');
      var phraseTheme = PhraseTheme(PhraseStyle(10.0, Colors.black), PhraseStyle(18.0, Colors.grey));
      var like = Like(30);
      var phraseStateBloc = PhraseStateBloc(
          FakePhraseRepository.readingOne(phrase),
          FakePhraseThemeRepository.readingOne(phraseTheme)
      );
      var likeStateBloc = LikeStateBloc(
          LikeRepository.readOnly(like)
      );

      app = ApplicationRunner(phraseStateBloc, likeStateBloc);

      await app.startApp(tester);
      app.displayPhrase(tester, phrase, phraseTheme);
      app.displayLike(like);
    });
  });
}