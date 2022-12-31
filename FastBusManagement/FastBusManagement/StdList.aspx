<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StdList.aspx.cs" Inherits="FastBusManagement.StdList" %>

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
                                    <h3 id="member0">Travel Details</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8">
                            <label id="member2"><strong>Route:</strong></label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"  placeholder="Route" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label id="member3"><strong>Bus Number:</strong></label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"  placeholder="Bus Number" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
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
    <br />
    <br />
    <div style="margin-top: 208px;">
                </div>
</asp:Content>
