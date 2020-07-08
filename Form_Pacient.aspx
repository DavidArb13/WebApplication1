<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_Pacient.aspx.cs" Inherits="WebApplication1.Form_Citas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: right;
            height: 23px;
        }
        .auto-style6 {
            text-align: left;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">Datos del Paciente</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Id Paciente</td>
                    <td>
                        <asp:TextBox ID="txtIdPaciente" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Tipo Documento</td>
                    <td>
                        <asp:TextBox ID="txtTipoDocumento" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Nombre</td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Direccion</td>
                    <td>
                        <asp:TextBox ID="txtDiraccion" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Telefono</td>
                    <td>
                        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Celular</td>
                    <td>
                        <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="cmdEnviar" runat="server" Text="Guardar" OnClick="cmdEnviar_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">
                        <asp:Label ID="lblguardarpaciente" runat="server" Text="---"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="cmdconsultarpacient" runat="server" Text="Consultar Paciente" OnClick="cmdconsultarpacient_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblconsultarpacient" runat="server" Text="---"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
