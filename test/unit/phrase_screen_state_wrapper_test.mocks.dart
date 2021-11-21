// Mocks generated by Mockito 5.0.16 from annotations
// in todaygoodwords/test/unit/phrase_screen_state_wrapper_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:todaygoodwords/view/state/likes/like_state.dart' as _i6;
import 'package:todaygoodwords/view/state/likes/like_state_adapter.dart' as _i5;
import 'package:todaygoodwords/view/state/phrases/phrase_state.dart' as _i4;
import 'package:todaygoodwords/view/state/phrases/phrase_state_adapter.dart'
    as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [PhraseStateAdapter].
///
/// See the documentation for Mockito's code generation for more information.
class MockPhraseStateAdapter extends _i1.Mock
    implements _i2.PhraseStateAdapter {
  MockPhraseStateAdapter() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Stream<_i4.PhraseState> states() =>
      (super.noSuchMethod(Invocation.method(#states, []),
              returnValue: Stream<_i4.PhraseState>.empty())
          as _i3.Stream<_i4.PhraseState>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [LikeStateAdapter].
///
/// See the documentation for Mockito's code generation for more information.
class MockLikeStateAdapter extends _i1.Mock implements _i5.LikeStateAdapter {
  MockLikeStateAdapter() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Stream<_i6.LikeState> states() => (super.noSuchMethod(
      Invocation.method(#states, []),
      returnValue: Stream<_i6.LikeState>.empty()) as _i3.Stream<_i6.LikeState>);
  @override
  _i3.Future<void> switchLike() =>
      (super.noSuchMethod(Invocation.method(#switchLike, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  String toString() => super.toString();
}
