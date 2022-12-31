
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmain.aspx.cs" Inherits="FastBusManagement.adminmain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <!-- Sidebar -->
                        <nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse bg-white ">
                            <div class="position-sticky">
                                <div class="list-group list-group-flush mx-3 mt-4">

                                    <a href="adminhome.aspx" class="list-group-item list-group-item-action py-2 ripple">
                                        <i class="fa-solid fa-house-user fa-2x fa-fw" style:"color:#bc4639"></i> &nbsp;<span>Profile </span>
                                    </a>

                                    <a href="viewrecord.aspx" class="list-group-item list-group-item-action py-2 ripple">
                                        <i class="fa-solid fa-clipboard fa-2x fa-fw"style:"color:#bc4639" ></i>&nbsp;<span>View Logs </span>
                                        
                                    </a>
                                    <a href="viewdriver.aspx" class="list-group-item list-group-item-action py-2 ripple">
                                        <i class="fa-solid fa-users-viewfinder fa-2x fa-fw"> </i>&nbsp;<span>View Driver's List </span>
                                    </a>

                                    <a href="viewstudent.aspx" class="list-group-item list-group-item-action py-2 ripple">
                                        <i class="fa-solid fa-graduation-cap fa-2x fa-fw"></i>&nbsp;<span>View Student's List </span>
                                    </a>

                                    <a href="viewbus.aspx" class="list-group-item list-group-item-action py-2 ripple">
                                        <i class="fa-solid  fa-bus fa-2x fa-fw"></i>&nbsp;<span>View Bus & Routes </span>
                                    </a>
                                    <a href="edituser.aspx" class="list-group-item list-group-item-action py-2 ripple">
                                        <i class="fa-solid fa-user-pen fa-2x fa-fw"></i>&nbsp;<span>Edit Student's Information </span>
                                    </a>

                                     <a href="editdriver.aspx" class="list-group-item list-group-item-action py-2 ripple">
                                        <i class="fa-solid fa-user-pen fa-2x fa-fw"></i>&nbsp;<span>Edit Driver's Information </span>
                                    </a>
                                    
                                    <a href="SendNotification.aspx" class="list-group-item list-group-item-action py-2 ripple">
                                        <i class="fa-solid  fa-bell fa-2x fa-fw"></i>&nbsp;<span>Send Notifications </span>
                                    </a>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="margin-top: 159px;">
    </div>


</asp:Content>
