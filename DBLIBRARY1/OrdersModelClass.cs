using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;

namespace DBLIBRARY1
{
    public class OrdersModelClass
    {
        public List<OrdersModel> GetAllOrders()
        {
            List<OrdersModel> LstOrdersModels = new List<OrdersModel>();

            //LOGIC

            string strConnectionstring = "Data Source=LENOVO;Initial Catalog=Tables;Integrated Security=True;Trust Server Certificate=True";
            SqlConnection objsqlConnection = new SqlConnection();
            objsqlConnection.ConnectionString = strConnectionstring;

            objsqlConnection.Open();


            string strCommand = "GetAllOrders";
            SqlCommand objsqlCommand = new SqlCommand(strCommand, objsqlConnection);
            objsqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataReader dataReader = objsqlCommand.ExecuteReader();

            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    OrdersModel objOrdersModel = new OrdersModel();

                    objOrdersModel.OrderId = Convert.ToInt32(dataReader["OrderId"]);
                    objOrdersModel.CustomerId = Convert.ToInt32(dataReader["CustomerId"]);
                    objOrdersModel.EmployeeId = Convert.ToInt32(dataReader["EmployeeId"]);
                    objOrdersModel.OrderDate = Convert.ToString(dataReader["OrderDate"]);
                    objOrdersModel.ShipperID = Convert.ToInt32(dataReader["ShipperId"]);






                    LstOrdersModels.Add(objOrdersModel);

                }

            }

            return LstOrdersModels;
        }

        public List<OrdersModel> GetAllOrdersById(int iOrdersId)
        {
            List<OrdersModel> LstOrdersModels = new List<OrdersModel>();

            //LOGIC

            string strConnectionstring = "Data Source=LENOVO;Initial Catalog=Tables;Integrated Security=True;Trust Server Certificate=True";
            SqlConnection objsqlConnection = new SqlConnection();
            objsqlConnection.ConnectionString = strConnectionstring;

            objsqlConnection.Open();


            string strCommand = "GetOrdersById";
            SqlCommand objsqlCommand = new SqlCommand(strCommand, objsqlConnection);
            objsqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            objsqlCommand.Parameters.AddWithValue("@OrderId",iOrdersId);

            SqlDataReader dataReader = objsqlCommand.ExecuteReader();

            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    OrdersModel objOrdersModel = new OrdersModel();

                    objOrdersModel.OrderId = Convert.ToInt32(dataReader["OrderId"]);
                    objOrdersModel.CustomerId = Convert.ToInt32(dataReader["CustomerId"]);
                    objOrdersModel.EmployeeId = Convert.ToInt32(dataReader["EmployeeId"]);
                    objOrdersModel.OrderDate = Convert.ToString(dataReader["OrderDate"]);
                    objOrdersModel.ShipperID = Convert.ToInt32(dataReader["ShipperId"]);






                    LstOrdersModels.Add(objOrdersModel);

                }

            }

            return LstOrdersModels;
        }
    }
}
