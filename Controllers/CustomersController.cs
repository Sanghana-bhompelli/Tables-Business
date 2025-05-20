using DBLIBRARY1;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace TablesBusiness.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomersController : ControllerBase
    {
        [HttpGet("GetAllCustomer")]
        public List<CustomersModel> GetAllCustomer()
        {
            CustomerModelClass objCustomerModelClass = new CustomerModelClass();
            List<CustomersModel> lstsCustomer=objCustomerModelClass.GetAllCustomer();
            return lstsCustomer;
        }
        [HttpGet("GetAllCustomerById")]
        public List<CustomersModel> GetAllCustomerById(int iCustomerid)
        {
            CustomerModelClass objCustomerModelClass = new CustomerModelClass();
            List<CustomersModel> lstsCustomer = objCustomerModelClass.GetAllCustomerById(iCustomerid);
            return lstsCustomer;
        }
    }
}
