<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="FastBusManagement.Confirmation" %>

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
                                    <img width="150px" src="images/confirm.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3 id="member0">Confirm Travel</h3>
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
</asp:Content>
