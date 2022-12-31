<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="driversignup.aspx.cs" Inherits="FastBusManagement.driversignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                            <img width="150px"  src="images/FoolishBlaringBuffalo-size_restricted.gif" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3 id="member1">REGISTER YOURSELF:</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col-md-6">
                        <label id="member2">FULL NAME:</label>
                        <div class="form-group" >
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Enter your FULL NAME"  ></asp:TextBox>
                        </div>
                     </div>
                       <div class="col-md-6">
                           <label id="member3">DRIVER ID:</label>
                        <div class="form-group" >
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Enter your Driver Id"  ></asp:TextBox>
                        </div>
                     </div>
                       <div class="col-md-6">
                        <label id="member4">Username:</label>
                        <div class="form-group" >
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Enter your username"></asp:TextBox>
                        </div>
                     </div>
                       <div class="col-md-6">
                        <label id="member5">Password:</label>
                        <div class="form-group" >
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                       <br />
                       <div class="col-md-4">
                        <label id="member6">EMAIL:</label>
                        <div class="form-group" >
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Enter your email" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                       <div class="col-md-4">
                        <label id="member7">Contact no:</label>
                        <div class="form-group" >
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Enter your contact number"></asp:TextBox>
                        </div>
                     </div>
                        <div class="col-md-4">
                        <label id="member8">ROLE:</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                          
                              <asp:ListItem Text="Driver" Value="Student" />
                               </asp:DropDownList>
                               </div>
                            </div>
                       <div class="col-md-12">
                        <label id="member9">Address:</label>
                        <div class="form-group" >
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Enter your Complete Address"></asp:TextBox>
                        </div>
                     </div>
                      
                  </div>

                  <div class="row">
                     <div class="col">
                         
                             <br />
                        <div class="d-grid gap-2 ">
                          <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="SignUp" OnClick="Button1_Click" />
                        </div>
                             <br />
                        
                         
                     </div>
                  </div>
               </div>
            </div>
            
         </div>
      </div>
   </div>
    <br />
    <br />
</asp:Content>
