<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Blank.Master" AutoEventWireup="true" CodeBehind="SumOfAttempt.aspx.cs" Inherits="ELEARNING.SumOfAttempt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main id="main-blank" class="main">
        <!-- End Page Title -->

        <section class="section profile">
            <div class="row">
                <div class="col-xl-2">

                    <div class="card">
                        <div class="card-header"><b>Quiz Navigation</b></div>
                        <div class="card-body profile-card pt-4 d-flex flex-column">
                            <div>
                                <asp:Repeater runat="server" ID="RptNumber">
                                    <ItemTemplate>
                                        <a class="btn btn-light" href="#"><%# Container.ItemIndex + 1 %></a>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-xl-10">

                    <div class="card text-center">
                        <div class="card-header text-center">
                            <b>Competence Test 2<br />
                                <br />
                                Summary of Attempt</b>
                        </div>
                        <div class="row">

                            <div class="col-xl-4">
                            </div>
                            <div class="card-body pt-3 col-xl-4 align-items-lg-center">
                                <table class="table">
                                    <thead>
                                        <tr class="bg-primary-light">
                                            <th scope="col">Question</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Marks</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater runat="server" ID="RptSum">
                                            <ItemTemplate>
                                                <tr>
                                                    <th scope="row"><%# Container.ItemIndex + 1 %></th>
                                                    <td>Answer saved</td>
                                                    <td></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                    </tbody>
                                </table>
                                <div>
                                    <br />
                                    <a href="CompetenceTest.aspx" type="button" class="btn btn-outline-primary">Return to attempt</a>
                                    <p>Time left <b>0:30:00</b></p>
                                    <p>This attempt must be submitted by Friday, 19 March 2023, 5.00 PM</p>
                                    <a href="CompetenceTestResult.aspx" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal_Conf_Attempt">Submit all and finish</a>
                                    <div class="modal fade" id="modal_Conf_Attempt" tabindex="-1">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title">Attempt Confirmation</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    You are about to finish the attempt. Do you wish to proceed?
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancel</button>
                                                    <a href="CompetenceTestResult.aspx" type="button" class="btn btn-primary">Yes</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-4">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>
</asp:Content>