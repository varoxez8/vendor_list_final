
import 'package:vendor_list/screens/company_list/controller/company_list_repository.dart';
import 'package:vendor_list/screens/company_list/model/company_list_response.dart';

class GetImage{

  static Future<String> getCompanyImage(int venId,int comId)async
  {
List<Company> companies=await
    CompanyListRepository.getCompanies(venId);

for(int i=0;i<companies.length;i++)
  {
    if(companies[i].id==comId)
      {
        print(companies[i].logo);
        return companies[i].logo;
      }
  }
return "";
  }
}