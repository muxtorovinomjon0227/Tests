class ApiResponse<T>{
  Status status;
  T? data;
  String? message;
  ApiResponse.initial(this.message):status=Status.INITIAL;
  ApiResponse.loading(this.message):status=Status.LOADING;
  ApiResponse.completed(this.data):status=Status.COMPLENTED;
  ApiResponse.error(this.message):status=Status.ERROR;
}


enum Status{
  INITIAL,
  COMPLENTED,
  ERROR,
  LOADING,
}