import 'package:bloc/bloc.dart';
import 'package:casl_fit/domain/common/enums/passcode_step.dart';
import 'package:casl_fit/infrastructure/services/shared_service.dart';

part 'passcode_state.dart';

class PasscodeCubit extends Cubit<PasscodeState> {
  PasscodeCubit({
    PasscodeStep passcodeStep = PasscodeStep.check,
  }) : super(PasscodeInitial(passcodeStep: passcodeStep));

  Future<void> fillInput(String value) async {
    if (state.passcodeStep == PasscodeStep.create) {
      if (state.filledInputCount <= 3) {
        emit(
          state.copyWith(
            passcodeOne: state.passcodeOne + value,
            filledInputCount: state.filledInputCount + 1,
          ),
        );
      }
      if (state.filledInputCount == 3) {
        Future.delayed(
          const Duration(milliseconds: 500),
              () {
            emit(state.copyWith(
              passcodeStep: PasscodeStep.confirm,
              filledInputCount: -1,
            ));
          },
        );
      }
    } else if (state.passcodeStep == PasscodeStep.confirm) {
      if (state.filledInputCount <= 3) {
        emit(
          state.copyWith(
            passcodeTwo: state.passcodeTwo + value,
            filledInputCount: state.filledInputCount + 1,
          ),
        );
      }
      if (state.filledInputCount == 3) {
        Future.delayed(
          const Duration(milliseconds: 500),
              () {
            if (state.passcodeOne.substring(0, 4) == state.passcodeTwo.substring(0, 4)) {
              emit(
                state.copyWith(
                  isProcessCompleted: true,
                ),
              );
            } else {
              emit(state.copyWith(
                isIncorrectPasscode: true,
              ));
            }
          },
        );
      }
    } else if (state.passcodeStep == PasscodeStep.check) {
      if (state.passcodeOne.length <= 3) {
        emit(
          state.copyWith(
            passcodeOne: state.passcodeOne + value,
            filledInputCount: state.filledInputCount + 1,
          ),
        );
      }
      if (state.filledInputCount == 3) {
        final pref = await SharedPrefService.initialize();
        await Future.delayed(const Duration(milliseconds: 500));
        if (pref.passcode == state.passcodeOne) {
          emit(
            state.copyWith(
              isProcessCompleted: true,
            ),
          );
        } else {
          emit(
            state.copyWith(
              passcodeOne: '',
              filledInputCount: -1,
              isIncorrectPasscode: true,
            ),
          );
        }
      }
    }
  }

  void onBackspacePressed() {
    if (state.filledInputCount >= 0) {
      switch (state.passcodeStep) {
        case PasscodeStep.create:
        case PasscodeStep.check:
          emit(state.copyWith(
            filledInputCount: state.filledInputCount - 1,
            passcodeOne: state.passcodeOne.substring(
              0,
              state.passcodeOne.length - 1,
            ),
          ));
          break;
        case PasscodeStep.confirm:
          emit(state.copyWith(
            filledInputCount: state.filledInputCount - 1,
            passcodeTwo: state.passcodeTwo.substring(
              0,
              state.passcodeTwo.length - 1,
            ),
          ));
          break;
        case PasscodeStep.none:
          break;
      }
    }
  }

  void clearIncorrectField() {
    emit(
      state.copyWith(
        isIncorrectPasscode: false,
        filledInputCount: -1,
        passcodeTwo: state.passcodeStep == PasscodeStep.confirm ? '' : null,
        passcodeOne: state.passcodeStep == PasscodeStep.check ? '' : null,
      ),
    );
  }

  void refreshState() {
    emit(const PasscodeInitial(passcodeStep: PasscodeStep.create));
  }
}
