using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;

namespace DBLIBRARY1
{
    public class CustomerModelClass
    {
        public List<CustomersModel> GetAllCustomer()
        {
            List<CustomersModel> LstCustomerModels = new List<CustomersModel>();

            //LOGIC

            string strConnectionstring = "Data Source=LENOVO;Initial Catalog=Tables;Integrated Security=True;Trust Server Certificate=True";
            SqlConnection objsqlConnection = new SqlConnection();
            objsqlConnection.ConnectionString = strConnectionstring;

            objsqlConnection.Open();


            string strCommand = "GetAllCustomer";
            SqlCommand objsqlCommand = new SqlCommand(strCommand, objsqlConnection);
            objsqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataReader dataReader = objsqlCommand.ExecuteReader();

            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    CustomersModel objCustomerModel = new CustomersModel();

                    objCustomerModel.CustomerId = Convert.ToInt32(dataReader["CustomerId"]);
                    objCustomerModel.CustomerName = Convert.ToString(dataReader["CustomerName"]);
                    objCustomerModel.ContactName = Convert.ToString(dataReader["ContactName"]);
                    objCustomerModel.Adress = Convert.ToString(dataReader["Address"]);
                    objCustomerModel.city = Convert.ToString(dataReader["City"]);
                    objCustomerModel.PostalCode = Convert.ToString(dataReader["PostalCode"]);
                    objCustomerModel.Country = Convert.ToString(dataReader["Country"]);

                    LstCustomerModels.Add(objCustomerModel);

                }

            }

            return LstCustomerModels;
        }

        public List<CustomersModel> GetAllCustomerById(int iCustomerid)
        {
            List<CustomersModel> LstCustomerModels = new List<CustomersModel>();

            //LOGIC

            string strConnectionstring = "Data Source=LENOVO;Initial Catalog=Tables;Integrated Security=True;Trust Server Certificate=True";
            SqlConnection objsqlConnection = new SqlConnection();
            objsqlConnection.ConnectionString = strConnectionstring;

            objsqlConnection.Open();


            string strCommand = "GetCustomerById";
            SqlCommand objsqlCommand = new SqlCommand(strCommand, objsqlConnection);
            objsqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            objsqlCommand.Parameters.AddWithValue("@CustomerId", iCustomerid);

            SqlDataReader dataReader = objsqlCommand.ExecuteReader();

            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    CustomersModel objCustomerModel = new CustomersModel();

                    objCustomerModel.CustomerId = Convert.ToInt32(dataReader["CustomerId"]);
                    objCustomerModel.CustomerName = Convert.ToString(dataReader["CustomerName"]);
                    objCustomerModel.ContactName = Convert.ToString(dataReader["ContactName"]);
                    objCustomerModel.Adress = Convert.ToString(dataReader["Address"]);
                    objCustomerModel.city = Convert.ToString(dataReader["City"]);
                    objCustomerModel.PostalCode = Convert.ToString(dataReader["PostalCode"]);
                    objCustomerModel.Country = Convert.ToString(dataReader["Country"]);

                    LstCustomerModels.Add(objCustomerModel);

                }

            }

            return LstCustomerModels;
        }
    }
}
