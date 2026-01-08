<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Welcome | My Project</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
        
        <style>
            body {
                font-family: 'Poppins', sans-serif;
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                color: white;
                margin: 0;
            }
            .welcome-card {
                background: rgba(255, 255, 255, 0.1);
                backdrop-filter: blur(10px);
                padding: 3rem;
                border-radius: 20px;
                border: 1px solid rgba(255, 255, 255, 0.2);
                box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37);
                text-align: center;
                max-width: 500px;
            }
            .btn-custom {
                background-color: #ff7e5f;
                border: none;
                color: white;
                padding: 10px 30px;
                border-radius: 50px;
                font-weight: 600;
                transition: transform 0.3s ease;
                text-decoration: none;
                display: inline-block;
                margin-top: 20px;
            }
            .btn-custom:hover {
                transform: scale(1.05);
                background-color: #feb47b;
                color: white;
            }
        </style>
    </head>
    <body>

        <div class="welcome-card">
            <h1 class="display-4 fw-bold">Hello!</h1>
            <p class="lead">Welcome to my Project.</p>
            <p>This page is being served dynamically by Talha.</p>
            
            <hr class="my-4" style="border-color: rgba(255,255,255,0.3)">
            
            <p>Ready to explore the dashboard?</p>
            
            <a href="${pageContext.request.contextPath}/register" class="btn-custom">
                Get Started
            </a>
        </div>

    </body>
</html>
