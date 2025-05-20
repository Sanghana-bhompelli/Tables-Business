using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;

namespace DBLIBRARY1
{
    public class OrderDetailsModelClass
    {
        public List<OrderDetailsModel> GetAllOrderDetails()
        {
            List<OrderDetailsModel> LstOrderDetailsModels = new List<OrderDetailsModel>();

            //LOGIC

            string strConnectionstring = "Data Source=LENOVO;Initial Catalog=Tables;Integrated Security=True;Trust Server Certificate=True";
            SqlConnection objsqlConnection = new SqlConnection();
            objsqlConnection.ConnectionString = strConnectionstring;

            objsqlConnection.Open();


            string strCommand = "GetAllOrderDetails";
            SqlCommand objsqlCommand = new SqlCommand(strCommand, objsqlConnection);
            objsqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataReader dataReader = objsqlCommand.ExecuteReader();

            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    OrderDetailsModel objOrderDetailsModel = new OrderDetailsModel();

                    objOrderDetailsModel.OrderDetailId = Convert.ToInt32(dataReader["OrderDetailId"]);
                    objOrderDetailsModel.OrderId = Convert.ToInt32(dataReader["OrderId"]);
                    objOrderDetailsModel.ProductId = Convert.ToInt32(dataReader["ProductId"]);
                    objOrderDetailsModel.Quantity = Convert.ToInt32(dataReader["Quantity"]);




                    LstOrderDetailsModels.Add(objOrderDetailsModel);

                }

            }

            return LstOrderDetailsModels;
        }

        public List<OrderDetailsModel> GetAllOrderDetailsById(int iOrderDetailsId)
        {
            List<OrderDetailsModel> LstOrderDetailsModels = new List<OrderDetailsModel>();

            //LOGIC

            string strConnectionstring = "Data Source=LENOVO;Initial Catalog=Tables;Integrated Security=True;Trust Server Certificate=True";
            SqlConnection objsqlConnection = new SqlConnection();
            objsqlConnection.ConnectionString = strConnectionstring;

            objsqlConnection.Open();


            string strCommand = "GetOrderDetailsById";
            SqlCommand objsqlCommand = new SqlCommand(strCommand, objsqlConnection);
            objsqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            objsqlCommand.Parameters.AddWithValue("@OrderDetails", iOrderDetailsId);

            SqlDataReader dataReader = objsqlCommand.ExecuteReader();

            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    OrderDetailsModel objOrderDetailsModel = new OrderDetailsModel();

                    objOrderDetailsModel.OrderDetailId = Convert.ToInt32(dataReader["OrderDetailId"]);
                    objOrderDetailsModel.OrderId = Convert.ToInt32(dataReader["OrderId"]);
                    objOrderDetailsModel.ProductId = Convert.ToInt32(dataReader["ProductId"]);
                    objOrderDetailsModel.Quantity = Convert.ToInt32(dataReader["Quantity"]);




                    LstOrderDetailsModels.Add(objOrderDetailsModel);

                }

            }

            return LstOrderDetailsModels;
        }
    }
}
