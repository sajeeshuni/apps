<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VPR.aspx.cs" Inherits="SalesWebApp.VPR" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
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
                    <asp:Label ID="Label2" Text="Customer" runat="server"></asp:Label>
                    <div class="form-control ">
                        <asp:Label CssClass="cust-label" ID="Lbl_Customer" runat="server"></asp:Label>

                    </div>


                </div>
            </div>


        </div>
        <div class="row">
            <div class="col-md-12 padding-top-23 padding-left-0">
                <asp:GridView ID="GridViewLineItems" runat="server" CssClass="table table-bordered table-responsive text-center" AutoGenerateColumns="False" ShowFooter="True">
                    <Columns>
                        <asp:BoundField DataField="slno" ItemStyle-CssClass="sn-cell " HeaderText="Line Item">
                            <ItemStyle CssClass="number-cell "></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="itemcode" ItemStyle-CssClass="number-cell" HeaderText="Code">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="description" ItemStyle-CssClass="desc-cell" HeaderText="Description">
                            <ItemStyle CssClass="desc-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="quantity" ItemStyle-CssClass="number-cell" HeaderText="Quantiy">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="unit" ItemStyle-CssClass="number-cell" HeaderText="Unit">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField>
                            <FooterTemplate>
                                <asp:CheckBox ID="chk_Line" runat="server" />
                            </FooterTemplate>
                            <HeaderTemplate>
                                <asp:CheckBox ID="chk_Line" runat="server" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="chk_Line" runat="server" />
                            </ItemTemplate>
                            <ControlStyle Width="30px" />
                            <ItemStyle Width="30px" />
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </div>
        </div>
        <ajaxToolkit:Accordion ID="Accordion2" runat="server" selectedindex="-1" CssClass="accordion-cust padding-left-0" transitionduration="250" autosize="None" requireopenedpane="false" >
            <Panes>
                <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server" ContentCssClass="no-scroll">
                    <header><h4 class="padding-left-10">Supplier Search </h4></header>
                    <content>
                        <br />
                        <div class="padding-left-30 no-scroll">
                            <div class="row" >
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <asp:Label ID="Label3" Text="Supplier" runat="server"></asp:Label>
                                        <asp:TextBox ID="TxtSupplier" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                                        <asp:HiddenField ID="HF_Supplier" runat="server" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <asp:Label ID="Label4" Text="Category" runat="server"></asp:Label>
                                        <asp:TextBox ID="TxtCategory" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                                        <asp:HiddenField ID="HF_Category" runat="server" />
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <asp:Label ID="Label5" Text="Currency" runat="server"></asp:Label>
                                        <asp:TextBox ID="TxtCurrency" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                                        <asp:HiddenField ID="HF_Currency" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 padding-top-23  padding-left-0">
                                    <asp:GridView ID="GridView_Supplier" runat="server" CssClass="table table-bordered table-responsive text-center" AutoGenerateColumns="False" ShowFooter="True">
                                        <Columns>
                                            <asp:BoundField DataField="supCode" ItemStyle-CssClass="number-cell " HeaderText="SupCode">
                                                <ItemStyle CssClass="number-cell "></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="supplier" ItemStyle-CssClass="number-cell" HeaderText="Supplier">
                                                <ItemStyle CssClass="number-cell"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="category" ItemStyle-CssClass="desc-cell" HeaderText="Category">
                                                <ItemStyle CssClass="desc-cell"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="currency" ItemStyle-CssClass="number-cell" HeaderText="Currency">
                                                <ItemStyle CssClass="number-cell"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:TemplateField>
                                                <FooterTemplate>
                                                    <asp:CheckBox ID="chk_Supplier" runat="server" />
                                                </FooterTemplate>
                                                <HeaderTemplate>
                                                    <asp:CheckBox ID="chk_Supplier" runat="server" />
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="chk_Supplier" runat="server" />
                                                </ItemTemplate>
                                                <ControlStyle Width="30px" />
                                                <ItemStyle Width="30px" />
                                            </asp:TemplateField>
                                            </Columns>

                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                            <div class="row padding-left-30">
                                <div class="col-md-4 padding-top-23  ">
                                    <div class="form-group">
                                        <asp:Button ID="Btn_AddLines" runat="server" CssClass="form-control border-radius-3 btn btn-primary" Text="Save" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </content>
                </ajaxToolkit:AccordionPane>
            </Panes>
        </ajaxToolkit:Accordion>
       
        <div class="row">
            <div class="col-md-12 padding-top-23 padding-left-0">
                <asp:GridView ID="GridView_LineWithSupplier" runat="server" CssClass="table table-bordered table-responsive text-center" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="slno" ItemStyle-CssClass="sn-cell " HeaderText="Line Item">
                            <ItemStyle CssClass="number-cell "></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="itemcode" ItemStyle-CssClass="number-cell" HeaderText="Code">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="description" ItemStyle-CssClass="desc-cell" HeaderText="Description">
                            <ItemStyle CssClass="desc-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="quantity" ItemStyle-CssClass="number-cell" HeaderText="Quantiy">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="unit_code" ItemStyle-CssClass="number-cell" HeaderText="UnitCode">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="unit" ItemStyle-CssClass="number-cell" HeaderText="Unit">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="supCode" ItemStyle-CssClass="number-cell" HeaderText="SupCode" />
                        <asp:BoundField DataField="supplier" ItemStyle-CssClass="number-cell" HeaderText="Supplier" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <button id="Btn_Delete" runat="server" class="form-control border-radius-3 bg-red radio-cell"><i class="fa fa-trash"></i></button>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 padding-left-0">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label25" Text="Select a supplier" runat="server" ></asp:Label>
                    <asp:DropDownList ID="DropDownSupplier" runat="server" CssClass="form-control border-radius-3" >

                    </asp:DropDownList>
                </div>

            </div>

        </div>

        <div class="row">
            <div class="col-md-12 padding-top-23  padding-left-0">
                <asp:GridView ID="GridView_SupplierItems" runat="server" CssClass="table table-bordered table-responsive text-center " AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="slno" ItemStyle-CssClass="sn-cell " HeaderText="Line Item">
                            <ItemStyle CssClass="number-cell "></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="description" ItemStyle-CssClass="desc-cell" HeaderText="Description">
                            <ItemStyle CssClass="desc-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="quantity" ItemStyle-CssClass="number-cell" HeaderText="Quantiy">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="unit" ItemStyle-CssClass="number-cell" HeaderText="Unit">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                    </Columns>

                </asp:GridView>
            </div>
        </div>
    </div>
    <br />
</asp:Content>