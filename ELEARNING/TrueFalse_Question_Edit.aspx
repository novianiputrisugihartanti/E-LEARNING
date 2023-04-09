<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="TrueFalse_Question_Edit.aspx.cs" Inherits="ELEARNING.TrueFalse_Question_Edit" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="col-lg-12">

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Adding a True or false question</h5>


                    <div class="accordion accordion-flush" id="accordionFlushExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingOne">
                                <button id="general" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                    General
                                </button>
                            </h2>
                            <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Question ID</label>
                                                <div class="col-sm-10">
                                                    <asp:TextBox ID="txtQuestionID" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Question text</label>
                                                <div class="col-sm-10">
                                                    <asp:TextBox ID="txtQuestionText" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                    <script type="text/javascript" lang="javascript">
                                                        CKEDITOR.replace('<%=txtQuestionText.ClientID%>');
                                                    </script>
                                                </div>
                                            </div>
                                            <div class="row mb-3 pt-5">
                                                <label for="inputText" class="col-sm-2 col-form-label">Topic</label>
                                                <div class="col-sm-10">
                                                    <asp:TextBox ID="txtTopic" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Image</label>
                                                <div class="col-sm-10">
                                                    <asp:TextBox ID="txtImage" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingTwo">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                                    Answer
                                </button>
                            </h2>
                            <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Choice 1</label>
                                                <div class="col-sm-10">
                                                    <asp:TextBox ID="txtID1" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-sm-2 col-form-label">Grade</label>
                                                <div class="col-sm-10">
                                                    <asp:DropDownList ID="txtChoice1"
                                                        AppendDataBoundItems="True" CssClass="form-select"
                                                        runat="server">
                                                        <asp:ListItem Value="True">True</asp:ListItem>
                                                        <asp:ListItem Value="False">False</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-sm-2 col-form-label">Grade</label>
                                                <div class="col-sm-10">
                                                    <asp:DropDownList ID="GradeC1"
                                                        AppendDataBoundItems="True" CssClass="form-select"
                                                        runat="server">
                                                        <asp:ListItem Value="0">0</asp:ListItem>
                                                        <asp:ListItem Value="100">100</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Choice 1</label>
                                                <div class="col-sm-10">
                                                    <asp:TextBox ID="txtID2" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-sm-2 col-form-label">Grade</label>
                                                <div class="col-sm-10">
                                                    <asp:DropDownList ID="txtChoice2"
                                                        AppendDataBoundItems="True" CssClass="form-select"
                                                        runat="server">
                                                        <asp:ListItem Value="True">True</asp:ListItem>
                                                        <asp:ListItem Value="False">False</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-sm-2 col-form-label">Grade</label>
                                                <div class="col-sm-10">
                                                    <asp:DropDownList ID="GradeC2"
                                                        AppendDataBoundItems="True" CssClass="form-select"
                                                        runat="server">
                                                        <asp:ListItem Value="0">0</asp:ListItem>
                                                        <asp:ListItem Value="100">100</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
           <%--             <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingSix">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false" aria-controls="flush-collapseSix">
                                    Relationship
                                </button>
                            </h2>
                            <div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingSix" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            
                                                <h6 class="fw-bold text-dark">Select a relationship with LODetail </h6>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <asp:DropDownList ID="ddlkompetensi"
                                                            AppendDataBoundItems="True" CssClass="form-select"
                                                            runat="server">
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <asp:DropDownList ID="ddlkesulitan"
                                                            AppendDataBoundItems="True" CssClass="form-select"
                                                            runat="server">
                                                            <asp:ListItem Value="Mudah">Mudah</asp:ListItem>
                                                            <asp:ListItem Value="Sedang">Sedang</asp:ListItem>
                                                            <asp:ListItem Value="Sulit">Sulit</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="col-md-4">

                                                        <asp:Button ID="Button1" CssClass="btn btn-primary" Text="Search" type="submit" runat="server" OnClick="Button1_Click" />
                                                    </div>


                                                </div>
                                                <div class="row">
                                                <div class="col-md-12">
                                                    <asp:Repeater ID="rptLODetail" runat="server">
                                                        <ItemTemplate>

                                                            <%# (Container.ItemIndex) % 2 == 0 ? "<tr>" : string.Empty%>
                                                            <td>
                                                                <asp:CheckBox CssClass="form-check" runat="server" ID="rbt_etails" Text='<%# DataBinder.Eval(Container.DataItem, "Keterangan") %>'></asp:CheckBox>
                                                            </td>
                                                            <%# (Container.ItemIndex) % 2 == 2 ? "</tr>" : string.Empty%>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                    <asp:Label ID="lblMessage" runat="server" />

                                                </div>
                                            </div>
                                            </div>
                                        </div>
                                    
                                </div>
                            </div>
                        </div>--%>
                    </div>
                    <!-- End Accordion without outline borders -->
                    <div class="card-footer">
                        <div class="row mb-3">
                            <div class="col-sm-10">
                                <button type="button" class="btn btn-outline-primary">Save changes and continue editing</button>&nbsp;&nbsp;
                                <asp:Button ID="yourButtonId" CssClass="btn btn-primary" Text="Save changes" type="submit" runat="server" OnClick="yourButtonId_Click1" />
                                &nbsp;&nbsp;
                                <a href="Question_Bank.aspx" class="btn btn-secondary">Cancel</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </main>
    <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <script src="assets/vendor/quill/quill.min.js"></script>
    <script>
        $(document).ready(function () {
            $(document).ready(function () {
                $('#general').removeClass('collapsed');
                $('#flush-collapseOne').addClass('show');
            });
        });

    </script>
</asp:Content>
