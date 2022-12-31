<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="FastBusManagement.booking" %>
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
                            <img width="150px" src="images/book.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3 id="member0">Book Ticket</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>                    
                     </div>
                        <div class="col-md-12">
                        <label id="member1"><strong>Route:</strong></label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Bahria Town" Value="Bahria Town" />
                                <asp:ListItem Text="PWD" Value="PWD" />
                               <asp:ListItem Text="Korang Town" Value="Korang Town" />
                              
                               </asp:DropDownList>
                               </div>
                            </div>
                                       
                  </div>
                  <div class="row">
                     <div class="col">
                         
                             <br />
                        <div class="d-grid gap-2 ">
                          <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Book" OnClick="Button1_Click" />
                        </div>
                             <br />                       
                     </div>
                  </div>
               </div>
            </div>
            
         </div>
    <br />
    <br />

     <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="images/ticket.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3 id="member2">Your Ticket</h3>
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
                                <label id="member5"><strong>Driver Name:</strong></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" ReadOnly="True" placeholder="Driver's Name" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label id="member6"><strong>Bus Number:</strong></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" ReadOnly="True" placeholder="Bus Number" OnTextChanged="TextBox6_TextChanged" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <label id="member7"><strong>Route:</strong></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" ReadOnly="True" placeholder="Route"></asp:TextBox>
                                </div>
                            </div>
                            
                            <br />
                          
                            
                        </div>
                        <div class="row">
                            <div class="col">
                                <br />
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
