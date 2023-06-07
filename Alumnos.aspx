<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alumnos.aspx.cs" Inherits="lab3.Alumnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="padding: 20px">
    <form id="form1" runat="server">
        <div>
            <h1>Formulario alumnos</h1>
            <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Carnet" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="306px" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Carnet" HeaderText="Carnet" ReadOnly="True" SortExpression="Carnet" InsertVisible="False" />
                    <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                    <asp:BoundField DataField="Carrera" HeaderText="Carrera" SortExpression="Carrera" />
                    <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
                    <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conexion %>" DeleteCommand="DELETE FROM [Alumnos] WHERE [Carnet] = @Carnet" InsertCommand="INSERT INTO [Alumnos] ([Nombres], [Apellidos], [Edad], [Telefono], [Correo], [Carrera], [Departamento]) VALUES (@Nombres, @Apellidos, @Edad, @Telefono, @Correo, @Carrera, @Departamento)" SelectCommand="SELECT * FROM [Alumnos]" UpdateCommand="UPDATE [Alumnos] SET [Nombres] = @Nombres, [Apellidos] = @Apellidos, [Edad] = @Edad, [Telefono] = @Telefono, [Correo] = @Correo, [Carrera] = @Carrera, [Departamento] = @Departamento WHERE [Carnet] = @Carnet">
                    <DeleteParameters>
                        <asp:Parameter Name="Carnet" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombres" Type="String" />
                        <asp:Parameter Name="Apellidos" Type="String" />
                        <asp:Parameter Name="Edad" Type="Int32" />
                        <asp:Parameter Name="Telefono" Type="String" />
                        <asp:Parameter Name="Correo" Type="String" />
                        <asp:Parameter Name="Carrera" Type="String" />
                        <asp:Parameter Name="Departamento" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombres" Type="String" />
                        <asp:Parameter Name="Apellidos" Type="String" />
                        <asp:Parameter Name="Edad" Type="Int32" />
                        <asp:Parameter Name="Telefono" Type="String" />
                        <asp:Parameter Name="Correo" Type="String" />
                        <asp:Parameter Name="Carrera" Type="String" />
                        <asp:Parameter Name="Departamento" Type="String" />
                        <asp:Parameter Name="Carnet" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
            <br />
            <hr />
            <div>
                <h2>Registros</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Carnet" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AllowSorting="True" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Carnet" HeaderText="Carnet" ReadOnly="True" SortExpression="Carnet" InsertVisible="False" />
                    <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                    <asp:BoundField DataField="Carrera" HeaderText="Carrera" SortExpression="Carrera" />
                    <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:conexion %>' DeleteCommand="DELETE FROM [Alumnos] WHERE [Carnet] = @Carnet" InsertCommand="INSERT INTO [Alumnos] ([Nombres], [Apellidos], [Edad], [Telefono], [Correo], [Carrera], [Departamento]) VALUES (@Nombres, @Apellidos, @Edad, @Telefono, @Correo, @Carrera, @Departamento)" SelectCommand="SELECT * FROM [Alumnos]" UpdateCommand="UPDATE [Alumnos] SET [Nombres] = @Nombres, [Apellidos] = @Apellidos, [Edad] = @Edad, [Telefono] = @Telefono, [Correo] = @Correo, [Carrera] = @Carrera, [Departamento] = @Departamento WHERE [Carnet] = @Carnet">
                    <DeleteParameters>
                        <asp:Parameter Name="Carnet" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombres" Type="String" />
                        <asp:Parameter Name="Apellidos" Type="String" />
                        <asp:Parameter Name="Edad" Type="Int32" />
                        <asp:Parameter Name="Telefono" Type="String" />
                        <asp:Parameter Name="Correo" Type="String" />
                        <asp:Parameter Name="Carrera" Type="String" />
                        <asp:Parameter Name="Departamento" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombres" Type="String" />
                    <asp:Parameter Name="Apellidos" Type="String" />
                    <asp:Parameter Name="Edad" Type="Int32" />
                    <asp:Parameter Name="Telefono" Type="String" />
                    <asp:Parameter Name="Correo" Type="String" />
                    <asp:Parameter Name="Carrera" Type="String" />
                    <asp:Parameter Name="Departamento" Type="String" />
                    <asp:Parameter Name="Carnet" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
