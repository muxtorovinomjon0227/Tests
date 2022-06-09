class AppExeption implements Exception{
  final String? _message;
  final String? _prefix;
  AppExeption([this._message,this._prefix]);

  @override
  String toString(){
    return "$_prefix - $_message";
  }

}
class NotFoundException extends AppExeption{
  NotFoundException([String? message]):super(message,"InvalidException");
}

class BadRequestException extends AppExeption{
  BadRequestException([String? message]):super(message,"InvalidException");
}

class UnatException extends AppExeption{
  UnatException([String? message]): super(message,"UnatException: ");
}