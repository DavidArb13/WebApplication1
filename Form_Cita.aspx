<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_Cita.aspx.cs" Inherits="WebApplication1.Form_Paciente" %>

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
            height: 23px;
            text-align: center;
        }
        .auto-style4 {
            height: 23px;
            margin-left: 40px;
            text-align: center;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style8 {
            height: 26px;
            text-align: center;
        }
        .auto-style11 {
            text-align: center;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">CITAS</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Codigo Cita</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtCodCita" runat="server" ToolTip="Ingrese Codigo"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Fecha </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Hora</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtHora" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Cod Paciente</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtcodpaciente" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Id Medico</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtIdMedico" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Valor</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Diagnostico</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtDiagnostico" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Acompañante</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtAcompañente" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="cmdEnviar" runat="server" Text="Guardar" Width="191px" OnClick="cmdEnviar_Click" />
                </td>
                <td class="auto-style2">Telefono</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lbltelpac" runat="server" Text="---"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="cmdconfirmar" runat="server" Text="Confirmar Cita" OnClick="cmdconfirmar_Click" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" Text="Buscar paciente" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblConfirmarcita" runat="server" Text="--"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="lblbuscarpaciente" runat="server" Text="--"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="lblbuscarmedicos" runat="server" Text="Buscar Medico" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="cmdregresar" runat="server" Text="Atras" />
                </td>
                <td class="auto-style11">
                    <asp:Label ID="lblbuscarmedico" runat="server" Text="--"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
