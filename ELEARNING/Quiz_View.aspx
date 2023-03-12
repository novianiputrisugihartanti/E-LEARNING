<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Quiz_View.aspx.cs" Inherits="ELEARNING.Quiz_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="col-lg-12">

            <div class="card">
                <div class="card-body">
                    <center>
                        <h5 class="card-title fw-bold text-dark">abc</h5>
                    </center>
                    
                    <div class="card" style="outline: 1px solid blue;">
                        <div class="card-body">
                            nnn
                        </div>
                    </div>
                    <center>
                        <h6>Attempts allowed : 1</h6>
                        <h6>This quiz closed on Friday, 17 February 2023, 7:05 PM</h6>
                        <h6>Time limit : 10 mins</h6>
                        <br />
                        <h6>No questions have been added yet</h6>
                        <br />
                        <a class="btn btn-warning" href="Edit_Quiz.aspx">Edit quiz</a>
                        <br />
                        <br />
                           <a href="Modul_List.aspx" class="btn btn-secondary">
                                                Back to the course
                                            </a>
                        
                    </center>
                    
                </div>
            </div>
        </div>
    </main>

</asp:Content>
