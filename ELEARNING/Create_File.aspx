<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Create_File.aspx.cs" Inherits="ELEARNING.Create_File" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="col-lg-12">

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Adding a new File to 1 Januari - 7 Januari</h5>


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
                                                <label for="inputText" class="col-sm-2 col-form-label">Name</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Description</label>
                                                <div class="col-sm-10">
                                                    <div class="quill-editor-full">
                                                        <p>Hello World!</p>
                                                        <p>This is Quill <strong>full</strong> editor</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row mb-3 pt-5">
                                                <label for="inputText" class="col-sm-2 col-form-label">Description on course page</label>
                                                <div class="col-sm-10">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    </div>
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
                                    Content
                                </button>
                            </h2>
                            <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Select file</label>
                                                <div class="col-sm-10">
                                                    <input type="file" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingS">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseS" aria-expanded="false" aria-controls="flush-collapseS">
                                    Learning style
                                </button>
                            </h2>
                            <div id="flush-collapseS" class="accordion-collapse collapse" aria-labelledby="flush-headingS" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row">
                                                <div class="col-md-6">

                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Active
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Global
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Intuitive
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Reflective
                                                        </label>
                                                    </div>

                                                </div>
                                                <div class="col-md-6">

                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Sensing
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Sequential
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Verbal
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Visual
                                                        </label>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingSeven">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSeven" aria-expanded="false" aria-controls="flush-collapseSeven">
                                    Appearance
                                </button>
                            </h2>
                            <div id="flush-collapseSeven" class="accordion-collapse collapse" aria-labelledby="flush-headingSeven" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Display</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option value="1">Automatic</option>
                                                        <option value="1">Embed</option>
                                                        <option value="1">Force download</option>
                                                        <option value="1">Open</option>
                                                        <option value="1">In pop-up</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Show size</label>
                                                <div class="col-sm-10">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Show type</label>
                                                <div class="col-sm-10">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label"></label>
                                        <div class="col-sm-10">
                                            <button type="button" class="btn btn-primary"><i class="bi bi-plus-lg"></i>Show more</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingTen">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTen" aria-expanded="false" aria-controls="flush-collapseTen">
                                    Common module settings
                                </button>
                            </h2>
                            <div id="flush-collapseTen" class="accordion-collapse collapse" aria-labelledby="flush-headingTen" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Visible</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option value="1">Show</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">ID number</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control">
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
                                <button type="button" class="btn btn-outline-primary">Save and return to course</button>
                                &nbsp;&nbsp;<a href="#" class="btn btn-primary">Save and display</a>&nbsp;&nbsp;<a href="Modul_List.aspx" class="btn btn-secondary">Cancel
                                </a>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <script>
        $(document).ready(function () {
            $(document).ready(function () {
                $('#general').removeClass('collapsed');
                $('#flush-collapseOne').addClass('show');
            });
        });
    </script>
</asp:Content>
