    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Welcome Login | Login</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

        <style>
            body {
                /* Matching the gradient from the error page for brand consistency */
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                margin: 0;
                font-family: 'Inter', sans-serif;
            }

            .login-card {
                background: rgba(255, 255, 255, 0.95);
                border: none;
                border-radius: 20px;
                box-shadow: 0 15px 35px rgba(0,0,0,0.2);
                padding: 40px;
                width: 100%;
                max-width: 400px;
                transition: transform 0.3s ease;
            }

            /* Subtle hover effect for the whole card */
            .login-card:hover {
                transform: translateY(-5px);
            }

            .brand-icon {
                font-size: 3rem;
                color: #764ba2;
                margin-bottom: 1rem;
                display: inline-block;
            }

            .form-control {
                border-radius: 10px;
                padding: 12px;
                border: 1px solid #ddd;
                transition: all 0.3s;
            }

            .form-control:focus {
                box-shadow: 0 0 0 0.25rem rgba(118, 75, 162, 0.25);
                border-color: #764ba2;
            }

            .btn-login {
                background: linear-gradient(to right, #667eea, #764ba2);
                border: none;
                border-radius: 10px;
                padding: 12px;
                font-weight: 600;
                color: white;
                margin-top: 10px;
                transition: opacity 0.3s;
            }

            .btn-login:hover {
                opacity: 0.9;
                color: white;
            }

            .forgot-password {
                font-size: 0.85rem;
                text-decoration: none;
                color: #764ba2;
            }
        </style>
    </head>
    <body>

    <div class="container d-flex justify-content-center">
        <div class="login-card animate__animated animate__zoomIn">

            <div class="text-center">
                <div class="brand-icon">
                    <i class="bi bi-person-circle"></i> 👤
                </div>
                <h2 class="fw-bold mb-2">Welcome Login</h2>
                <p class="text-muted mb-4">Please enter your details</p>
            </div>

            <form action="${pageContext.request.contextPath}/login" method="post">
                <div class="mb-3">
                    <label class="form-label small fw-bold">Username</label>
                    <input type="text" name="username" class="form-control" placeholder="Enter username" required>
                </div>

                <div class="mb-3">
                    <div class="d-flex justify-content-between">
                        <label class="form-label small fw-bold">Password</label>
                        <a href="#" class="forgot-password">Forgot?</a>
                    </div>
                    <input type="password" name="password" class="form-control" placeholder="••••••••" required>
                </div>



                <button type="submit" class="btn btn-login w-100 mb-3">Login</button>

                <div class="text-center">
                    <p class="small text-muted">Don't have an account? <a href="${pageContext.request.contextPath}/register" class="text-decoration-none fw-bold" style="color: #764ba2;">Register</a></p>
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
    </html>
