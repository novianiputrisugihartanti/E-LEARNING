<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Mhs.Master" AutoEventWireup="true" CodeBehind="OtherResources.aspx.cs" Inherits="ELEARNING.OtherResources" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <main id="main" class="main">

        <div class="pagetitle">
            <h1>Course</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item">Course</li>
                    <li class="breadcrumb-item" id="lblBCCompName" runat="server"></li>
                </ol>
            </nav>
        </div>

        <!-- End Page Title -->

        <section class="section profile">
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-body">
                            <!-- Bordered Tabs -->

                            <div class="card-title">
                                <h5><b>Other Resource for You</b></h5>
                            </div>
                            <!-- Default Accordion -->
                            <div class="accordion" id="accordionExample">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingOne">
                                        <button id="btnCollapse" runat="server" class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        </button>
                                    </h2>


                                    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                        <div class="accordion-body">

                                            <div class="row">
                                                <div class="col-md-1">
                                                    <div>
                                                    </div>
                                                </div>
                                                <div class="col-md-9">
                                                    <div>
                                                        <ul class="list-group list-group-flush">
                                                            <asp:Repeater ID="RptLODetail" runat="server">
                                                                <ItemTemplate>
                                                                    <li class="list-group-item">
                                                                        <input class="form-check-input me-1" id="chk1" type="checkbox" value="" aria-label="..." disabled>
                                                                        <a href="CourseOutline.aspx" style="color: black;"><%# DataBinder.Eval(Container.DataItem, "loKet") %></a>
                                                                    </li>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                            <li class="list-group-item">
                                                                <div class="align-items-center" style="margin-left:35%">
                                                                    <a id="lblEmpty" runat="server" href="CourseOutline.aspx" style="color: red;">Belum ada resource untuk modul ini</a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col-md-3 align-items-center">
                                    <div class="align-items-center">
                                        <a href="DetailCourses.aspx" type="button" class="btn btn-primary">Back to Main Course</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </section>

    </main>
</asp:Content>
