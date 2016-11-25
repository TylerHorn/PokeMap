using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Configuration;
using System.Data.OleDb;

namespace PokeMap
{
    public partial class PokemonInfoDispaly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Line 1 =creating an instance of the DataClassesDataContext class, this is the entry point into the Database
            //Line 2 = LINQ query for pulling the needed data from database.
            //Line 3 = Binding data to GridView

            DataClassesDataContext context = new DataClassesDataContext();
            PokemonInfoDisplay_GridView.DataSource = from PokemonInfo in context.PokemonInfos
                                                     where PokemonInfo.Pokedex_Num == "001" // ID HERE
                                                     select PokemonInfo;
            PokemonInfoDisplay_GridView.DataBind();

        }
    }
}