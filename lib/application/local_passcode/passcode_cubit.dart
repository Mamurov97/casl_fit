import 'package:bloc/bloc.dart';
import 'package:local_auth/local_auth.dart';

import '../../domain/common/enums/passcode_step.dart';
import '../../infrastructure/services/shared_service.dart';

part 'passcode_state.dart';

class PasscodeCubit extends Cubit<PasscodeState> {
  PasscodeCubit({
    PasscodeStep passcodeStep = PasscodeStep.check,
  }) : super(PasscodeInitial(passcodeStep: passcodeStep));

  //input to'lishini nazorat qilish va to'lgandan keyin kerakli amallarni bajarish
  Future<void> fillInput(String value) async {
    if (state.passcodeStep == PasscodeStep.create) {
      //PasscodeStep create bo'lsa, tekshiradi va PasscodeStep.confirm ga o'tadi
      if (state.filledInputCount < 4) {
        emit(
          state.copyWith(
            passcodeOne: state.passcodeOne + value,
            filledInputCount: state.filledInputCount + 1,
          ),
        );
      }
      if (state.filledInputCount == 4) {
        Future.delayed(
          const Duration(milliseconds: 500),
          () {
            emit(state.copyWith(passcodeStep: PasscodeStep.confirm, filledInputCount: 0));
          },
        );
      }
    } else if (state.passcodeStep == PasscodeStep.confirm) {
      //PasscodeStep confirm bo'lsa, tekshiradi va isProcessCompleted ga true qiladi yoki isIncorrectPasscode ga true qiladi
      if (state.filledInputCount < 4) {
        emit(
          state.copyWith(
            passcodeTwo: state.passcodeTwo + value,
            filledInputCount: state.filledInputCount + 1,
          ),
        );
      }
      if (state.filledInputCount == 4) {
        Future.delayed(
          const Duration(milliseconds: 500),
          () {
            if (state.passcodeOne.substring(0, 4) == state.passcodeTwo.substring(0, 4)) {
              emit(state.copyWith(isProcessCompleted: true));
            } else {
              emit(state.copyWith(isIncorrectPasscode: true));
            }
          },
        );
      }
    } else if (state.passcodeStep == PasscodeStep.check) {
      //PasscodeStep check bo'lsa, tekshiradi va isProcessCompleted ga true qiladi yoki isIncorrectPasscode ga true qiladi
      if (state.passcodeOne.length < 4) {
        emit(
          state.copyWith(
            passcodeOne: state.passcodeOne + value,
            filledInputCount: state.filledInputCount + 1,
          ),
        );
      }
      if (state.filledInputCount == 4) {
        final pref = await SharedPrefService.initialize();
        if (pref.passcode == state.passcodeOne) {
          emit(state.copyWith(isProcessCompleted: true));
        } else {
          emit(state.copyWith(passcodeOne: '', filledInputCount: 0, isIncorrectPasscode: true));
        }
      }
    }
  }

  Future<void> checkBiometricAuth() async {
    final auth = LocalAuthentication();

    try {
      final isAvailable = await auth.canCheckBiometrics || await auth.isDeviceSupported();
      if (!isAvailable) return;

      final authenticated = await auth.authenticate(
        localizedReason: 'Biometrik tekshiruv orqali kirish',
        options: const AuthenticationOptions(biometricOnly: true),
      );

      if (authenticated) {
        emit(state.copyWith(isProcessCompleted: true));
      }
    } catch (e) {
      // log qilish yoki xatolikni ko'rsatish mumkin
    }
  }

  //PasscodeStepga qarab inputdan bitta belgi o'chirish
  void onBackspacePressed() {
    if (state.filledInputCount > 0) {
      switch (state.passcodeStep) {
        case PasscodeStep.create:
        case PasscodeStep.check:
          emit(
            state.copyWith(
              filledInputCount: state.filledInputCount - 1,
              passcodeOne: state.passcodeOne.substring(0, state.passcodeOne.length - 1),
            ),
          );
          break;
        case PasscodeStep.confirm:
          emit(
            state.copyWith(
              filledInputCount: state.filledInputCount - 1,
              passcodeTwo: state.passcodeTwo.substring(0, state.passcodeTwo.length - 1),
            ),
          );
          break;
        case PasscodeStep.none:
          break;
      }
    }
  }

  //parol xato bo'lganida inputni to'liq tozlab yuborish
  void clearIncorrectField() {
    emit(
      state.copyWith(
        isIncorrectPasscode: false,
        filledInputCount: 0,
        passcodeTwo: state.passcodeStep == PasscodeStep.confirm ? '' : null,
        passcodeOne: state.passcodeStep == PasscodeStep.check ? '' : null,
      ),
    );
  }
}
