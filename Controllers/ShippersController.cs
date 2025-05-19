using DBLIBRARY1;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace TablesBusiness.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ShippersController : ControllerBase
    {
        [HttpGet("GetAllShippers")]
        public List<ShippersModel> GetAllShippers()
        {
            ShippersModelClass objshippersModelClass = new ShippersModelClass();

            List<ShippersModel> lstshippers = objshippersModelClass.GetAllShippers();

            return lstshippers;

        }
        [HttpGet("GetAllShippersById")]
        public List<ShippersModel> GetAllShippersById(int iShippersId)
        {
            ShippersModelClass objshippersModelClass = new ShippersModelClass();

            List<ShippersModel> lstshippers = objshippersModelClass.GetAllShippersById(iShippersId);

            return lstshippers;
        }
    }
}
