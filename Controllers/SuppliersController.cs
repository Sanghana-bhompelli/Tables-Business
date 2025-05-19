using DBLIBRARY1;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;


namespace TablesBusiness.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SuppliersController : ControllerBase
    {
        [HttpGet("GetAllSuppliers")]
        public List<SupplierModel> GetAllSuppliers()
        {
            SupplierModelClass objSupplierModelClass= new SupplierModelClass();
            List<SupplierModel> lstsSupplierModel=objSupplierModelClass.GetAllSuppliers();
            return lstsSupplierModel;
        }
        [HttpGet("GetAllSuppliersById")]
        public List<SupplierModel> GetAllSuppliersById(int iSupplierId)
        {
            SupplierModelClass objSupplierModelClass = new SupplierModelClass();
            List<SupplierModel> lstsSupplierModel = objSupplierModelClass.GetAllSuppliersById(iSupplierId);
            return lstsSupplierModel;
        }
    }
}
