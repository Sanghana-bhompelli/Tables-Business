using DBLIBRARY1;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace TablesBusiness.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CategoriesController : ControllerBase
    {
        [HttpGet("GetAllCategories")]
        public List<CategoryModel> GetAllCategories()
        {
            CategoryModelClass objcategoryModelClass= new CategoryModelClass();
            List<CategoryModel> lstsCategory=objcategoryModelClass.GetAllCategories();
            return lstsCategory;
        }
        [HttpGet("GetAllCategoriesById")]
        public List<CategoryModel> GetAllCategoriesById(int iCategoryId)
        {
            CategoryModelClass objcategoryModelClass = new CategoryModelClass();
            List<CategoryModel> lstsCategory = objcategoryModelClass.GetAllCategoriesById(iCategoryId);

           return lstsCategory;
        }
    }
}



