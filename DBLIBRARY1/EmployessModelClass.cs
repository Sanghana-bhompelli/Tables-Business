using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;

namespace DBLIBRARY1
{
    public class EmployeesModelClass
    {
        public List<EmployeesModel> GetAllEmployees()
        {
            List<EmployeesModel> LstEmployeesModels = new List<EmployeesModel>();

            //LOGIC

            string strConnectionstring = "Data Source=LENOVO;Initial Catalog=Tables;Integrated Security=True;Trust Server Certificate=True";
            SqlConnection objsqlConnection = new SqlConnection();
            objsqlConnection.ConnectionString = strConnectionstring;

            objsqlConnection.Open();


            string strCommand = "GetAllEmployees";
            SqlCommand objsqlCommand = new SqlCommand(strCommand, objsqlConnection);
            objsqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataReader dataReader = objsqlCommand.ExecuteReader();

            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    EmployeesModel objEmployeesModel = new EmployeesModel();

                    objEmployeesModel.EmployeeId = Convert.ToInt32(dataReader["EmployeeId"]);
                    objEmployeesModel.LastName = Convert.ToString(dataReader["LastName"]);
                    objEmployeesModel.FirstName = Convert.ToString(dataReader["FirstName"]);
                    objEmployeesModel.BirthDate = Convert.ToString(dataReader["BirthDate"]);
                    objEmployeesModel.Photo = Convert.ToString(dataReader["Photo"]);
                    objEmployeesModel.Notes = Convert.ToString(dataReader["Notes"]);


                    LstEmployeesModels.Add(objEmployeesModel);

                }

            }

            return LstEmployeesModels;
        }

        public List<EmployeesModel> GetAllEmpolyeeById(int iEmpolyeeId)
        {
            List<EmployeesModel> LstEmployeesModels = new List<EmployeesModel>();

            //LOGIC

            string strConnectionstring = "Data Source=LENOVO;Initial Catalog=Tables;Integrated Security=True;Trust Server Certificate=True";
            SqlConnection objsqlConnection = new SqlConnection();
            objsqlConnection.ConnectionString = strConnectionstring;

            objsqlConnection.Open();


            string strCommand = "GetEmpolyeeById";
            SqlCommand objsqlCommand = new SqlCommand(strCommand, objsqlConnection);
            objsqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            objsqlCommand.Parameters.AddWithValue("@EmpolyeeId", iEmpolyeeId);

            SqlDataReader dataReader = objsqlCommand.ExecuteReader();

            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    EmployeesModel objEmployeesModel = new EmployeesModel();

                    objEmployeesModel.EmployeeId = Convert.ToInt32(dataReader["EmployeeId"]);
                    objEmployeesModel.LastName = Convert.ToString(dataReader["LastName"]);
                    objEmployeesModel.FirstName = Convert.ToString(dataReader["FirstName"]);
                    objEmployeesModel.BirthDate = Convert.ToString(dataReader["BirthDate"]);
                    objEmployeesModel.Photo = Convert.ToString(dataReader["Photo"]);
                    objEmployeesModel.Notes = Convert.ToString(dataReader["Notes"]);


                    LstEmployeesModels.Add(objEmployeesModel);

                }

            }

            return LstEmployeesModels;
        }
    }
}
