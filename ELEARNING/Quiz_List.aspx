<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Quiz_List.aspx.cs" Inherits="ELEARNING.Quiz_List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<main id="main" class="main">

        <div class="pagetitle">
            <h1>List of Quiz</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item">List of Quiz</li>
                </ol>
            </nav>
        </div>

        <!-- End Page Title -->

        <section class="section profile">
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-body pt-3">
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
                                                                <div class="col-md-9">
                                                                    <div>
                                                                        <ul class="list-group list-group-flush">
                                                                            <asp:HiddenField ID="idMatkul" runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "matkul") %>'/>
                                                                            <asp:Repeater ID="rptDaftarQuiz" runat="server" >
                                                                                <ItemTemplate> 
                                                                                    <li class="list-group-item">
                                                                                        <img src="https://elearning.polytechnic.astra.ac.id/theme/image.php/standard/quiz/1673254093/icon" class="iconlarge activityicon" alt=" " role="presentation">
                                                                                        <%--<i class="bi bi-trophy" style="color:blue;"></i>--%>
                                                                                        <a href='Monitoring_Quiz.aspx?idujian=<%# DataBinder.Eval(Container.DataItem, "idUjian") %>' style="color:black" id="ujian<%# Container.ItemIndex + 1 %>"><%# DataBinder.Eval(Container.DataItem, "namaUjian") %></a>
                                                                                    </li>
                                                                                </ItemTemplate>
                                                                            </asp:Repeater>
                                                                        
                                                                        </ul>
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
                                                <button type="button" class="btn btn-primary">Competence Test</button>
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
</asp:Content>
