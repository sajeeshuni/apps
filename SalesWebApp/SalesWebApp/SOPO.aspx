<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SOPO.aspx.cs" Inherits="SalesWebApp.SOPO" %>

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
            <div class="col-md-4 ">
                <div class="form-group">
                    <asp:Label ID="Label1" Text="RFQ #" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtRFQNumber" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label2" Text="Customer" runat="server"></asp:Label>
                    <asp:Label ID="Lbl_Customer" CssClass="form-control border-radius-3 max-width-280" runat="server"></asp:Label>
                   
                </div>
            </div>
        
            <div class="col-md-2">
                <div class="form-group">
                    <asp:Label ID="Label3" Text="Currency" runat="server"></asp:Label>
                    <asp:Label ID="Lbl_Currency" CssClass="form-control border-radius-3 max-width-100" runat="server"></asp:Label>
                    
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <asp:Label ID="Label4" Text="Converted" runat="server"></asp:Label>
                    <asp:Label ID="Label5" CssClass="form-control border-radius-3 max-width-100" runat="server"></asp:Label>
                   
                </div>
            </div>
        </div>
        <br />

        <div class="row">

            <ajaxToolkit:Accordion ID="Accordion3" runat="server" selectedindex="-1" CssClass="accordion-cust padding-left-0 padding-top-15" transitionduration="250" autosize="None" requireopenedpane="false">
                <Panes>
                    <ajaxToolkit:AccordionPane ID="AccordionPane3" runat="server">
                        <header><h4 class="padding-left-10">Contract Files</h4></header>
                        <content >
                            <br />
                            <div class="padding-left-30 no-scroll">
                                <div class="row padding-left-15">
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label>
                                                <span id="upload-btn" class="btn btn-primary" >Choose file..</span>
                                                <asp:FileUpload ID="FileUploadContract" runat="server" CssClass="file-upload" onchange="fileUpload(this)"/>
                                            </label>   
                                        </div>
                                    </div>
                                     <div class="col-md-4">
                                        <div class="form-group">
                                            <button class="btn btn-primary border-radius-3 form-control margin-top-5">Upload</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 padding-top-23">
                                        <asp:GridView ID="GridViewSupportingFiles" runat="server" CssClass="table table-bordered table-responsive text-center" AutoGenerateColumns="False" ShowFooter="True">
                                            <Columns>
                                                <asp:BoundField DataField="fileno" ItemStyle-CssClass="sn-cell " HeaderText="File #">
                                                    <ItemStyle CssClass="number-cell "></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="filename" ItemStyle-CssClass="desc-cell" HeaderText="File Name">
                                                    <ItemStyle CssClass="desc-cell"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="user" ItemStyle-CssClass="name-cell" HeaderText="User" />
                                                <asp:BoundField DataField="date" ItemStyle-CssClass="name-cell" HeaderText="Date" />

                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <button id="Btn_View" runat="server" class="form-control border-radius-3 btn-primary radio-cell"><i class="fa fa-edit"></i></button>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <button id="Btn_Delete" runat="server" class="form-control border-radius-3 bg-red radio-cell"> <i class="fa fa-trash"></i></button>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>

                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </content>
                    </ajaxToolkit:AccordionPane>
                </Panes>
            </ajaxToolkit:Accordion><br />
        </div>
        
        <div class="row">

            <ajaxToolkit:Accordion ID="Accordion1" runat="server" selectedindex="-1" CssClass="accordion-cust padding-left-0" transitionduration="250" autosize="None" requireopenedpane="false">
                <Panes>
                    <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server">
                        <header>
                            <div class="row padding-left-10">
                                <div class="col-md-4">
                                    <h4>Contract Details</h4>
                                </div>                              
                            </div>
                        </header>
                        <content >
                            <br />
                            <div class="padding-left-30 no-scroll">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <asp:Label ID="Label7" Text="Project Deadline" runat="server"></asp:Label>
                                            <input type="datetime-local" class="form-control" id="TxtDeadline" runat="server" value="dd-MM-yyyy">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <asp:Label ID="Label8" Text="Contract Date" runat="server"></asp:Label>
                                            <input type="datetime-local" class="form-control" id="TxtContractDate" runat="server" value="dd-MM-yyyy">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <asp:Label ID="Label9" Text="Contract Number" runat="server"></asp:Label>
                                            <asp:TextBox ID="TxtContractNumber" runat="server" CssClass="form-control border-radius-3" ></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                 <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <asp:Label ID="Label10" Text="Ops Person" runat="server"></asp:Label>
                                            <asp:DropDownList ID="DropDown_OpsPerson" runat="server" CssClass="form-control border-radius-3" >
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <asp:Label ID="Label11" Text="Team Lead" runat="server"></asp:Label>
                                            <asp:DropDownList ID="DropDown_TL" runat="server" CssClass="form-control border-radius-3" >
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <asp:Label ID="Label12" Text="Company Name" runat="server"></asp:Label>
                                            <asp:DropDownList ID="DropDown_Company" runat="server" CssClass="form-control border-radius-3" >
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <asp:Label ID="Label13" Text="Penalty/Exemption Required" runat="server"></asp:Label>
                                            <asp:TextBox ID="TxtPenalty" runat="server" CssClass="form-control border-radius-3" ></asp:TextBox>
                               
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <asp:Label ID="Label15" Text="Project Priority" runat="server"></asp:Label>
                                            <asp:DropDownList ID="DropDown_ProjectPriority" runat="server" CssClass="form-control border-radius-3" >
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <asp:Label ID="Label16" Text="Cargo Type" runat="server"></asp:Label>
                                             <asp:DropDownList ID="DropDownCargoType" runat="server" CssClass="form-control border-radius-3" >
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-11 ">
                                        <div class="form-group">
                                            <asp:Label ID="Label14" Text="Comments" runat="server"></asp:Label>
                                             <asp:TextBox ID="TxtComments" runat="server" CssClass="form-control border-radius-3 responsive-width" TextMode="MultiLine" ></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class="row">
                                    <div class="col-md-11">
                                        <div class="form-group">
                                            <asp:Label ID="Label17" Text="Consignee" runat="server"></asp:Label>
                                            <asp:TextBox ID="TxtConsignee1" runat="server" CssClass="form-control border-radius-3 margin-top-5 responsive-width" ></asp:TextBox>
                                            <asp:TextBox ID="TxtConsignee2" runat="server" CssClass="form-control border-radius-3 margin-top-5 responsive-width" ></asp:TextBox>
                                            <asp:TextBox ID="TxtConsignee3" runat="server" CssClass="form-control border-radius-3 margin-top-5 responsive-width" ></asp:TextBox>
                                            <asp:TextBox ID="TxtConsignee4" runat="server" CssClass="form-control border-radius-3 margin-top-5 responsive-width" ></asp:TextBox>
                                            <asp:TextBox ID="TxtConsignee5" runat="server" CssClass="form-control border-radius-3 margin-top-5 responsive-width" ></asp:TextBox>
                                            <asp:TextBox ID="TxtConsignee6" runat="server" CssClass="form-control border-radius-3 margin-top-5 responsive-width" ></asp:TextBox>
                                            <asp:TextBox ID="TxtConsignee7" runat="server" CssClass="form-control border-radius-3 margin-top-5 responsive-width" ></asp:TextBox>
                                            <asp:TextBox ID="TxtConsignee8" runat="server" CssClass="form-control border-radius-3 margin-top-5 responsive-width" ></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row margin-bottom-10">
                                   
                                    <div class="col-md-4 padding-top-3">
                                        <asp:Button ID="Button1" runat="server" CssClass="form-control border-radius-3 btn btn-primary " Text="Save" />
                                    </div>
                               </div>
                            </div>
                        </content>
                    </ajaxToolkit:AccordionPane>
                </Panes>
            </ajaxToolkit:Accordion><br />
        </div>  
        <div class="row">
            <ajaxToolkit:Accordion ID="Accordion2" runat="server" selectedindex="-1" CssClass="accordion-cust padding-left-0" transitionduration="250" autosize="None" requireopenedpane="false">
                <Panes>
                    <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server">
                        <header>
                            <div class="row padding-left-10">
                                <div class="col-md-4">
                                    <h4>Checklist</h4>
                                </div>

                                
                            </div>
                        </header>
                            
                        <content >
                            <br />
                            <div class="padding-left-30 no-scroll">
        
                                <div class="row">
                                    <table border="0">
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="chk1" runat="server" CssClass="middle" /><span> <b>Contractor Name -Ensure it is Red Orange</b></span>
                                            </td>
                                        </tr>
                                         <tr>
                                            <td>
                                                <asp:CheckBox ID="chk2" runat="server" CssClass="middle" /><span> <b>Check -Contract Amount /Currency vs Quoted Amount</b></span>
                                            </td>
                                        </tr>
                                         <tr>
                                            <td>
                                                <asp:CheckBox ID="chk3" runat="server" CssClass="middle" /><span> <b>Quote validity (Our's /vendor's)</b></span>
                                            </td>
                                        </tr>
                                         <tr>
                                            <td>
                                                <asp:CheckBox ID="chk4" runat="server" CssClass="middle" /><span> <b>P/N & Description - Is it same as our quote?</b></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="chk5" runat="server" CssClass="middle" /><span> <b>Delivery Date - Is it same as per our quote?</b></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="chk6" runat="server" CssClass="middle" /><span> <b>Delivery Location - Is it same as in our quote ?</b></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="chk7" runat="server" CssClass="middle" /><span> <b>Ship to Address</b></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="chk8" runat="server" CssClass="middle" /><span> <b>Contracting Officer's or End User's Phone Number/ email add</b></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="chk9" runat="server" CssClass="middle" /><span> <b>Signature of CO</b></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="chk10" runat="server" CssClass="middle"  /><span> <b>Feasibility - Price/Stock/Delivery with ST and Freight</b></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="chk11" runat="server" CssClass="middle" /><span> <b>Sign the contract - If not signed by CO - request counter signed copy</b></span>
                                            </td>
                                        </tr>

                                    </table>
                                </div>
                                <div class="row margin-bottom-10">
                                    
                                    <div class="col-md-4 padding-top-3 ">
                                        <asp:Button ID="Button3" runat="server" CssClass="form-control border-radius-3 btn btn-primary " Text="Save" />
                                    </div>
                               </div>
                            </div>
                        </content>
                    </ajaxToolkit:AccordionPane>
                </Panes>
            </ajaxToolkit:Accordion><br />
        </div>
        <div class="row">
            <div class="col-md-12 padding-top-23 padding-left-0">
                <asp:GridView ID="GridViewLineItems" runat="server" CssClass="table table-bordered table-responsive text-center" AutoGenerateColumns="False" ShowFooter="True">
                    <Columns>
                        <asp:BoundField DataField="slno" ItemStyle-CssClass="sn-cell " HeaderText="Line #">
                            <ItemStyle CssClass="number-cell "></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="itemcode" ItemStyle-CssClass="number-cell" HeaderText="Code">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="description" ItemStyle-CssClass="desc-cell"  HeaderText="Description" />     
                         <asp:BoundField DataField="supcode" ItemStyle-CssClass="number-cell"  HeaderText="supcode" />
                        
                        <asp:BoundField DataField="supplier" ItemStyle-CssClass="number-cell" HeaderText="Supplier">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                         <asp:BoundField DataField="quantity" ItemStyle-CssClass="number-cell" HeaderText="Quantity">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="costprice" ItemStyle-CssClass="number-cell" HeaderText="Cost Price">
                        </asp:BoundField>
                        <asp:BoundField DataField="salesprice" ItemStyle-CssClass="number-cell" HeaderText="Sales Price" />
                    </Columns>

                </asp:GridView>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label18" Text="Domestic Freight" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtDomestic" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                     <asp:Label ID="Label19" Text="Total Freight" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtTotalfreight" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                </div>
            </div>
             
        </div>
        <div class="row">
            <div class="col-md-4"> </div>
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="form-group">
                     <asp:Label ID="Label21" Text="VAT" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtVAT" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                </div>
            </div>
        </div>
         <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label20" Text="Discount" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtDiscount" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">    
            <div class="col-md-4"></div>
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="form-group">
                     <asp:Label ID="Label22" Text="Grand Total" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtGrandTotal" runat="server" CssClass="form-control border-radius-3" ></asp:TextBox>
                </div>
            </div>
        </div>

        <br />
        <div class="row">
            <div class="col-md-9"></div>
            <div class="col-md-2">
                <asp:Button ID="Btn_Save" runat="server" CssClass="form-control border-radius-3 btn btn-primary btn-xl" Text="Save" />

            </div>
        </div>

    </div>
    <br />
   <script >
       function fileUpload(e) {
           var fu1 = document.getElementById("<%= FileUploadContract.ClientID %>");
           console.log(fu1.value.split("\\").pop());
           if (fu1.value.split("\\").pop() != "") {
               document.getElementById('upload-btn').innerHTML = fu1.value.split("\\").pop();
           }
           else {
               document.getElementById('upload-btn').innerHTML = "Choose File...";
           }
       }


   </script>
   
</asp:Content>
