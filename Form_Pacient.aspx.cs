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
    public partial class Form_Citas : System.Web.UI.Page
    {
        CRegPaciente oregpaciente = new CRegPaciente();
        CEntPaciente oentpaciente = new CEntPaciente();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void limpiar()
        {
            txtIdPaciente.Text = "";
            txtTipoDocumento.Text = "";
            txtNombre.Text = "";
            txtDiraccion.Text = "";
            txtTelefono.Text = "";
            txtCelular.Text = "";
        }

        protected void cmdEnviar_Click(object sender, EventArgs e)
        {
            oentpaciente.Id_paciente1 = txtIdPaciente.Text;
            oentpaciente.Tip_doc = txtTipoDocumento.Text;
            oentpaciente.Nom_paciente = txtNombre.Text;
            oentpaciente.Dir_paciente = txtDiraccion.Text;
            oentpaciente.Tel_paciente = txtTelefono.Text;
            oentpaciente.Cel_paciente = txtCelular.Text;
            
            //oentmedico.Activo = Convert.ToByte(txtActivo.Text);

            if (oregpaciente.guardar_paciente(oentpaciente))
            {
                lblguardarpaciente.Text = "Registro Guardado Exitosamente.";
                limpiar();
            }
            else
            {
                lblguardarpaciente.Text = "Error No Guardado el Registro.";
            }

        }

        protected void cmdconsultarpacient_Click(object sender, EventArgs e)
        {
            if (txtIdPaciente.Text == "")
            {
                lblconsultarpacient.Text = "no se ha digitado Id del Paciente";
                txtIdPaciente.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oentpaciente.Id_paciente1 = txtIdPaciente.Text;
                ds = oregpaciente.consultar_paciente(oentpaciente);

                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblguardarpaciente.Text = "Disponible para registrar paciente";
                    txtIdPaciente.Focus();
                }
                else
                {
                    txtIdPaciente.Text = ds.Tables[0].Rows[0]["Id_paciente"].ToString();
                    txtTipoDocumento.Text = ds.Tables[0].Rows[0]["tip_doc"].ToString();
                    txtNombre.Text = ds.Tables[0].Rows[0]["nom_paciente"].ToString();
                    txtDiraccion.Text = ds.Tables[0].Rows[0]["dir_paciente"].ToString();
                    txtTelefono.Text = ds.Tables[0].Rows[0]["tel_paciente"].ToString();
                    txtCelular.Text = ds.Tables[0].Rows[0]["cel_paciente"].ToString();
                   
                    //txtActivo.Text = ds.Tables[0].Rows[0]["activo"].ToString();

                }
            }

        }

        
       
    }
}