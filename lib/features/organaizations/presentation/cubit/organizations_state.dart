part of 'organizations_cubit.dart';

@immutable
sealed class OrganizationsState {}

final class OrganizationsInitial extends OrganizationsState {}

final class OrganizationsLoading extends OrganizationsState {}

final class OrganizationsLoaded extends OrganizationsState {
  final List<Organaizations> organaizations;

  OrganizationsLoaded({required this.organaizations});
}

final class OrganizationsError extends OrganizationsState {
  final String errorMessage;

  OrganizationsError({required this.errorMessage});
}
