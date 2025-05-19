using DBLIBRARY1;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace TablesBusiness.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsController : ControllerBase
    {
        [HttpGet("GetAllProducts")]
        public List<ProductsModel> GetAllProducts()
        {
            ProductsModelClass objProductsModelClass= new ProductsModelClass();
            List<ProductsModel> lstsProductsModels=objProductsModelClass.GetAllProducts();
            return lstsProductsModels;
        }
        [HttpGet("GetAllProductsById")]
        public List<ProductsModel> GetAllProductsById(int iProductsId)
        {
            ProductsModelClass objProductsModelClass = new ProductsModelClass();
            List<ProductsModel> lstsProductsModels = objProductsModelClass.GetAllProductsById(iProductsId);
            return lstsProductsModels;

        }
    }
}
