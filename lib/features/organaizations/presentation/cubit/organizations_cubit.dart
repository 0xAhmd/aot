import 'package:aot/features/organaizations/data/models/organaizations.dart';
import 'package:aot/features/organaizations/data/repo/organizations_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'organizations_state.dart';

class OrganizationsCubit extends Cubit<OrganizationsState> {
  OrganizationsCubit(this.organizationsRepo) : super(OrganizationsInitial());

  final OrganizationsRepo organizationsRepo;

  Future<void> getOrganizations() async {
    emit(OrganizationsLoading());
    try {
      final organaizations = await organizationsRepo.getOrgznizations();
      emit(OrganizationsLoaded(organaizations: organaizations));
    } catch (e) {
      emit(OrganizationsError(errorMessage: e.toString()));
    }
  }
}
