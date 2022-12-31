<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="editdriver.aspx.cs" Inherits="FastBusManagement.editdriver" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-10 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="images/userinfo.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3 id="member1">DRIVER DETAILS:</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label id="member2">ID:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" ></asp:TextBox>
                                        <asp:Button Class="btn btn-primary" ID="go" runat="server" Text="Go" OnClick="go_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label id="member3">NAME:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"  placeholder="NAME"></asp:TextBox>
                                </div>
                            </div>
                           <div class="col-md-5">
                                <label id="member4">PASSWORD:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="PASSWORD" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label id="member5">CONTACT NUMBER:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="CONTACT NUMBER"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="col-md-4">
                                <label id="member9">User Name:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Username"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label id="member6">EMAIL:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="EMAIL" > </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <label id="member7">ADDRESS:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="ADDRESS" > </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <br />
                                <div class="form-group">
                                     <asp:Button class="btn btn-warning btn-block btn-lg" ID="Button2" runat="server" Text="EDIT USER INFORMATION" OnClick="Button2_Click1" />
                                    <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button1" runat="server" Text="DELETE USER PERMANENTLY" OnClick="Button1_Click1"  />                                    
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
