using DBLIBRARY1;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace TablesBusiness.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OrderDetailsController : ControllerBase
    {
        [HttpGet("GetAllOrderDetails")]
        public List<OrderDetailsModel> GetAllOrderDetails()
        {
           OrderDetailsModelClass objOrderDetailsModelClass= new OrderDetailsModelClass();
           List<OrderDetailsModel> lstsOrderDetails=objOrderDetailsModelClass.GetAllOrderDetails();
           return lstsOrderDetails;
        }
        [HttpGet("GetAllOrderDetailsById")]
        public List<OrderDetailsModel> GetAllOrderDetailsById(int iOrderDetailsId)
        {
            OrderDetailsModelClass objOrderDetailsModelClass = new OrderDetailsModelClass();
            List<OrderDetailsModel> lstsOrderDetails = objOrderDetailsModelClass.GetAllOrderDetailsById(iOrderDetailsId);
            return lstsOrderDetails;
        }
    }
}
