using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;

namespace DBLIBRARY1
{
    public class SupplierModelClass
    {
        public List<SupplierModel> GetAllSuppliers()
        {
            List<SupplierModel> LstSupplierModels = new List<SupplierModel>();

            //LOGIC

            string strConnectionstring = "Data Source=LENOVO;Initial Catalog=Tables;Integrated Security=True;Trust Server Certificate=True";
            SqlConnection objsqlConnection = new SqlConnection();
            objsqlConnection.ConnectionString = strConnectionstring;

            objsqlConnection.Open();


            string strCommand = "GetAllSuppliers";
            SqlCommand objsqlCommand = new SqlCommand(strCommand, objsqlConnection);
            objsqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataReader dataReader = objsqlCommand.ExecuteReader();

            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    SupplierModel objSupplierModel = new SupplierModel();

                    objSupplierModel.SupplierId = Convert.ToInt32(dataReader["SupplierId"]);
                    objSupplierModel.SupplierName = Convert.ToString(dataReader["SupplierName"]);
                    objSupplierModel.ContactName = Convert.ToString(dataReader["ContactName"]);
                    objSupplierModel.Address = Convert.ToString(dataReader["Address"]);
                    objSupplierModel.City = Convert.ToString(dataReader["City"]);
                    objSupplierModel.PostalCode = Convert.ToString(dataReader["PostalCode"]);
                    objSupplierModel.Country = Convert.ToString(dataReader["Country"]);
                    objSupplierModel.Phone = Convert.ToString(dataReader["Phone"]);





                    LstSupplierModels.Add(objSupplierModel);

                }

            }

            return LstSupplierModels;
        }

        public List<SupplierModel> GetAllSuppliersById(int iSupplierId)
        {
            List<SupplierModel> LstSupplierModels = new List<SupplierModel>();

            //LOGIC

            string strConnectionstring = "Data Source=LENOVO;Initial Catalog=Tables;Integrated Security=True;Trust Server Certificate=True";
            SqlConnection objsqlConnection = new SqlConnection();
            objsqlConnection.ConnectionString = strConnectionstring;

            objsqlConnection.Open();


            string strCommand = "GetSupplierById";
            SqlCommand objsqlCommand = new SqlCommand(strCommand, objsqlConnection);
            objsqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            objsqlCommand.Parameters.AddWithValue("@SupplierId", iSupplierId);

            SqlDataReader dataReader = objsqlCommand.ExecuteReader();

            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    SupplierModel objSupplierModel = new SupplierModel();

                    objSupplierModel.SupplierId = Convert.ToInt32(dataReader["SupplierId"]);
                    objSupplierModel.SupplierName = Convert.ToString(dataReader["SupplierName"]);
                    objSupplierModel.ContactName = Convert.ToString(dataReader["ContactName"]);
                    objSupplierModel.Address = Convert.ToString(dataReader["Address"]);
                    objSupplierModel.City = Convert.ToString(dataReader["City"]);
                    objSupplierModel.PostalCode = Convert.ToString(dataReader["PostalCode"]);
                    objSupplierModel.Country = Convert.ToString(dataReader["Country"]);
                    objSupplierModel.Phone = Convert.ToString(dataReader["Phone"]);





                    LstSupplierModels.Add(objSupplierModel);

                }

            }

            return LstSupplierModels;
        }
    }
}
