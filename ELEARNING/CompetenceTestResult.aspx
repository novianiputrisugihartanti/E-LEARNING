<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Mhs.Master" AutoEventWireup="true" CodeBehind="CompetenceTestResult.aspx.cs" Inherits="ELEARNING.CompetenceTestResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Competence Test Result</h1>
        </div>

        <!-- End Page Title -->

        <section class="section profile">
            <div class="row">
                <div class="col-xl-12">
                    <!-- Card with header and footer -->
                    <div class="card">
                        <div class="card-header">
                            <b>Your Score: <span runat="server" id="nilai"></span></b><br />
                            <div runat="server" id="review" ></div>
                            
                        </div>
                        <div class="card-body">
                            <h3 class="card-title"><b>Summary and Recommendations</b></h3>
                            <h6 class="card-title">What you know: </h6>
                            <!-- List group with active and disabled items -->
                            <ol class="list-group list-group-numbered">
                                <asp:Repeater ID="rptBenar" runat="server">
                                    <ItemTemplate> 
                                        <li>
                                            <li class="list-group-item"><%# DataBinder.Eval(Container.DataItem, "topik") %></li>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>

                                <%--<li class="list-group-item">Tipe dan Ekspresi</li>
                                <li class="list-group-item">Pendahuluan Bahasa C</li>
                                <li class="list-group-item">Sequence</li>--%>
                            </ol>
                            <!-- End Clean list group -->
                            <br />
                            <h6 class="card-title">What you should review: </h6>
                            <ol class="list-group list-group-numbered">
                                <asp:Repeater ID="rptSalah" runat="server">
                                    <ItemTemplate> 
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="ms-2 me-auto">
                                                <div class="fw-bold"><%# DataBinder.Eval(Container.DataItem, "topik") %></div>
                                            </div>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ol>
                            <div class="ms-2 me-auto">
                                <h6 class="card-title">You should learn:</h6>
                                <a href="CourseOutline.aspx" id="btnKompetensi" runat="server" class="btn btn-outline-primary">  </a>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="row ">
                                <div class="col-lg-4 align-items-center">
                                    <a href="DetailCourses.aspx" runat="server" style="width:200px;" id="btnKembali" class="btn btn-warning">Back</a>
                                </div>
                                <div class="col-lg-4 align-items-center">
                                    <a href="CompetenceTest.aspx" style="width:200px;" runat="server" id="btnRetake" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal_Retake_Competence_Test">Re-take Test</a>
                                    <div class="modal fade" id="modal_Retake_Competence_Test" tabindex="-1">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title">Re-Take Competence Test Confirmation</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    Number of attempts allowed: 1
                                                                <br />
                                                    You are about to re-take a new attempt. Do you wish to proceed?
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button"  class="btn btn-danger" data-bs-dismiss="modal">Cancel</button>
                                                    <a href="CompetenceTest.aspx" type="button" class="btn btn-primary">Yes</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 align-items-center">
                                    <a href="DetailCourses.aspx" runat="server" id="btnNext" class="btn btn-primary">Continue Module</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Card with header and footer -->
                </div>
            </div>
        </section>

    </main>
    <!-- End #main -->
</asp:Content>
