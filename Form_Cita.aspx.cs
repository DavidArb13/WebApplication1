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
    public partial class Form_Paciente : System.Web.UI.Page
    {
        CRegCitas oregcitas = new CRegCitas();
        CEntCitas oentcitas = new CEntCitas();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdconfirmar_Click(object sender, EventArgs e)
        {
            if (txtCodCita.Text == "")
            {
                lblConfirmarcita.Text = "No se ha digitado un cogido de cita";
                txtCodCita.Focus();
            }
            else {
                DataSet ds = new DataSet();
                oentcitas.Cod_cita = txtCodCita.Text;
                ds = oregcitas.consultar_Cita(oentcitas);

                if (ds.Tables[0].Rows.Count == 0) 
                {
                    lblConfirmarcita.Text = "Cita no esta asignada";
                    txtFecha.Focus();
                }
                else
                {
                    txtFecha.Text = ds.Tables[0].Rows[0]["fecha"].ToString();
                    txtHora.Text = ds.Tables[0].Rows[0]["hora"].ToString();
                    txtcodpaciente.Text = ds.Tables[0].Rows[0]["Id_paciente"].ToString();
                    
                    lblbuscarpaciente.Text = ds.Tables[1].Rows[0]["nom_paciente"].ToString();
                    lbltelpac.Text = ds.Tables[1].Rows[0]["tel_paciente"].ToString();

                    txtIdMedico.Text = ds.Tables[0].Rows[0]["id_medico"].ToString();
                    
                    lblbuscarmedico.Text = ds.Tables[2].Rows[0]["nom_medico"].ToString();
           
                    txtValor.Text = ds.Tables[0].Rows[0]["valor"].ToString();
                    txtDiagnostico.Text = ds.Tables[0].Rows[0]["diagnostico"].ToString();
                    txtAcompañente.Text = ds.Tables[0].Rows[0]["Nom_acompanante"].ToString();




                }
            }

        }

        

        protected void cmdEnviar_Click(object sender, EventArgs e)
        {
            oentcitas.Cod_cita = txtCodCita.Text;
            oentcitas.Fecha = Convert.ToDateTime(txtFecha.Text);
            oentcitas.Hora = Convert.ToDateTime(txtHora.Text);
            oentcitas.Id_paciente1 = txtcodpaciente.Text;
            oentcitas.Id_medico = txtIdMedico.Text;
            oentcitas.Valor = Convert.ToInt32(txtValor.Text);
            oentcitas.Diagnostico = txtDiagnostico.Text;
            oentcitas.Nom_acompanante1 = txtAcompañente.Text;


            if (oregcitas.guardar_Cita(oentcitas))
            {
                lblConfirmarcita.Text = "Registro Guardado Exitosamente.";
            }
            else {
                lblConfirmarcita.Text = "Error No Guardado el Registro.";
            }



        }
    }
}