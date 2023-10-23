// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/cubit/auth_cubit.dart' as _i15;
import 'application/authentication/cubit/authentication_cubit.dart' as _i4;
import 'application/cubit/task_edit_cubit.dart' as _i13;
import 'application/cubit/task_home_cubit.dart' as _i14;
import 'application/task/task_cubit.dart' as _i12;
import 'core/firebase_injection_module.dart' as _i16;
import 'domain/auth/i_auth.dart' as _i8;
import 'domain/task/i_task.dart' as _i10;
import 'infrastructure/auth/auth_repository.dart' as _i9;
import 'infrastructure/task/task_repository.dart' as _i11;
import 'routes/app_router.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.AuthenticationCubit>(() => _i4.AuthenticationCubit());
    gh.lazySingleton<_i5.FirebaseAuth>(() => registerModule.getFirebaseAuth);
    gh.lazySingleton<_i6.FirebaseFirestore>(() => registerModule.getFirestore);
    gh.lazySingleton<_i7.GoogleSignIn>(() => registerModule.getGoogleSign);
    gh.lazySingleton<_i8.IAuth>(() => _i9.AuthRepository(
          gh<_i5.FirebaseAuth>(),
          gh<_i7.GoogleSignIn>(),
        ));
    gh.lazySingleton<_i10.ITask>(
        () => _i11.TaskRepository(gh<_i6.FirebaseFirestore>()));
    gh.factory<_i12.TaskCubit>(() => _i12.TaskCubit(gh<_i10.ITask>()));
    gh.factory<_i13.TaskEditCubit>(() => _i13.TaskEditCubit());
    gh.factory<_i14.TaskHomeCubit>(() => _i14.TaskHomeCubit(gh<_i10.ITask>()));
    gh.factory<_i15.AuthCubit>(() => _i15.AuthCubit(gh<_i8.IAuth>()));
    return this;
  }
}

class _$RegisterModule extends _i16.RegisterModule {}
