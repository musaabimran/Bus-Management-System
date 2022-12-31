<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ticket.aspx.cs" Inherits="FastBusManagement.Ticket" %>

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
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" ReadOnly="True" placeholder="Bus Number" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label id="member7"><strong>Route:</strong></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" ReadOnly="True" placeholder="Route"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label id="member8"><strong>Name: </strong></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" ReadOnly="True" placeholder="Username" TextMode="Password"></asp:TextBox>
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
