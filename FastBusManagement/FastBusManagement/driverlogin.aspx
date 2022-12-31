<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="driverlogin.aspx.cs" Inherits="FastBusManagement.driverlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="250px" src="images/FoolishBlaringBuffalo-size_restricted.gif" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Driver Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                   
                  <div class="row">
                     <div class="col">
                        <label>Enter User Name:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
                        <label>Enter Password:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">

                           <asp:Button class="btn btn-success btn-block btn-lg" href="Student.aspx" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />

                        </div>
                         <div class="form-group">

                           <asp:Button class="btn btn-success btn-block btn-lg" href="driversignup.aspx" ID="Button3" runat="server" Text="Signup" OnClick="Button3_Click" />

                        </div>

                       
                         <div class="form-group">

                             
                           <asp:Button class="btn btn-warning btn-block btn-lg" href="forgetpassword.aspx" ID="Button2" runat="server" Text="Forget Password" OnClick="Button2_Click" />

               
                        </div>
                      
                     </div>
                  </div>
               </div>
            </div>
            
         </div>
      </div>
   </div>
</asp:Content>
