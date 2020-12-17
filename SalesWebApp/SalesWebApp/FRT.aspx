<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FRT.aspx.cs" Inherits="SalesWebApp.FRT" %>

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
                    <asp:Label ID="Lbl_Customer"  CssClass="form-control border-radius-3 max-width-280" runat="server"></asp:Label>
                   
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label3" Text="Currency" runat="server"></asp:Label>
                    <asp:Label ID="Lbl_Currency"  CssClass="form-control border-radius-3 max-width-100" runat="server"></asp:Label>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label4" Text="Supplier" runat="server"></asp:Label>
                    <asp:DropDownList ID="DropDown_Supplier" runat="server" CssClass="form-control border-radius-3"></asp:DropDownList>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label5" Text="Delivery Method" runat="server"></asp:Label>
                    <asp:DropDownList ID="DropDown_DelivMethod" runat="server" CssClass="form-control border-radius-3"></asp:DropDownList>
                </div>
            </div>

        </div>

        <div class="row">
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label ID="Label6" Text="Source" runat="server"></asp:Label>
                    <asp:DropDownList ID="DropDown_Source" runat="server" CssClass="form-control border-radius-3" Width="85%"></asp:DropDownList>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label ID="Label7" Text="Destination" runat="server"></asp:Label>
                    <asp:DropDownList ID="DropDown_Destination" runat="server" CssClass="form-control border-radius-3" Width="85%"></asp:DropDownList>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label ID="Label8" Text="Rate(USD)" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtRate" runat="server" CssClass="form-control border-radius-3" Width="85%"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <br />
                    <asp:Button ID="BtnSave" runat="server" CssClass="form-control border-radius-3 btn btn-primary" Text="Save" />
                </div>
            </div>

        </div>

        <div class="row">
            <div class="col-md-12 padding-top-23 padding-left-0">
                <asp:GridView ID="GridViewLineItems" runat="server" CssClass="table table-bordered table-responsive text-center" AutoGenerateColumns="False" ShowFooter="True">
                    <Columns>
                        <asp:BoundField DataField="supcode" ItemStyle-CssClass="number-cell " HeaderText="Sup Code">
                            <ItemStyle CssClass="number-cell "></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="suplier" ItemStyle-CssClass="number-cell" HeaderText="Supplier">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="sourcecode" ItemStyle-CssClass="number-cell" HeaderText="source Code">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="source" ItemStyle-CssClass="number-cell" HeaderText="Source">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="destinationcode" ItemStyle-CssClass="number-cell" HeaderText="Destination Code">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="destination" ItemStyle-CssClass="name-cell" HeaderText="Destination" />
                        <asp:BoundField DataField="freight" ItemStyle-CssClass="number-cell" HeaderText="Freight(USD)" />
                        <asp:BoundField DataField="domestic" ItemStyle-CssClass="number-cell" HeaderText="Domestic(USD)" />
                        <asp:BoundField DataField="total_usd" ItemStyle-CssClass="number-cell" HeaderText="Total(USD)" />
                        <asp:BoundField DataField="total_cust_cur" ItemStyle-CssClass="number-cell" HeaderText="Total(Cust.Cur)" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <button id="Btn_Edit" runat="server" class="form-control border-radius-3 btn-primary radio-cell"><i class="fa fa-edit"></i></button>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <button id="Btn_Delete" runat="server" class="form-control border-radius-3 bg-red radio-cell"><i class="fa fa-trash" aria-hidden="true"></i></button>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </div>
        </div>
        <br />
        <ajaxToolkit:Accordion ID="Accordion3" runat="server" selectedindex="-1" CssClass="accordion-cust padding-left-0" transitionduration="250" autosize="None" requireopenedpane="false">
            <Panes>
                <ajaxToolkit:AccordionPane ID="AccordionPane3" runat="server">
                    <header><h4 onclick="ScrollDown()" class="padding-left-10">Freight Budget Variation Request</h4></header>
                    <content >
                        <br />
                        <div class="padding-left-30 no-scroll">
               
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group padding-left-30">
                                        <h4><b>To Be Used When There Is Freight Budget Variation Against A Project , Applies Only In TWO Scenarios</b>
                                        </h4>
                                        <h5>1- To Address Freight Variations After Submitting A Quote To Client
                                        </h5>
                                        <h5>2-To Address Freight Variations For Converted Orders.
                                        </h5>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group padding-left-30">
                                        <asp:Label ID="Label12" Text="Freight Budget Variation (USD)" runat="server"></asp:Label>
                                        <asp:TextBox ID="TxtFreightVariation" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <asp:Label ID="Label13" Text="Justification" runat="server"></asp:Label>
                                        <asp:TextBox ID="TxtJustification" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-1 padding-top-15 padding-left-30">
                                    <div class="form-group">
                                        <asp:Button ID="Btn_SendRequest" runat="server" CssClass="form-control border-radius-3 btn btn-primary btn-l" Text="Send Request" />
                                    </div>
                                </div>
                            </div>
                         </div>
                    </content>
                </ajaxToolkit:AccordionPane>
            </Panes>
        </ajaxToolkit:Accordion>
    </div>
    <br />
    <script>
        function ScrollDown() {
            setTimeout(() => { window.scrollBy(0, 1000); }, 280);
        }
    </script>
</asp:Content>
