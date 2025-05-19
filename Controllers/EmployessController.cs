using DBLIBRARY1;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace TablesBusiness.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeesController : ControllerBase
    {
        [HttpGet("GetAllEmployees")]
        public List<EmployeesModel> GetAllEmployees()
        {
            EmployeesModelClass objEmployeesModelClass = new EmployeesModelClass();
            List<EmployeesModel> lstsEmployeesModel=objEmployeesModelClass.GetAllEmployees();
            return lstsEmployeesModel;
        }
        [HttpGet("GetAllEmpolyeeById")]
        public List<EmployeesModel> GetAllEmpolyeeById(int iEmpolyeeId)
        {
            EmployeesModelClass objEmployessModelClass = new EmployeesModelClass();
            List<EmployeesModel> lstsEmployessModel = objEmployessModelClass.GetAllEmpolyeeById(iEmpolyeeId);
            return lstsEmployessModel;
        }
    }
}
