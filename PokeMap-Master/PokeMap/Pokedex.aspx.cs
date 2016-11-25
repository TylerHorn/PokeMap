using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //one listner for all buttons.  need to tie this into all buttons.  example - button1.click += button_Click;
        private void button_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;  // sender of event will be the button the was clicked.  can get the ID and use in query.

        }
    }
}