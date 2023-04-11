<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Mhs.Master" AutoEventWireup="true" CodeBehind="DetailCourses.aspx.cs" Inherits="ELEARNING.DetailCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Course</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item">Course</li>
                    <li class="breadcrumb-item" id="lblBCCourseName" runat="server"></li>
                </ol>
            </nav>
        </div>

        <!-- End Page Title -->

        <section class="section profile">
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-header" style="height: 80px">

                            <div class="row">
                                <div class="col-xl-8">
                                    <div class="card-title" style="margin-left: 3%">
                                        <h5><b>Course: </b><b id="lblCourseName" runat="server"></b></h5>
                                    </div>
                                </div>
                                <div class="col-xl-4">

                                    <div class="card-title">
                                       <%-- <asp:Label runat="server" ID="lblLoK"><h5><b>Level of Knowledge : Pemula</b></h5></asp:Label>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <!-- Bordered Tabs -->
                            <div class="tab-content pt-2">
                                <!-- Default Accordion -->
                                <asp:Repeater ID="RptCompetence" runat="server" OnItemDataBound="RptCompetence_ItemDataBound">
                                    <ItemTemplate>
                                        <div class="accordion" id="accordionExample">
                                            <div class="accordion-item">
                                                <h2 class="accordion-header" id="id<%# DataBinder.Eval(Container.DataItem, "IdKomp") %>">
                                                    <button class="accordion-button" id="btnComp" type="button" data-bs-toggle="collapse" data-bs-target='#<%# DataBinder.Eval(Container.DataItem, "IdKomp") %>' aria-expanded="true" aria-controls='#<%# DataBinder.Eval(Container.DataItem, "IdKomp") %>'>
                                                        <%# DataBinder.Eval(Container.DataItem, "kompetensi") %>
                                                    </button>
                                                    <asp:HiddenField EnableViewState="true" ID="lblComp" runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "IdKomp") %>' />
                                                </h2>

                                                <div id='<%# DataBinder.Eval(Container.DataItem, "IdKomp") %>' class="accordion-collapse collapse show" aria-labelledby="id<%# DataBinder.Eval(Container.DataItem, "IdKomp") %>" data-bs-parent="#accordionExample">
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
                                                                                    <asp:HyperLink runat="server" Style="color: black;" NavigateUrl='<%# "CourseOutline.aspx?id=" + Eval("IdLODetail")  %>'
                                                                                        Visible="true"><%# DataBinder.Eval(Container.DataItem, "loKet") %></asp:HyperLink>
                                                                                </li>
                                                                            </ItemTemplate>
                                                                        </asp:Repeater>

                                                                        <li class="list-group-item">
                                                                            <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                            <asp:HyperLink runat="server" Style="color: black;" NavigateUrl='<%# "Quiz.aspx?id=" + Eval("IdKomp")  %>'
                                                                                Visible="true">Quiz <%# DataBinder.Eval(Container.DataItem, "kompetensi") %></asp:HyperLink>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2 align-items-center">
                                                                <div class="align-items-center">
                                                                    <%--<a href="OtherResource.aspx" type="button" class="btn btn-primary">Other Resources</a>--%>
                                                                    <asp:HyperLink type="button" class="btn btn-primary" runat="server" NavigateUrl='<%# "OtherResources.aspx?id=" + Eval("IdKomp")  %>'
                                                                        Visible="true">Other Resources</asp:HyperLink>
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
                                            <div class="align-items-center">
                                             <%--  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal_CompetenceTest">Competence Test</button>--%>
                                                <div class="modal fade" id="modal_CompetenceTest" tabindex="-1">
                                                    <div class="modal-dialog modal-dialog-centered">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title">Confirmation</h5>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body text-center">
                                                                <h5><b id="lblTestName" runat="server"></b></h5>
                                                                Time start:
                                                                <asp:Label runat="server" ID="lblStart"></asp:Label>
                                                                <br />
                                                                Time finish:
                                                                <asp:Label runat="server" ID="lblClose"></asp:Label>
                                                                <br />
                                                                Number of attempts allowed:
                                                                <asp:Label runat="server" ID="lblAttempt"></asp:Label>
                                                                <br />
                                                                You are about to start a new attempt. Do you wish to proceed?
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                                <asp:Repeater runat="server" ID="RptConfirm">
                                                                    <ItemTemplate>
                                                                        <asp:HyperLink type="button" class="btn btn-primary" ID="linkToTest" runat="server" NavigateUrl='<%# "CompetenceTest.aspx?id=" + Eval("IdUjian")  %>'
                                                                            Visible="true">Yes</asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:Repeater>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5 align-items-center">
                                            <div class="align-items-center">
                                                <a href="LearningHistory.aspx" type="button" class="btn btn-outline-primary">Learning History</a>
                                            </div>
                                        </div>
                                        <div class="col-md-2 align-items-center">
                                            <div class="align-items-center">
                                                
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

    <script>
        $(document).ready(function () {
            $('.openQuiz').on('click', function () {
                $('#modal_Quiz').modal('show');

                var grp_id = $(this).data('komp_id');
                console.log(grp_id);

                $('#IdKomp').val(grp_id);
            });

        });
    </script>
    <!-- End #main -->
</asp:Content>
