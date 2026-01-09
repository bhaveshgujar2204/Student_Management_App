<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
/* ================= GLOBAL ================= */
html {
    scroll-behavior: smooth;
}

body {
    font-family: 'Segoe UI', sans-serif;
    transition: background 0.4s, color 0.4s;
}

/* ================= LIGHT MODE ================= */
body.light-mode {
    background: #f4f6f9;
    color: #000;
}

body.light-mode .navbar-custom {
    background: linear-gradient(45deg, #0d6efd, #6610f2);
}

body.light-mode .glass-card {
    background: rgba(255,255,255,0.95);
    color: #000;
}

/* ================= DARK MODE ================= */
body.dark-mode {
    background: radial-gradient(circle at top, #111827, #020617);
    color: #fff;
}

body.dark-mode .navbar-custom {
    background: linear-gradient(45deg, #020617, #0f172a);
}

body.dark-mode .glass-card {
    background: rgba(255,255,255,0.12);
    color: #fff;
}

/* ================= NAVBAR ================= */
.navbar-custom {
    box-shadow: 0 4px 25px rgba(0,0,0,0.6);
}

.navbar img {
    filter: drop-shadow(0 0 6px rgba(255,215,0,0.6));
}

.navbar-custom .btn {
    margin-left: 10px;
    border-radius: 30px;
    padding: 6px 18px;
    font-weight: 500;
}

/* ================= SECTIONS ================= */
.section-bg {
    min-height: 100vh;
    display: flex;
    align-items: center;
    
}
.enroll {
    background:
        linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)),
        url("images/addstudentbg.jpg") center/cover no-repeat;
}

.view {
    background:
        linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)),
        url("images/viewstudents.jpg") center/cover no-repeat;
}

}

/* ================= HEADINGS ================= */
.heading {
    font-weight: 700;
    text-align: center;
    margin-bottom: 25px;
    background: linear-gradient(45deg, #d4af37, #ffd700);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

/* ================= INPUTS ================= */
.form-control,
.form-select {
    border-radius: 14px;
    font-weight: 500;
}

body.dark-mode .form-control,
body.dark-mode .form-select {
    background: rgba(255,255,255,0.95);
}

/* ================= BUTTON ================= */
.btn-submit {
    background: linear-gradient(45deg, #d4af37, #ffd700);
    border: none;
    color: #000;
    font-weight: 600;
    border-radius: 30px;
    padding: 12px 45px;
}

.spacer {
    height: 70px;
}
</style>
</head>

<body class="dark-mode">

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark navbar-custom sticky-top">
    <div class="container-fluid">
        <img src="images/cjclogo.jpeg" width="100" height="50">

        <div class="ms-auto">
            <a href="#enroll" class="btn btn-outline-light">Enroll Student</a>
            <a href="#view" class="btn btn-outline-light">View Student</a>
            <a href="/" class="btn btn-warning fw-semibold rounded-pill">Logout</a>
            
            <!-- TOGGLE BUTTON -->
            <button class="btn btn-outline-warning" onclick="toggleTheme()" id="themeBtn">
                ☀ Light
            </button>
        </div>
    </div>
</nav>

<!-- ENROLL SECTION -->
<section class="section-bg enroll" id="enroll" >
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="glass-card p-4" style="border-radius: 14px;">
                    <h3 class="heading">Student Enrollment Form</h3>

                    <form action="enroll_student">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="studentFullName" placeholder="Full Name" required>
                            </div>
                            <div class="col-md-6">
                                <input type="email" class="form-control" name="studentEmail" placeholder="Email" required>
                            </div>
                            <div class="col-md-6">
                                <input type="number" class="form-control" name="StudentAge" placeholder="Age" required>
                            </div>
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="studentCollegeName" placeholder="College Name">
                            </div>
                            <div class="col-md-6">
                                <input type="number" class="form-control" name="feesPaid" placeholder="Fees Paid">
                            </div>

                            <div class="col-md-6">
                                <label class="fw-semibold">Course</label><br>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="StudentCourse" value="Java" checked>
                                    <label class="form-check-label">Java</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="StudentCourse" value="Python">
                                    <label class="form-check-label">Python</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="StudentCourse" value="Testing" checked>
                                    <label class="form-check-label">Testing</label>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <select class="form-select" name="batchMode">
                                    <option selected disabled>Batch Mode</option>
                                    <option>Online</option>
                                    <option>Offline</option>
                                </select>
                            </div>

                            <div class="col-md-6">
                                <select class="form-select" name="batchNumber">
                                    <option selected disabled>Batch Number</option>
                                     <option>FDJ-197</option>
                                    <option>REG-197</option>
                                    <option>FDJ-200</option>
                                    <option>REG-200</option>
                                </select>
                            </div>
                        </div>

                        <div class="text-center mt-4">
                            <button class="btn btn-submit">Enroll Student</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section-bg view" id="view">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-11">

                <!-- GLASS CARD -->
                <div class="glass-card p-4" style="border-radius:14px;">

                    <h3 class="heading">View Students</h3>

                    <!-- SEARCH FORM -->
                    <form action="search" class="row g-3 mb-4 justify-content-center">
                        <div class="col-md-4">
                            <select class="form-select" name="batchNumber">
                                <option selected >Select Batch Number</option>
                                <option>FDJ-197</option>
                                <option>REG-197</option>
                                <option>FDJ-200</option>
                                <option>REG-200</option>
                            </select>
                        </div>

                        <div class="col-md-4">
                            <select class="form-select" name="batchMode">
                                <option selected >Select Batch Mode</option>
                                <option>Online</option>
                                <option>Offline</option>
                            </select>
                        </div>

                        <div class="col-md-3 text-center">
                            <button class="btn btn-submit w-100">Search</button>
                        </div>
                    </form>

                    <!-- MESSAGE -->
                    <c:if test="${not empty message}">
                        <div class="alert alert-warning text-center fw-semibold">
                            ${message}
                        </div>
                    </c:if>

                    <!-- TABLE -->
                    <div class="table-responsive">
                        <table class="table table-dark table-hover align-middle text-center">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Age</th>
                                    <th>College</th>
                                    <th>Course</th>
                                    <th>Batch</th>
                                    <th>Mode</th>
                                    <th>Fees</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>

                            <tbody>
                                <c:forEach items="${data}" var="s">
                                    <tr>
                                        <td>${s.studentId}</td>
                                        <td>${s.studentFullName}</td>
                                        <td>${s.studentEmail}</td>
                                        <td>${s.studentAge}</td>
                                        <td>${s.studentCollegeName}</td>
                                        <td>${s.studentCourse}</td>
                                        <td>${s.batchNumber}</td>
                                        <td>${s.batchMode}</td>
                                        <td>₹ ${s.feesPaid}</td>
                                        <td>
                                            <div class="btn-group btn-group-sm">
                                                <a class="btn btn-success me-1">Pay Fees</a>
                                                <a class="btn btn-primary me-1">Batch Shift</a>
                                                <a href="delete?StudentId=${s.studentId}" 
                                                   class="btn btn-danger me-1">
                                                   Remove
                                                </a>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

 
   
   
      

<div class="spacer"></div>

<!-- SCRIPT -->
<script>
function toggleTheme() {
    const body = document.body;
    const btn = document.getElementById("themeBtn");

    body.classList.toggle("dark-mode");
    body.classList.toggle("light-mode");

    if (body.classList.contains("dark-mode")) {
        btn.innerHTML = "☀ Light";
    } else {
        btn.innerHTML = "🌙 Dark";
    }
}
</script>

</body>
</html>
