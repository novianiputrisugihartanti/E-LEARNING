<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Essay_Question_Create.aspx.cs" Inherits="ELEARNING.Essay_Question_Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="col-lg-12">

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Adding a Essay question</h5>


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
                                                <label class="col-sm-2 col-form-label">Category</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option selected>Default for MI_2C_2022/2023_Pemrograman IV</option>
                                                        <option value="1">Ado.Net & Store Procedure (20)</option>
                                                        <option value="2">Arsitektur Wweb & HTML (40)</option>
                                                        <option value="3">Validation & User Control (29)</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Question name</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Question text</label>
                                                <div class="col-sm-10">
                                                    <div class="quill-editor-full">
                                                        <p>Hello World!</p>
                                                        <p>This is Quill <strong>full</strong> editor</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-3 pt-5">
                                                <label for="inputText" class="col-sm-2 col-form-label">Default mark</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" value="1">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">General feedback</label>
                                                <div class="col-sm-10">
                                                    <div class="editor">
                                                        <p>Hello World!</p>
                                                        <p>This is Quill <strong>full</strong> editor</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <br />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingSix">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false" aria-controls="flush-collapseSix">
                                    Response Options
                                </button>
                            </h2>
                            <div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingSix" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label class="col-sm-2 col-form-label">Response format</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option selected>HTML editor</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-sm-2 col-form-label">Require text</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option selected>Require the student to enter text</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-sm-2 col-form-label">Input box size</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option selected>15 lines</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-sm-2 col-form-label">Allow attachment</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option selected>No</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-sm-2 col-form-label">Requires attachments</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select" enable="false">
                                                        <option selected>Attachments are optional</option>
                                                    </select>
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
                                    Grader Information
                                </button>
                            </h2>
                            <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-3 col-form-label">Information for grades</label>
                                                <div class="col-sm-9">
                                                    <div class="editor">
                                                        <p>Hello World!</p>
                                                        <p>This is Quill <strong>full</strong> editor</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <br />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                    <!-- End Accordion without outline borders -->
                    <div class="card-footer">
                        <div class="row mb-3">
                            <div class="col-sm-10">
                                <button type="button" class="btn btn-outline-primary">Save changes and continue editing</button>&nbsp;&nbsp;
                                <button type="button" class="btn btn-primary">Save changes</button>
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
        var divs = document.getElementsByClassName("editor");
        for (var i = 0; i < divs.length; i++) {
            var quill = new Quill(divs[i], {
                theme: 'snow'
            });


        }

    </script>
</asp:Content>
