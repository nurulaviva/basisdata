<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <meta name="description" content="POS - Bootstrap Admin Template">
    <meta name="keywords" content="admin, bootstrap, login, responsive">
    <meta name="author" content="Dreamguys - Bootstrap Admin Template">
    <meta name="robots" content="noindex, nofollow">
    <title>BasisData - Login</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.jpg">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <style>
        body {
            background: #037043;
            font-family: 'Poppins', sans-serif;
        }

        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-card {
            max-width: 500px;
            width: 100%;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            display: flex;
        }

        .login-left {
            flex: 1;
            background: #e3fcef;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .login-left img {
            width: 100%;
            max-width: 300px;
        }

        .login-right {
            flex: 1;
            padding: 40px;
            text-align: center;
        }

        .login-right h3 {
            margin-bottom: 10px;
            font-weight: 600
        }

        .form-control {
            border-radius: 50px;
            padding: 10px 20px;
        }

        .btn-login {
            width: 100%;
            border-radius: 50px;
            background: #28a745;
            color: white;
            padding: 10px;
            border: none;
            cursor: pointer;
        }

        .btn-login:hover {
            background: #56ee77;
            color: #e3fcef
        }
    </style>
</head>

<body>

    <div class="login-container">
        <div class="login-card">
            <div class="login-right">
                <h3>SIGN IN</h3>
                <p>Please login to your account</p>
                <form action="{{ route('loginProses') }}" method="POST">
                    @csrf
                    <div class="mb-3 text-start">
                        <label>Email</label>
                        <input type="email" name="email" class="form-control"
                            placeholder="Enter your email address">
                    </div>
                    <div class="mb-3 text-start">
                        <label>Password</label>
                        <input type="password" name="password" class="form-control" placeholder="Enter your password">
                    </div>
                    <button type="submit" class="btn btn-login">LOGIN</button>
                </form>
            </div>
        </div>
    </div>

    <script src="assets/js/jquery-3.6.0.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/script.js"></script>

</body>

</html>
