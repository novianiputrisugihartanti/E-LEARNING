<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Create_Quiz.aspx.cs" Inherits="ELEARNING.Create_Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="col-lg-12">

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Adding a new Quiz to 1 Januari - 7 Januari</h5>


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
                                    Timing
                                </button>
                            </h2>
                            <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Open the quiz</label>
                                                <div class="col-sm-5">
                                                    <input type="datetime-local" class="form-control">
                                                </div>
                                                <div class="col-sm-5">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Enable
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Close the quiz</label>
                                                <div class="col-sm-5">
                                                    <input type="datetime-local" class="form-control">
                                                </div>
                                                <div class="col-sm-5">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Enable
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Close the quiz</label>
                                                <div class="col-sm-3">
                                                    <input type="text" class="form-control">
                                                </div>
                                                <div class="col-sm-3">
                                                    <select class="form-select">
                                                        <option value="1">Second</option>
                                                        <option value="2">Minutes</option>
                                                        <option value="3">Hours</option>
                                                    </select>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Enable
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">When time expires</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option value="1">Open attempts are submitted automatically</option>
                                                        <option value="1">Attempts must be submitted before time expires or they are not counted</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Submission grace periode</label>
                                                <div class="col-sm-3">
                                                    <input type="text" class="form-control">
                                                </div>
                                                <div class="col-sm-3">
                                                    <select class="form-select">
                                                        <option value="1">Days</option>
                                                    </select>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Enable
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
                            <h2 class="accordion-header" id="flush-headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                                    Grade
                                </button>
                            </h2>
                            <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Grade category</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option value="1">Uncategorised</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Aattempts allowed</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option value="1">1</option>
                                                        <option value="1">2</option>
                                                        <option value="1">3</option>
                                                        <option value="1">4</option>
                                                        <option value="1">5</option>
                                                        <option value="1">6</option>
                                                        <option value="1">7</option>
                                                        <option value="1">8</option>
                                                        <option value="1">9</option>
                                                        <option value="1">10</option>
                                                        <option value="1">Unlimited</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Grading method</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option value="1">Highest grade</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingFour">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
                                    Layout
                                </button>
                            </h2>
                            <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Question order</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option value="1">As shown on the edit screen</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">New page</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option value="1">Never, all question on one page</option>
                                                        <option value="1">Every questions</option>
                                                        <option value="1">Every 2 questions</option>
                                                        <option value="1">Every 3 questions</option>
                                                        <option value="1">Every 4 questions</option>
                                                        <option value="1">Every 5 questions</option>
                                                        <option value="1">Every 6 questions</option>
                                                        <option value="1">Every 7 questions</option>
                                                        <option value="1">Every 8 questions</option>
                                                        <option value="1">Every 9 questions</option>
                                                        <option value="1">Every 10 questions</option>
                                                        <option value="1">Every 11 questions</option>
                                                        <option value="1">Every 12 questions</option>
                                                        <option value="1">Every 13 questions</option>
                                                        <option value="1">Every 14 questions</option>
                                                        <option value="1">Every 15 questions</option>
                                                    </select>
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
                            <h2 class="accordion-header" id="flush-headingFive">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
                                    Question behaviour
                                </button>
                            </h2>
                            <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Shuffle within questions</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option value="1">Yes</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">How questions behave</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option value="1">Deferred feedback</option>
                                                    </select>
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
                            <h2 class="accordion-header" id="flush-headingSix">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false" aria-controls="flush-collapseSix">
                                    Review option
                                </button>
                            </h2>
                            <div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingSix" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <h6 class="fw-bold text-dark">During the attempt</h6>

                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            The attempt
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Whether correct
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Marks
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Specific feedback
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            General feedback
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Right answer
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Overal feedback
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <h6 class="fw-bold text-dark">Immediately after the attempt</h6>

                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            The attempt
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Whether correct
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Marks
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Specific feedback
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            General feedback
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Right answer
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Overal feedback
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <h6 class="fw-bold text-dark">Later, while the quiz is still open</h6>

                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            The attempt
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Whether correct
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Marks
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Specific feedback
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            General feedback
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Right answer
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Overal feedback
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <h6 class="fw-bold text-dark">After the quiz is closed</h6>

                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            The attempt
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Whether correct
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Marks
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Specific feedback
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            General feedback
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Right answer
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Overal feedback
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
                                                <label for="inputText" class="col-sm-2 col-form-label">Show the user's picture</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option value="1">No Image</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Decimal places in grades</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option value="1">2</option>
                                                    </select>
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
                            <h2 class="accordion-header" id="flush-headingEight">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseEight" aria-expanded="false" aria-controls="flush-collapseEight">
                                    Extra restrictions on attempts
                                </button>
                            </h2>
                            <div id="flush-collapseEight" class="accordion-collapse collapse" aria-labelledby="flush-headingEight" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Require password</label>
                                                <div class="col-sm-5">
                                                    <input type="text" class="form-control">
                                                </div>
                                                <div class="col-sm-5">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Unmask
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Require network address</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Enforced delay between 1st and 2nd attempts</label>
                                                <div class="col-sm-3">
                                                    <input type="text" class="form-control">
                                                </div>
                                                <div class="col-sm-3">
                                                    <select class="form-select">
                                                        <option value="1">Second</option>
                                                        <option value="2">Minutes</option>
                                                        <option value="3">Hours</option>
                                                    </select>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Enable
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Enforced delay between later attempts</label>
                                                <div class="col-sm-3">
                                                    <input type="text" class="form-control">
                                                </div>
                                                <div class="col-sm-3">
                                                    <select class="form-select">
                                                        <option value="1">Second</option>
                                                        <option value="2">Minutes</option>
                                                        <option value="3">Hours</option>
                                                    </select>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                        <label class="form-check-label" for="gridCheck1">
                                                            Enable
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Browser security</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option value="1">None</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label"></label>
                                        <div class="col-sm-10">
                                            <button type="button" class="btn btn-primary"><i class="bi bi-dash"></i>Show less</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingNine">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseNine" aria-expanded="false" aria-controls="flush-collapseNine">
                                    Overall feedback
                                </button>
                            </h2>
                            <div id="flush-collapseNine" class="accordion-collapse collapse" aria-labelledby="flush-headingNine" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="card" style="outline: 1px solid grey;">
                                        <div class="card-body pt-4">
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Grade boundary</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control">
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
                                                <label for="inputText" class="col-sm-2 col-form-label">Grade boundary</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control">
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
                                                <label for="inputText" class="col-sm-2 col-form-label">Grade boundary</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control">
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
                                            <button type="button" class="btn btn-primary">Add 3 more feedback fields</button>
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
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Group mode</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option value="1">No groups</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="inputText" class="col-sm-2 col-form-label">Grouping</label>
                                                <div class="col-sm-10">
                                                    <select class="form-select">
                                                        <option value="1">None</option>
                                                    </select>
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
                                &nbsp;&nbsp;
                                <a href="Quiz_View.aspx" class="btn btn-primary">Save and display</a>&nbsp;&nbsp;
                                <a href="Modul_List.aspx" class="btn btn-secondary">Cancel
                                </a>
                                
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
