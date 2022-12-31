<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="FastBusManagement.adminhome" %>
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
                                    <img width="150px" src="images/FoolishBlaringBuffalo-size_restricted.gif" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3 id="member">You Profile:</h3>
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
                                <label id="member1">Full Name:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" ReadOnly="True" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label id="member2">ID:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" ReadOnly="True" placeholder="ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label id="member3">Username:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" ReadOnly="True" placeholder="Username"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label id="member4">Password:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" ReadOnly="True" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label id="member5">Email:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" ReadOnly="True" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label id="member6">Contact no:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" ReadOnly="True" placeholder="Contact number"></asp:TextBox>
                                </div>
                            </div>
                            <br />

                            <div class="col-md-12">
                                <label id="member7">Address:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" ReadOnly="True" placeholder="Address"></asp:TextBox>
                                </div>
                            </div>

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
