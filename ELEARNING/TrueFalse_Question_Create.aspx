<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="TrueFalse_Question_Create.aspx.cs" Inherits="ELEARNING.TrueFalse_Question_Create" %>

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
                                                    <input type="text" class="form-control">
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
                                            <br />
                                            <div class="row mb-3">
                                                <label class="col-sm-2 col-form-label">Case sensitivity</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">

                                                        <option value="1">No, case is unimportant</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label class="col-sm-2 col-form-label">Correct answer</label>
                                                <div class="col-sm-10">
                                                    <label>You will provide at least one possible answer. Answer left blank will not be used. '*' can be used as a wildcardto match any characters. The first matching answer will be used to determine the score and feedback</label>
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
                                                <label class="col-sm-2 col-form-label">Answer 1</label>
                                                <div class="col-sm-4">
                                                    <input type="text" class="form-control" />
                                                </div>
                                                <div class="col-sm-3">
                                                    <label>Grade</label>
                                                </div>
                                                <div class="col-sm-3">
                                                    <select class="form-select">

                                                        <option value="1">None</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Feedback</label>
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

                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label class="col-sm-2 col-form-label">Answer 2</label>
                                                <div class="col-sm-4">
                                                    <input type="text" class="form-control" />
                                                </div>
                                                <div class="col-sm-3">
                                                    <label>Grade</label>
                                                </div>
                                                <div class="col-sm-3">
                                                    <select class="form-select">

                                                        <option value="1">None</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Feedback</label>
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

                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label class="col-sm-2 col-form-label">Answer 3</label>
                                                <div class="col-sm-4">
                                                    <input type="text" class="form-control" />
                                                </div>
                                                <div class="col-sm-3">
                                                    <label>Grade</label>
                                                </div>
                                                <div class="col-sm-3">
                                                    <select class="form-select">

                                                        <option value="1">None</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Feedback</label>
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

                                    <div class="row mb-3">
                                        <div class="col-sm-10">
                                            <button type="button" class="btn btn-primary">Blanks for 3 more answers</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingFour">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
                                    Multiple Tries
                                </button>
                            </h2>
                            <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label class="col-sm-3 col-form-label">Penalty for each incorrect try</label>
                                                <div class="col-sm-9">
                                                    <select class="form-select">
                                                        <option selected>33.33333%</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-3 col-form-label">Hint 1</label>
                                                <div class="col-sm-9">
                                                    <div class="editor">
                                                        <p>Hello World!</p>
                                                        <p>This is Quill <strong>full</strong> editor</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <br />
                                            <br />
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-3 col-form-label">Hint 2</label>
                                                <div class="col-sm-9">
                                                    <div class="editor">
                                                        <p>Hello World!</p>
                                                        <p>This is Quill <strong>full</strong> editor</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <br />
                                            <br />

                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-3 col-form-label"></label>
                                                <div class="col-sm-9">
                                                    <button type="button" class="btn btn-primary">Add another hint</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingFive">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
                                    Tags
                                </button>
                            </h2>
                            <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Tags</label>
                                                <div class="col-sm-10">
                                                    <label>Official tags</label>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label"></label>
                                                <div class="col-sm-10">
                                                    <input type="number" class="form-control" />
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label"></label>
                                                <div class="col-sm-10">
                                                    <label>Other tags (enter tags separated by commas)</label>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label"></label>
                                                <div class="col-sm-10">
                                                    <textarea id="w3review" name="w3review" rows="4" cols="50">
</textarea>
                                                </div>
                                            </div>
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
