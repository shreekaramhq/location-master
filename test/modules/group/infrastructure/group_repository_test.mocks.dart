// Mocks generated by Mockito 5.3.2 from annotations
// in locationmaster/test/modules/group/infrastructure/group_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:locationmaster/modules/group/domain/group_model.dart' as _i2;
import 'package:locationmaster/modules/group/infrastructure/group_repository.dart'
    as _i3;
import 'package:locationmaster/shared/domain/stream_result.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeGroupModel_0 extends _i1.SmartFake implements _i2.GroupModel {
  _FakeGroupModel_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GroupRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockGroupRepository extends _i1.Mock implements _i3.GroupRepository {
  MockGroupRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Stream<_i5.StreamResult<_i2.GroupModel>> get groupStream =>
      (super.noSuchMethod(
        Invocation.getter(#groupStream),
        returnValue: _i4.Stream<_i5.StreamResult<_i2.GroupModel>>.empty(),
      ) as _i4.Stream<_i5.StreamResult<_i2.GroupModel>>);
  @override
  _i4.Future<_i2.GroupModel> createGroup(_i2.GroupModel? groupModel) =>
      (super.noSuchMethod(
        Invocation.method(
          #createGroup,
          [groupModel],
        ),
        returnValue: _i4.Future<_i2.GroupModel>.value(_FakeGroupModel_0(
          this,
          Invocation.method(
            #createGroup,
            [groupModel],
          ),
        )),
      ) as _i4.Future<_i2.GroupModel>);
  @override
  _i4.Future<bool> deleteGroup(String? groupId) => (super.noSuchMethod(
        Invocation.method(
          #deleteGroup,
          [groupId],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);
  @override
  _i4.Future<List<_i2.GroupModel>> getAllGroups() => (super.noSuchMethod(
        Invocation.method(
          #getAllGroups,
          [],
        ),
        returnValue: _i4.Future<List<_i2.GroupModel>>.value(<_i2.GroupModel>[]),
      ) as _i4.Future<List<_i2.GroupModel>>);
  @override
  _i4.Future<void> dispose() => (super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<_i2.GroupModel> updateGroup({
    required String? groupId,
    required String? name,
    String? description,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateGroup,
          [],
          {
            #groupId: groupId,
            #name: name,
            #description: description,
          },
        ),
        returnValue: _i4.Future<_i2.GroupModel>.value(_FakeGroupModel_0(
          this,
          Invocation.method(
            #updateGroup,
            [],
            {
              #groupId: groupId,
              #name: name,
              #description: description,
            },
          ),
        )),
      ) as _i4.Future<_i2.GroupModel>);
}