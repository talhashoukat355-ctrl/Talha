<%@ page isErrorPage="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Oops! Something went wrong</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    
    <style>
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            height: 100vh;
            display: flex;
            align-items: center;
            color: white;
            overflow: hidden;
        }

        .error-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 20px;
            padding: 3rem;
            box-shadow: 0 15px 35px rgba(0,0,0,0.2);
        }

        .floating-icon {
            font-size: 8rem;
            display: inline-block;
            animation: float 4s ease-in-out infinite;
        }

        @keyframes float {
            0% { transform: translateY(0px) rotate(0deg); }
            50% { transform: translateY(-20px) rotate(5deg); }
            100% { transform: translateY(0px) rotate(0deg); }
        }

        .error-code {
            font-size: 5rem;
            font-weight: 800;
            letter-spacing: -2px;
            margin-bottom: 0;
        }

        .btn-custom {
            background: white;
            color: #764ba2;
            font-weight: 600;
            border-radius: 50px;
            padding: 10px 30px;
            transition: all 0.3s ease;
        }

        .btn-custom:hover {
            transform: scale(1.05);
            background: #f8f9fa;
            color: #667eea;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-6 text-center">
            
            <div class="floating-icon animate__animated animate__zoomIn">
                OOPS!
            </div>

            <div class="error-card animate__animated animate__fadeInUp">
                <h1 class="error-code">
                    <%= response.getStatus() != 200 ? response.getStatus() : "Error" %>
                </h1>
                <h2 class="mb-4">I Think, we have a problem.</h2>
                <p class="lead mb-5">
                    ${error}
                </p>
                
                <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                    <a href="index.jsp" class="btn btn-custom btn-lg px-4 gap-3">Take Me Home</a>
                    <button onclick="history.back()" class="btn btn-outline-light btn-lg px-4">Go Back</button>
                </div>

                <%-- Optional: Debugging info (remove for production) --%>
                <% if (exception != null) { %>
                    <div class="mt-4 p-3 text-start small border-top border-secondary">
                        <strong>Technical Details:</strong> <%= exception.getMessage() %>
                    </div>
                <% } %>
            </div>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
