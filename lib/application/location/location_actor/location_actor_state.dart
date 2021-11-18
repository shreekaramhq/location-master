part of 'location_actor_bloc.dart';

@freezed
class LocationActorState with _$LocationActorState {
  const factory LocationActorState.initial() = Initial;
  const factory LocationActorState.loading() = IsLoading;
  const factory LocationActorState.deleting() = IsDeleting;
  const factory LocationActorState.saving() = IsSaving;
  const factory LocationActorState.error(String message) = IsError;
}
