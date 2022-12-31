<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="FastBusManagement.Student" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                            <div class="col-md-4">
                                <label id="member2">Roll Number:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" ReadOnly="True" placeholder="Roll No"></asp:TextBox>
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
                                <label id="member5">EMAIL:</label>
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
                                
                                <font size="3">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button6" href="booking.aspx" runat="server" Text="Booking" OnClick="Button6_Click" />
                                </font>
                                
                                <div style="margin-top: 28px;">
                                </div>

                                <div class="d-grid gap-2 ">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button5" href="adminedit.aspx" runat="server" Text="Edit Information" OnClick="Button5_Click" />
                                </div>

                                <div style="margin-top: 28px;">
                                </div>
                                <div class="d-grid gap-2 ">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" href="notification.aspx" runat="server" Text="Notification" OnClick="Button1_Click" />
                                </div>

                                
                                <div style="margin-top: 28px;">
                                </div>
                                <div class="d-grid gap-2 ">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button2" href="WebForm2.aspx" runat="server" Text="Logout" OnClick="Button2_Click" />
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

