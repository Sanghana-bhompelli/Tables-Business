using DBLIBRARY1;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace TablesBusiness.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OrdersController : ControllerBase
    {
        [HttpGet("GetAllOrders")]
        public List<OrdersModel> GetAllOrders()
        {
            OrdersModelClass objOrdersModelClass= new OrdersModelClass();
            List<OrdersModel> lstsOrdersModel=objOrdersModelClass.GetAllOrders();
            return lstsOrdersModel;
        }
        [HttpGet("GetAllOrdersById")]
        public List<OrdersModel> GetAllOrdersById(int iOrdersId)
        {
            OrdersModelClass objOrdersModelClass = new OrdersModelClass();
            List<OrdersModel> lstsOrdersModel = objOrdersModelClass.GetAllOrdersById(iOrdersId);
            return lstsOrdersModel;
        }
    }
}
