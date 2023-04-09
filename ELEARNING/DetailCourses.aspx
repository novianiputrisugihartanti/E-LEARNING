<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Mhs.Master" AutoEventWireup="true" CodeBehind="DetailCourses.aspx.cs" Inherits="ELEARNING.DetailCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Course</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item">Course</li>
                </ol>
            </nav>
        </div>

        <!-- End Page Title -->

        <section class="section profile">
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-header" style="height:80px">

                            <div class="row">
                                <div class="col-xl-8">

                                    <div class="card-title">
                                        <h5><b>Course : Dasar Komputer</b></h5>
                                    </div>
                                </div>
                                <div class="col-xl-4">

                                    <div class="card-title">
                                        <h5><b>Level of Knowledge : Pemula</b></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <!-- Bordered Tabs -->
                            <div class="tab-content pt-2">

                                <!-- Default Accordion -->
                                <asp:Repeater ID="rptDaftarKomp" runat="server" OnItemDataBound="rptDaftarKomp_ItemDataBound">
                                    <ItemTemplate>
                                        <div class="accordion" id="accordionExample">
                                            <div class="accordion-item">
                                                <h2 class="accordion-header" id="heading<%# Container.ItemIndex + 1 %>">
                                                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse<%# Container.ItemIndex + 1 %>" aria-expanded="true" aria-controls="collapseOne">
                                                        Modul <%# Container.ItemIndex + 1 %>: <%# DataBinder.Eval(Container.DataItem, "kompetensi") %>
                                                    </button>
                                                </h2>
                                                <asp:HiddenField ID="idKomp" runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "idKomp") %>'/>
                                                <div id="collapse<%# Container.ItemIndex + 1 %>" class="accordion-collapse collapse show" aria-labelledby="heading<%# Container.ItemIndex + 1 %>" data-bs-parent="#accordionExample">
                                                    <div class="accordion-body">
                                                        <div class="row">
                                                            <div class="col-md-1">
                                                                <div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-8">
                                                                <div>
                                                                    <ul class="list-group list-group-flush">
                                                                        <asp:Repeater ID="rptDaftarQuiz" runat="server" >
                                                                            <ItemTemplate> 
                                                                                <li class="list-group-item">
                                                                                    <img src="https://elearning.polytechnic.astra.ac.id/theme/image.php/standard/quiz/1673254093/icon" class="iconlarge activityicon" alt=" " role="presentation">
                                                                                    <%--<i class="bi bi-trophy" style="color:blue;"></i>--%>
                                                                                    <a href='CompetenceTestResult.aspx?idujian=<%# DataBinder.Eval(Container.DataItem, "idUjian") %>&&idmatkul=<%# DataBinder.Eval(Container.DataItem, "matkul") %>' style="color:black" id="ujian<%# Container.ItemIndex + 1 %>"><%# DataBinder.Eval(Container.DataItem, "namaUjian") %></a>
                                                                                </li>
                                                                            </ItemTemplate>
                                                                        </asp:Repeater>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3 align-items-center">
                                                                <div class="align-items-center">
                                                                    <a href="OtherResource.aspx" style="width:200px;" type="button" class="btn btn-primary">Other Resources</a>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                                

                                    
                                <!-- End Default Accordion Example -->

                                <div class="card-footer">
                                    <div class="row">
                                        <div class="col-md-5 align-items-center">
                                            <%--<div class="align-items-center">
                                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal_CompetenceTest">Competence Test</button>
                                                <div class="modal fade" id="modal_CompetenceTest" tabindex="-1">
                                                    <div class="modal-dialog modal-dialog-centered">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title">Confirmation</h5>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                Number of attempts allowed: 1
                                                                <br />
                                                                You are about to start a new attempt. Do you wish to proceed?
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                                <a href="CompetenceTest.aspx" type="button" class="btn btn-primary">Yes</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>--%>
                                        </div>
                                        <div class="col-md-5 align-items-center">
                                            <%--<div class="align-items-center">
                                                <a href="" runat="server" id="testResult" class="btn btn-outline-warning">Competence Test Result</a>
                                            </div>--%>
                                        </div>
                                        <div class="col-md-4 align-items-center">
                                            <div class="align-items-center">
                                                <a href="LearningHistory.aspx" type="button" class="btn btn-outline-primary">Learning History</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <!-- End Bordered Tabs -->

                        </div>
                    </div>

                </div>
            </div>
        </section>

    </main>
    <!-- End #main -->
</asp:Content>
