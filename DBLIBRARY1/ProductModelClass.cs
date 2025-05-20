using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;

namespace DBLIBRARY1
{
    public class ProductsModelClass
    {
        public List<ProductsModel> GetAllProducts()
        {
            List<ProductsModel> LstProductsModels = new List<ProductsModel>();

            //LOGIC

            string strConnectionstring = "Data Source=LENOVO;Initial Catalog=Tables;Integrated Security=True;Trust Server Certificate=True";
            SqlConnection objsqlConnection = new SqlConnection();
            objsqlConnection.ConnectionString = strConnectionstring;

            objsqlConnection.Open();


            string strCommand = "GetAllProducts";
            SqlCommand objsqlCommand = new SqlCommand(strCommand, objsqlConnection);
            objsqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataReader dataReader = objsqlCommand.ExecuteReader();

            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    ProductsModel objProductsModel = new ProductsModel();

                    objProductsModel.ProductId = Convert.ToInt32(dataReader["ProductId"]);
                    objProductsModel.ProductName = Convert.ToString(dataReader["ProductName"]);
                    objProductsModel.SupplierId = Convert.ToInt32(dataReader["SupplierId"]);
                    objProductsModel.CategoryId = Convert.ToInt32(dataReader["CategoryId"]);
                    objProductsModel.Unit = Convert.ToString(dataReader["Unit"]);
                    objProductsModel.Price = Convert.ToInt32(dataReader["Price"]);






                    LstProductsModels.Add(objProductsModel);

                }

            }

            return LstProductsModels;
        }

        public List<ProductsModel> GetAllProductsById(int iProductsId)
        {
            List<ProductsModel> LstProductsModels = new List<ProductsModel>();

            //LOGIC

            string strConnectionstring = "Data Source=LENOVO;Initial Catalog=Tables;Integrated Security=True;Trust Server Certificate=True";
            SqlConnection objsqlConnection = new SqlConnection();
            objsqlConnection.ConnectionString = strConnectionstring;

            objsqlConnection.Open();


            string strCommand = "GetProductById";
            SqlCommand objsqlCommand = new SqlCommand(strCommand, objsqlConnection);
            objsqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            objsqlCommand.Parameters.AddWithValue("@ProductId", iProductsId);

            SqlDataReader dataReader = objsqlCommand.ExecuteReader();

            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    ProductsModel objProductsModel = new ProductsModel();

                    objProductsModel.ProductId = Convert.ToInt32(dataReader["ProductId"]);
                    objProductsModel.ProductName = Convert.ToString(dataReader["ProductName"]);
                    objProductsModel.SupplierId = Convert.ToInt32(dataReader["SupplierId"]);
                    objProductsModel.CategoryId = Convert.ToInt32(dataReader["CategoryId"]);
                    objProductsModel.Unit = Convert.ToString(dataReader["Unit"]);
                    objProductsModel.Price = Convert.ToInt32(dataReader["Price"]);






                    LstProductsModels.Add(objProductsModel);

                }

            }

            return LstProductsModels;
        }
    }
}
