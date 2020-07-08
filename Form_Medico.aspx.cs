using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using CapaRegNegocio;
using CapaEntidad;


namespace WebApplication1
{
    public partial class Form_Medico : System.Web.UI.Page
    {
        CRegMedico oregmedico = new CRegMedico();
        CEntMedico oentmedico = new CEntMedico();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdMedico_Click(object sender, EventArgs e)
        {
            oentmedico.Id_medico = txtIdMedico.Text;
            oentmedico.Nom_medico = txtNomMedico.Text;
            oentmedico.Especialidad = txtEspecialidad.Text;
            oentmedico.Tel_medico = txtTelefono.Text;
            //oentmedico.Activo = Convert.ToByte(txtActivo.Text);

            if (oregmedico.guardar_medico(oentmedico))
            {
                lblguardarmedico.Text = "Registro Guardado Exitosamente.";
                limpiar();
            }
            else
            {
                lblguardarmedico.Text = "Error No Guardado el Registro.";
            }



        }

        protected void limpiar()
        {
            txtIdMedico.Text = "";
            txtNomMedico.Text = "";
            txtEspecialidad.Text = "";
            txtTelefono.Text = "";
        }

        protected void lblConsultarpaciente_Click(object sender, EventArgs e)
        {

            if (txtIdMedico.Text == "")
            {
                lblnombremedi.Text = "no se ha digitado Id del medico";
                txtIdMedico.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oentmedico.Id_medico = txtIdMedico.Text;
                ds = oregmedico.consultar_Medico(oentmedico);

                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblnombremedi.Text = "Disponible para registrar medico";
                    txtIdMedico.Focus();
                }
                else
                {
                    txtIdMedico.Text = ds.Tables[0].Rows[0]["id_medico"].ToString();
                    txtNomMedico.Text = ds.Tables[0].Rows[0]["nom_medico"].ToString();
                    txtEspecialidad.Text = ds.Tables[0].Rows[0]["especialidad"].ToString();
                    txtTelefono.Text = ds.Tables[0].Rows[0]["tel_medico"].ToString();
                    //txtActivo.Text = ds.Tables[0].Rows[0]["activo"].ToString();

                }
            }


        }
    }
}