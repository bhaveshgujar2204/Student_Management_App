<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" 
      rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" 
      rel="stylesheet">

<style>
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
    }

    .lux-card {
        background: rgba(0, 0, 0, 0.75);
        backdrop-filter: blur(10px);
        border-radius: 20px;
        border: 1px solid rgba(255, 215, 0, 0.3);
    }

    .lux-title {
        color: #ffd700;
        font-weight: 600;
        letter-spacing: 1px;
    }

    .form-control {
        background-color: #1c1c1c;
        border: 1px solid #444;
        color: #fff;
    }

    .form-control:focus {
        background-color: #1c1c1c;
        border-color: #ffd700;
        box-shadow: none;
        color: #fff;
    }

    .btn-lux {
        background: linear-gradient(45deg, #d4af37, #ffd700);
        border: none;
        color: #000;
        font-weight: 600;
        border-radius: 30px;
    }

    .btn-lux:hover {
        background: linear-gradient(45deg, #ffd700, #d4af37);
        transform: scale(1.02);
    }

    marquee {
        font-weight: 500;
        letter-spacing: 1px;
    }
</style>

</head>

<body>

<!-- Top marquee -->
<div class="bg-black py-2">
    <marquee class="text-warning fs-5">
        ${login_fail} ✦ Welcome to Student Management System ✦ Secure Login ✦
    </marquee>
</div>

<!-- Login Section -->
<div class="container">
    <div class="d-flex justify-content-center align-items-center vh-100">
        <div class="card lux-card shadow-lg" style="width: 24rem;">
            <div class="card-body p-4">

                <h3 class="text-center lux-title mb-4">Member Login</h3>

                <form action="login" method="post">

                    <!-- Username -->
                    <div class="mb-3">
                        <label class="form-label text-light">Username</label>
                        <input type="text" name="username" 
                               class="form-control rounded-pill px-3"
                               placeholder="Enter username" required>
                    </div>

                    <!-- Password -->
                    <div class="mb-4">
                        <label class="form-label text-light">Password</label>
                        <input type="password" name="password"
                               class="form-control rounded-pill px-3"
                               placeholder="Enter password" required>
                    </div>

                    <!-- Button -->
                    <div class="d-grid">
                        <button type="submit" class="btn btn-lux py-2">
                            Login Securely
                        </button>
                    </div>

                </form>

                <p class="text-center text-secondary mt-3 small">
                    © 2026 Student Management App
                </p>

            </div>
        </div>
    </div>
</div>

</body>
</html>
