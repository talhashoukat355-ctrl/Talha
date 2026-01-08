<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Create Account</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        
        <style>
            body {
                background: linear-gradient(45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
                background-size: 400% 400%;
                animation: gradient 15s ease infinite;
                height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            @keyframes gradient {
                0% { background-position: 0% 50%; }
                50% { background-position: 100% 50%; }
                100% { background-position: 0% 50%; }
            }

            .signup-card {
                background: rgba(255, 255, 255, 0.95);
                border-radius: 15px;
                box-shadow: 0 15px 35px rgba(0,0,0,0.2);
                overflow: hidden;
                width: 100%;
                max-width: 400px;
                padding: 2rem;
            }

            .form-control {
                border-radius: 10px;
                padding: 12px;
                border: 1px solid #ddd;
            }

            .btn-signup {
                background: #e73c7e;
                border: none;
                color: white;
                padding: 12px;
                border-radius: 10px;
                font-weight: bold;
                transition: 0.3s;
            }

            .btn-signup:hover {
                background: #ee7752;
                transform: translateY(-2px);
                box-shadow: 0 5px 15px rgba(231, 60, 126, 0.4);
            }
        </style>
    </head>
    <body>

        <div class="signup-card animate__animated animate__zoomIn">
            <div class="text-center mb-4">
                <i class="fas fa-user-plus fa-3x text-primary mb-3"></i>
                <h2 class="fw-bold">Join Us</h2>
                <p class="text-muted">Create your account to get started</p>
            </div>

            <% if(request.getAttribute("error") != null) { %>
                <div class="alert alert-danger animate__animated animate__shakeX">
                    <%= request.getAttribute("error") %>
                </div>
            <% } %>

            <form action="${pageContext.request.contextPath}/register" method="POST">
                <div class="mb-3">
                    <label class="form-label">Username</label>
                    <div class="input-group">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                        <input type="text" name="username" class="form-control" placeholder="Enter username" required>
                    </div>
                </div>

                <div class="mb-3">
                    <label class="form-label">Password</label>
                    <div class="input-group">
                        <span class="input-group-text"><i class="fas fa-lock"></i></span>
                        <input type="password" name="password" class="form-control" placeholder="Create password" required>
                    </div>
                </div>

                <button type="submit" class="btn btn-signup w-100 mt-3">
                    Register Now
                </button>

                <div class="text-center mt-4">
                    <small>Already have an account? <a href="${pageContext.request.contextPath}/login">Login</a></small>
                </div>
            </form>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
