using Microsoft.Data.SqlClient;

namespace DBLIBRARY1
{
    public class CategoryModelClass
    {
        public List<CategoryModel> GetAllCategories()
        {
            List<CategoryModel> LstcategoryModel = new List<CategoryModel>();

            //LOGIC

            string strConnectionstring = "Data Source=LENOVO;Initial Catalog=Tables;Integrated Security=True;Trust Server Certificate=True";
            SqlConnection objsqlConnection = new SqlConnection();
            objsqlConnection.ConnectionString = strConnectionstring;

            objsqlConnection.Open();


            string strCommand = "GetAllCategories";
            SqlCommand objsqlCommand = new SqlCommand(strCommand, objsqlConnection);
            objsqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataReader dataReader = objsqlCommand.ExecuteReader();

            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    CategoryModel objCategoryModel = new CategoryModel();

                    objCategoryModel.CategoryId = Convert.ToInt32(dataReader["CategoryId"]);
                    objCategoryModel.CategoryName = Convert.ToString(dataReader["CategoryName"]);
                    objCategoryModel.Description = Convert.ToString(dataReader["Description"]);

                    LstcategoryModel.Add(objCategoryModel);
                }
            }

            return LstcategoryModel;
        }

        public List<CategoryModel> GetAllCategoriesById(int iCategoryId)
        {
            List<CategoryModel> LstcategoryModel = new List<CategoryModel>();

            //LOGIC

            string strConnectionstring = "Data Source=LENOVO;Initial Catalog=Tables;Integrated Security=True;Trust Server Certificate=True";
            SqlConnection objsqlConnection = new SqlConnection();
            objsqlConnection.ConnectionString = strConnectionstring;

            objsqlConnection.Open();


            string strCommand = "GetCategoryById";
            SqlCommand objsqlCommand = new SqlCommand(strCommand, objsqlConnection);
            objsqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            objsqlCommand.Parameters.AddWithValue("@CategoryId", iCategoryId);

            SqlDataReader dataReader = objsqlCommand.ExecuteReader();

            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    CategoryModel objCategoryModel = new CategoryModel();

                    objCategoryModel.CategoryId = Convert.ToInt32(dataReader["CategoryId"]);
                    objCategoryModel.CategoryName = Convert.ToString(dataReader["CategoryName"]);
                    objCategoryModel.Description = Convert.ToString(dataReader["Description"]);

                    LstcategoryModel.Add(objCategoryModel);
                }
            }

            return LstcategoryModel;

        }
    }


}
