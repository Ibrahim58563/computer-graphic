abstract class BaseViewModel extends BaseViewModelInputs
    with BaseViewModelOutputs {
  // shared variable and function
}

abstract class BaseViewModelInputs {
  void start(); // start view model job
  void dispose();
}

abstract class BaseViewModelOutputs {}
