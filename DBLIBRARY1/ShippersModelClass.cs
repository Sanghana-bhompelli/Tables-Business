using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;

namespace DBLIBRARY1
{
    public class ShippersModelClass
    {

        public List<ShippersModel> GetAllShippers()
        {
            List<ShippersModel> LstshippersModels = new List<ShippersModel>();

            //LOGIC

            string strConnectionstring = "Data Source=LENOVO;Initial Catalog=Tables;Integrated Security=True;Trust Server Certificate=True";
            SqlConnection objsqlConnection = new SqlConnection();
            objsqlConnection.ConnectionString = strConnectionstring;

            objsqlConnection.Open();


            string strCommand = "GetAllShippers";
            SqlCommand objsqlCommand = new SqlCommand(strCommand, objsqlConnection);
            objsqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataReader dataReader = objsqlCommand.ExecuteReader();

            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    ShippersModel objShippersModel = new ShippersModel();

                    objShippersModel.ShipperId = Convert.ToInt32(dataReader["ShipperId"]);
                    objShippersModel.ShipperName = Convert.ToString(dataReader["ShipperName"]);
                    objShippersModel.Phone = Convert.ToString(dataReader["Phone"]);

                    LstshippersModels.Add(objShippersModel);
                }
            }

            return LstshippersModels;

        }

        public List<ShippersModel> GetAllShippersById(int iShippersId)
        {
            List<ShippersModel> LstshippersModels = new List<ShippersModel>();

            //LOGIC

            string strConnectionstring = "Data Source=LENOVO;Initial Catalog=Tables;Integrated Security=True;Trust Server Certificate=True";
            SqlConnection objsqlConnection = new SqlConnection();
            objsqlConnection.ConnectionString = strConnectionstring;

            objsqlConnection.Open();


            string strCommand = "GetShipperById";
            SqlCommand objsqlCommand = new SqlCommand(strCommand, objsqlConnection);
            objsqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            objsqlCommand.Parameters.AddWithValue("@ShipperId", iShippersId);

            SqlDataReader dataReader = objsqlCommand.ExecuteReader();

            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    ShippersModel objShippersModel = new ShippersModel();

                    objShippersModel.ShipperId = Convert.ToInt32(dataReader["ShipperId"]);
                    objShippersModel.ShipperName = Convert.ToString(dataReader["ShipperName"]);
                    objShippersModel.Phone = Convert.ToString(dataReader["Phone"]);

                    LstshippersModels.Add(objShippersModel);
                }
            }

            return LstshippersModels;

        }


    }
}
