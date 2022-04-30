using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstebanMendezExamenFinalP3
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnBorrar_Click(object sender, EventArgs e)
        {
            try
            {
                SqlLibroB.Delete();
            }
            catch (Exception ex)
            {

                Console.WriteLine(ex);
                Page.RegisterStartupScript("UserMsg", "<script>alert('A ocurrido un error en la transacción, vuelva a intentarlo..');if(alert){ window.location='BorrarLibro.aspx';}</script>");

            }
        }
    }
}