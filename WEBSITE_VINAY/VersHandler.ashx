<%@ WebHandler Language="C#" Class="VersHandler" %>

 
using System;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Script.Serialization;

public class VersHandler : IHttpHandler {
    
    
    public void ProcessRequest(HttpContext context)
    {
        string searchText = context.Request.QueryString["term"];
        Collection<AutoCompleteDTO> collection;
        string connectionString =
           System.Configuration.ConfigurationManager.ConnectionStrings["FBEConnectionString"].ConnectionString;
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            using (SqlCommand command = new SqlCommand())
            {
                command.Connection = connection;
                command.CommandText = "Search_Vers";
                command.CommandType = CommandType.StoredProcedure;

                SqlParameter paramName = new SqlParameter("@Vers", SqlDbType.NVarChar);
                paramName.Size = 100;
                paramName.Value = searchText;
                command.Parameters.Add(paramName);
                collection = new Collection<AutoCompleteDTO>();
                connection.Open();
                using (SqlDataReader dataReader = command.ExecuteReader())
                {
                    AutoCompleteDTO dto;
                    if (dataReader != null)
                        while (dataReader.Read())
                        {
                            dto = new AutoCompleteDTO();
                            dto.value = dto.label = (string)dataReader["Version_Name"];
                            dto.id = Convert.ToString(dataReader["Unique_ID"]);
                            collection.Add(dto);
                        }
                }
            }
        }
        JavaScriptSerializer serializer = new JavaScriptSerializer();

        string jsonString=serializer.Serialize(collection);

        context.Response.Write(jsonString);
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

    public class AutoCompleteDTO
    {
        public string id { get; set; }
        public string label { get; set; }
        public string value { get; set; }
    }
    
    
}