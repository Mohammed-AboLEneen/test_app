abstract class InsertScreenStates{}

class InsertScreenInitState extends InsertScreenStates{}
class InsertScreenLoadingState extends InsertScreenStates{}
class InsertScreenSuccessState extends InsertScreenStates{}
class InsertScreenFailureState extends InsertScreenStates{

  final String errorMessage;
  InsertScreenFailureState(this.errorMessage);
}