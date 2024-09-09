using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Security.Cryptography;

namespace app.Models
{
    public class UserLogin
    {
        static string cadena = "Data Source=HOROZCO;Initial Catalog=DBAPI;Integrated Security=true";


        [Required(ErrorMessage = "<font color= 'red'>El usuario es Requerido</font>")]
        [Display(Name = "Usuario Name")]
        public string User { get; set; }

        [Required(ErrorMessage = "<font color= 'red'>El usuario es Requerido</font>")]
        [Display(Name = "Contraseña")]
        public String Password { get; set; }
        public String Nombre { get; set; }

        public bool Loginx(string usuario, string clave)
        {
            //bool registrado;
            bool status = false;

            string mensaje;
            clave = ConvertirSha256(clave);

            using (SqlConnection cn = new SqlConnection(cadena))
            {

                SqlCommand cmd = new SqlCommand("sp_validarUsuario", cn);
                cmd.Parameters.AddWithValue("@User", User);
                cmd.Parameters.AddWithValue("@Clave", Password);
                cmd.Parameters.Add("Registrado", SqlDbType.Bit).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("Mensaje", SqlDbType.VarChar, 100).Direction = ParameterDirection.Output;
                cmd.CommandType = CommandType.StoredProcedure;

                cn.Open();
                //cmd.ExecuteNonQuery();
                status = Convert.ToBoolean(cmd.ExecuteScalar());

                //registrado = Convert.ToBoolean(cmd.Parameters["Registrado"].Value);
                //mensaje = cmd.Parameters["Mensaje"].Value.ToString();
                cn.Close();
            }

            return status;

        }

        //public  bool Login(string usuario, string clave)
        public bool Login()
        {
            bool status = false;
            Password = ConvertirSha256(Password);
            //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cadena))
            {
                using (SqlCommand cmd = new SqlCommand("CheckUserAvailability", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@UserName", User.Trim());
                    cmd.Parameters.AddWithValue("@Clave", Password.Trim());
                    con.Open();
                    status = Convert.ToBoolean(cmd.ExecuteScalar());
                    con.Close();
                }
            }
            return status;
        }


        //Nueva forma de validar para devolver datos.
        public bool Login2()
        {
            SqlDataReader rdr = null;
            SqlConnection con = null;
            SqlCommand cmd = null;

            bool status = false;
            Password = ConvertirSha256(Password);
            try
            {
                // Open connection to the database
                //string ConnectionString = "server=xeon;uid=sa;" +
                //    "pwd=manager; database=northwind";
                con = new SqlConnection(cadena);
                //con.Open();

                // Set up a command with the given query and associate
                // this with the current connection.
                //string CommandText = "SELECT FirstName, LastName" +
                //                     "  FROM Employees" +
                //                     " WHERE (LastName LIKE @Find)";
                //cmd = new SqlCommand(CommandText);
                
                using (cmd = new SqlCommand("sp_validarUsuarioX", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@UserName", User.Trim());
                    cmd.Parameters.AddWithValue("@Clave", Password.Trim());
                    con.Open();
                    status = Convert.ToBoolean(cmd.ExecuteScalar());
                    //con.Close();
                }
                // Add LastName to the above defined paramter @Find
                //cmd.Parameters.Add(
                //    new SqlParameter(
                //    "@Find", // The name of the parameter to map
                //    System.Data.SqlDbType.NVarChar, // SqlDbType values
                //    20, // The width of the parameter
                //    "LastName"));  // The name of the source column

                //// Fill the parameter with the value retrieved
                //// from the text field
                //cmd.Parameters["@Find"].Value = txtFind.Text;
               
                // Execute the query
                rdr = cmd.ExecuteReader();

                // Fill the list box with the values retrieved
                //lbFound.Items.Clear();
                while (rdr.Read())
                {
                    User = rdr["Usuario"].ToString();
                    Password = rdr["Clave"].ToString();
                    Nombre = rdr["Nombres"].ToString();
                }
                con.Close();
            }
            catch (Exception ex)
            {
                // Print error message                
                Console.WriteLine(ex.Message);
            }
            finally
            {
                // Close data reader object and database connection
                if (rdr != null)
                    rdr.Close();

                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            return status;
        }



        public static string ConvertirSha256(string texto)
        {
            //using System.Text;
            //USAR LA REFERENCIA DE "System.Security.Cryptography"

            StringBuilder Sb = new StringBuilder();
            using (SHA256 hash = SHA256Managed.Create())
            {
                Encoding enc = Encoding.UTF8;
                byte[] result = hash.ComputeHash(enc.GetBytes(texto));

                foreach (byte b in result)
                    Sb.Append(b.ToString("x2"));
            }

            return Sb.ToString();
        }

    }
}