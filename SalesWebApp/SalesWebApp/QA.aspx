<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QA.aspx.cs" Inherits="SalesWebApp.QA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <br />
    <div class="form-horizontal">
        <div class="row">
            <div class="col-lg-10"></div>
            <div class="col-md-0">
                <div class="form-group">
                    <button class="btn form-control bg-red">Clear</button>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label1" Text="RFQ #" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtRFQNumber" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>

                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label2" Text="Supplier" runat="server"></asp:Label>
                    <asp:DropDownList ID="DropDownSupplier" runat="server" CssClass="form-control border-radius-3" >

                    </asp:DropDownList>


                </div>
            </div>

        </div>

        <div class="row">
            <div class="col-md-12 padding-top-23  padding-left-0">
                <asp:GridView ID="GridViewLineItems" runat="server" CssClass="table table-bordered table-responsive text-center " AutoGenerateColumns="False" ShowFooter="True">
                    <Columns>
                        <asp:BoundField DataField="slno" ItemStyle-CssClass="sn-cell " HeaderText="Line #">
                            <ItemStyle CssClass="number-cell "></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="itemcode" ItemStyle-CssClass="number-cell" HeaderText="Code">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="description" ItemStyle-CssClass="desc-cell" HeaderText="Description" />
                        <asp:BoundField DataField="offereddescription" ItemStyle-CssClass="desc-cell" HeaderText="Offered Description" />
                        <asp:BoundField DataField="quantity" ItemStyle-CssClass="number-cell" HeaderText="Quantiy">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="unit" ItemStyle-CssClass="number-cell" HeaderText="Unit">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="unitcost" ItemStyle-CssClass="number-cell" HeaderText="Unit Cost" />
                        <asp:BoundField DataField="linecost" ItemStyle-CssClass="number-cell" HeaderText="Line Cost" />
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:CheckBox ID="chk_ItemSelect" runat="server" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="chk_ItemSelect" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </div>
        </div>
        <div class="form-horizontal">
        <div class="row">
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label ID="Label3" Text="Domestic Freight" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtDomestic" runat="server" CssClass="form-control border-radius-3" Width="80%"></asp:TextBox>

                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label ID="Label4" Text="Editable Domestic Freight" runat="server"></asp:Label>
                     <asp:TextBox ID="TxtEditableDomestic" runat="server" CssClass="form-control border-radius-3" Width="80%"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2">
                <div class="form-group">
                    <asp:Label ID="Label5" Text="Total Amount" runat="server"></asp:Label>
                     <asp:TextBox ID="TxtTotalAmount" runat="server" CssClass="form-control border-radius-3" Width="80%"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <br />
                    <asp:Button ID="BtnCalculate" runat="server" CssClass="form-control border-radius-3 btn btn-primary btn-l" Text="Re Calculate" />
                </div>
            </div>
            <div class="col-md-1">
                <div class="form-group">
                    <br />
                    <asp:Button ID="BtnSave" runat="server" CssClass="form-control border-radius-3 btn btn-primary" Text="Save" />
                </div>
            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-12 padding-top-23  padding-left-0">
                <asp:GridView ID="GridViewSupplierDetails" runat="server" CssClass="table table-bordered table-responsive text-center" AutoGenerateColumns="False" ShowFooter="True">
                    <Columns>
                        <asp:BoundField DataField="suppliercode" ItemStyle-CssClass="number-cell " HeaderText="SupplierCode">
                            <ItemStyle CssClass="number-cell "></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="supplier" ItemStyle-CssClass="number-cell" HeaderText="Supplier">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="domestic" HeaderText="Domestic Freight" />
                        <asp:BoundField DataField="amountTotal" HeaderText="Stock Amount Sub Total" />
                        <asp:BoundField DataField="total" ItemStyle-CssClass="number-cell" HeaderText="Total">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                    </Columns>

                </asp:GridView>
            </div>
        </div>

        </div>

    </div>
    <br />
</asp:Content>
