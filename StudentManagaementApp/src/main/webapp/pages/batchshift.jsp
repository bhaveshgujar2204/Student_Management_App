<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Batch</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"
      rel="stylesheet">

<style>
    body {
        background: #f4f6f9;
    }
    .card {
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.1);
    }
    .table th {
        width: 40%;
    }
</style>
</head>

<body>

<div class="container mt-4">
    <div class="row justify-content-center">
        <div class="col-lg-7">

            <!-- CARD -->
            <div class="card">
                <div class="card-header bg-primary text-white text-center">
                    <h5 class="mb-0">
                        <i class="bi bi-person-lines-fill"></i> Student Batch Details
                    </h5>
                </div>

                <div class="card-body">

                    <!-- STUDENT DETAILS -->
                    <table class="table table-bordered table-hover mb-4">
                        <tbody>
                            <tr>
                                <th class="table-light">Student ID</th>
                                <td>${st.studentId}</td>
                            </tr>
                            <tr>
                                <th class="table-light">Student Name</th>
                                <td>${st.studentFullName}</td>
                            </tr>
                            <tr>
                                <th class="table-light">Course</th>
                                <td>${st.studentCourse}</td>
                            </tr>
                            <tr>
                                <th class="table-light">Fees Paid</th>
                                <td>₹ ${st.feesPaid}</td>
                            </tr>
                            <tr>
                                <th class="table-light">Current Batch</th>
                                <td>${st.batchNumber}</td>
                            </tr>
                            <tr>
                                <th class="table-light">Batch Mode</th>
                                <td>${st.batchMode}</td>
                            </tr>
                        </tbody>
                    </table>

                    <!-- UPDATE FORM -->
                    <h6 class="text-primary mb-3">
                        <i class="bi bi-arrow-repeat"></i> Update Batch Details
                    </h6>

                    <form action="batchshift" method="get" class="row g-3">

                        <input type="hidden" name="StudentId" value="${st.studentId}"/>

                        <div class="col-md-6">
                            <label class="form-label">Batch Number</label>
                            <select class="form-select" name="batchNumber" required>
                                <option value="">Select Batch Number</option>
                                <option>FDJ-197</option>
                                <option>REG-197</option>
                                <option>FDJ-200</option>
                                <option>REG-200</option>
                            </select>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Batch Mode</label>
                            <select class="form-select" name="batchMode" required>
                                <option value="">Select Batch Mode</option>
                                <option>Online</option>
                                <option>Offline</option>
                            </select>
                        </div>

                        <div class="col-12 text-center mt-4">
                            <button class="btn btn-success px-5">
                                <i class="bi bi-check-circle"></i> Update Batch
                            </button>
                        </div>
                    </form>

                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>
