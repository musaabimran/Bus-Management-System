<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SendNotification.aspx.cs" Inherits="FastBusManagement.SendNotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="images/animation-notification-gif-4.gif" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3 id="member0">Send Notifications</h3>
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
                                <label id="member1"><strong>ID:</strong></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID"></asp:TextBox>
                                </div>

                                <label id="member2"><strong>Notification:</strong></label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Height="200px" Width="100%" CssClass="tb_style" placeholder="Notification...."></asp:TextBox>
                                </div>
                                <br />
                                <div class="d-grid gap-2 ">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="SEND" OnClick="Button1_Click" />
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
    <br />
</asp:Content>
