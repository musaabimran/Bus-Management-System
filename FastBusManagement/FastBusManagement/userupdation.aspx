﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userupdation.aspx.cs" Inherits="FastBusManagement.userupdation" %>
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
                                    <img width="150px" src="images/update.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3 id="member">Update</h3>
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
                                <label id="member1">Username:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"  placeholder="Username"></asp:TextBox>
                                </div>
                            </div>
                            

                            <div class="col-md-6">
                                <label id="member3">Contact no:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"  placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>

                           <div class="col-md-12">
                                <label id="member2">Email:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"  placeholder="Email:" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                           
                   
                           

                            <div class="col-md-12">
                                <label id="member4">Address:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server"  placeholder="Address"></asp:TextBox>
                                </div>
                            </div>

                         <div class="col-md-12">
                                <label id="member5">Confirm Password:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"  placeholder="Password"></asp:TextBox>
                                </div>
                            </div>
                           </div>

                        </div>

                        <div class="row">
                            <div class="col">

                                <br />
                                <div class="d-grid gap-2 ">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" href="booking.aspx" runat="server" Text="Update" />
                                </div>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
   
    <br />
    <br />
</asp:Content>
