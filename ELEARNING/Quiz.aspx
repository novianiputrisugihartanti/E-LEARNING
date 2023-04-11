<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Blank.Master" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="ELEARNING.Quiz" ValidateRequest="false" EnableEventValidation="false" %>
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
                                        <%--<a class="btn btn-light" href="#"><%# Container.ItemIndex + 1 %></a>--%>
                                        <asp:Button ID="btnNumber" runat="server" Text="<%# Container.ItemIndex + 1 %>" CssClass="btn btn-light" />
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            <br />
                            <asp:Repeater runat="server" ID="RptFinishAttempt">
                                <ItemTemplate>
                                    <asp:HyperLink ID="lblReq" type="button" class="btn-link" runat="server" NavigateUrl='<%# "SumOfAttempt.aspx?id=" + Eval("IdKomp") %>'
                                        Visible="true" Font-Underline="false">Finish Attempt...</asp:HyperLink>
                                </ItemTemplate>
                            </asp:Repeater>
                            <p>Time left <b>0:30:00</b></p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-10">

                    <asp:Repeater ID="RptQuestion" runat="server" OnItemDataBound="RptQuestion_ItemDataBound">
                        <ItemTemplate>
                            <div class="card bg-primary-light">
                                <div class="card-header">
                                    <div class="row">
                                        <div class="col-sm-10">
                                            <b>Question <%# Container.ItemIndex + 1 %></b>
                                        </div>
                                        <div class="col-sm-2">
                                            <asp:Button runat="server" ID="btnQFlag" CssClass="btn btn-link" Font-Underline="true" Text="Flag Question" OnClick="btnQFlag_Click" />
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body pt-3">
                                    <p><%# DataBinder.Eval(Container.DataItem, "pertanyaan") %></p>
                                    <asp:HiddenField EnableViewState="true" ID="lblIdSoal" runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "IdSoal") %>' />
                                    <div class="col-sm-10">
                                        <asp:Repeater runat="server" ID="RptAnswer">
                                            <ItemTemplate>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name='<%# DataBinder.Eval(Container.DataItem, "IdSoal") %>' id="<%# DataBinder.Eval(Container.DataItem, "IdPilihan") %>" value="option1">
                                                    <label class="form-check-label" for="<%# DataBinder.Eval(Container.DataItem, "IdPilihan") %>">
                                                        <%# DataBinder.Eval(Container.DataItem, "pilihan") %>
                                                    </label>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                    <%--                    <div class="card bg-primary-light">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-sm-10">
                                    <b>Question 2</b>
                                </div>
                                <div class="col-sm-2">
                                    <a href="#">Flag question    <i class="bi bi-flag"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body pt-3">
                            <p>Open merupakan operasi dasar pada file.</p>
                            <div class="col-sm-10">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1">
                                    <label class="form-check-label" for="gridRadios1">
                                        True
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                                    <label class="form-check-label" for="gridRadios2">
                                        False
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card bg-primary-light">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-sm-10">
                                    <b>Question 3</b>
                                </div>
                                <div class="col-sm-2">
                                    <a href="#">Flag question    <i class="bi bi-flag"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body pt-3">
                            <p>Perhatikan penggalan program berikut : </p>
                            <img src="assets/img/ContohSoal.jpeg" class="card-img-top card-img-bottom pb-2" style="width: 30%" alt="...">
                            <p>Bagian manakah yang menunjukkan kesalahan? (Jawaban bisa lebih dari satu)</p>
                            <div class="col-sm-10">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                    <label class="form-check-label" for="gridCheck1">
                                        A
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck2">
                                    <label class="form-check-label" for="gridCheck2">
                                        B
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck3">
                                    <label class="form-check-label" for="gridCheck3">
                                        C
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck4">
                                    <label class="form-check-label" for="gridCheck4">
                                        D
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card bg-primary-light">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-sm-10">
                                    <b>Question 4</b>
                                </div>
                                <div class="col-sm-2">
                                    <a href="#">Flag question    <i class="bi bi-flag"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body pt-3">
                            <p>Open merupakan operasi dasar pada file.</p>
                            <div class="col-sm-12">
                                <textarea class="form-control" style="height: 100px"></textarea>
                            </div>
                        </div>
                    </div>--%>
                    <a href="SumOfAttempt.aspx" type="button" class="btn btn-outline-primary">Next</a>
                </div>
            </div>
        </section>
    </main>
</asp:Content>
