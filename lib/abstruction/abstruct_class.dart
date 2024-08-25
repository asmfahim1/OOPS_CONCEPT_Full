// Abstract class a kono constructor create kora jay na, eitar kono instance create hoy na. Amra ei abstract class ei karone use kori jeno ei class ta jeikhane extend kora hbe
//thik oi jaygay ei class er method gulo implement kortei hbe. Api privacy er jonno amra (BaseClass and Network class create kore thaki)

void main() {

  NetworkServices networkServices = NetworkServices();
  networkServices.getApi();

  Map<String, dynamic> data = {
    "email": "asmfahim1@gmail.com",
    "password" : "FahimLKC",
  };
  networkServices.postApi(data);

}


abstract class BaseApiServices {

  void postApi(var data);
  void getApi();

}

class NetworkServices extends BaseApiServices {

  @override
  void getApi() {
    // TODO: implement getApi
    print('Get Api Called');
  }

  @override
  void postApi(var data) async{
    // TODO: implement postApi

    print('Api hitted');

   await Future.delayed(const Duration(seconds: 2));

    print('Successfully Logged in, The data are : $data');
  }

}


