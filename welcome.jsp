<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Welcome Home</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        
        <style>
            body {
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                color: white;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }
            .welcome-card {
                background: rgba(255, 255, 255, 0.1);
                backdrop-filter: blur(10px);
                border: 1px solid rgba(255, 255, 255, 0.2);
                border-radius: 20px;
                padding: 3rem;
                box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            }
            .btn-custom {
                background-color: #ff7eb3;
                border: none;
                color: white;
                padding: 10px 30px;
                border-radius: 50px;
                transition: 0.3s;
            }
            .btn-custom:hover {
                background-color: #ff52a2;
                transform: scale(1.05);
                color: white;
            }
        </style>
    </head>
    <body>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 text-center">
                    <div class="welcome-card animate__animated animate__fadeInUp">
                        
                        <div class="animate__animated animate__heartBeat animate__infinite animate__slow">
                            <h1 class="display-3 fw-bold">Welcome Back!, ${name}</h1>
                        </div>
                        
                        <p class="lead mt-3 animate__animated animate__fadeIn animate__delay-1s">
                            We are thrilled to see you again. Your dashboard is ready and waiting.
                        </p>
                        
                        <hr class="my-4 border-white opacity-25">
                        
                        <div class="d-grid gap-2 d-sm-flex justify-content-sm-center animate__animated animate__fadeInUp animate__delay-2s">
                            <a href="${pageContext.request.contextPath}/" class="btn btn-custom btn-lg px-4 gap-3">Go to Dashboard</a>
                            <a href="${pageContext.request.contextPath}/login" class="btn btn-outline-light btn-lg px-4">Logout</a>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
