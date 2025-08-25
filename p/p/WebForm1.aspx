<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="p.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Portfolio</title>
    <style>
        /* Global Styles */
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            scroll-behavior: smooth;
            background: #0f172a; /* universal background color */
            color: #e0e0e0;
            display: flex;
        }

        a {
            text-decoration: none;
        }

        /* Left Navbar */
        .navbar {
            position: fixed;
            left: 0;
            top: 0;
            width: 220px; /* slightly wider */
            height: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 30px;
            z-index: 1000;
        }

        /* Name / Logo at top */
        .navbar .logo {
            font-size: 1.8rem;
            font-weight: bold;
            color: #00e5ff;
            margin-bottom: 40px;
        }

        .navbar a {
            color: #e0e0e0;
            padding: 12px 10px; /* slightly smaller */
            text-transform: uppercase;
            font-weight: 600;
            width: 100%;
            text-align: center;
            margin: 5px 0;
            transition: color 0.3s, transform 0.3s;
            border-radius: 8px;
            font-size: 0.95rem; /* smaller font for menu */
        }

        .navbar a:hover {
            color: #00e5ff;
            transform: translateX(5px);
        }

        /* Main Content */
        .content {
            margin-left: 220px; /* match navbar width */
            width: calc(100% - 220px);
        }

        /* Hero Section */
        .hero {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #e0e0e0;
            text-align: center;
            flex-direction: column;
            animation: fadeIn 1.5s ease-in-out;
        }

        .hero h1 {
            font-size: 4rem;
            margin: 0;
            letter-spacing: 3px;
            text-shadow: 2px 2px 10px rgba(0,0,0,0.4);
        }

        .hero p {
            font-size: 1.5rem;
            margin-top: 15px;
            color: #a0c4ff;
        }

        /* Sections */
        section {
            padding: 100px 20px;
            max-width: 800px;
            margin: 0 auto;
            opacity: 0;
            transform: translateY(30px);
            animation: fadeInUp 1s forwards;
        }

        section:nth-of-type(1) { animation-delay: 0.3s; }
        section:nth-of-type(2) { animation-delay: 0.5s; }
        section:nth-of-type(3) { animation-delay: 0.7s; }

        h2 {
            text-align: center;
            margin-bottom: 50px;
            color: #ffffff;
            font-size: 2.5rem;
            position: relative;
        }

        h2::after {
            content: '';
            display: block;
            width: 70px;
            height: 4px;
            background: #00e5ff;
            margin: 10px auto 0;
            border-radius: 2px;
        }

        /* Portfolio */
        .portfolio-items {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
        }

        .portfolio-item {
            border-radius: 15px;
            overflow: hidden;
            background: rgba(255,255,255,0.05);
            backdrop-filter: blur(5px);
            box-shadow: 0 8px 30px rgba(0,0,0,0.2);
            transition: transform 0.5s, box-shadow 0.5s, background 0.5s;
        }

        .portfolio-item img {
            width: 100%;
            display: block;
            transition: transform 0.5s;
            border-bottom: 1px solid rgba(255,255,255,0.1);
        }

        .portfolio-item:hover {
            transform: translateY(-10px) scale(1.02);
            box-shadow: 0 20px 40px rgba(0,0,0,0.3);
            background: rgba(255,255,255,0.1);
        }

        .portfolio-item:hover img {
            transform: scale(1.1);
        }

        .portfolio-item h3 {
            margin: 15px;
            font-size: 1.3rem;
            color: #e0e0e0;
            text-align: center;
            transition: color 0.3s;
        }

        .portfolio-item:hover h3 {
            color: #00e5ff;
        }

        /* Contact */
        #contact p {
            font-size: 1.1rem;
            text-align: center;
            margin: 8px 0;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 50px 20px;
            background: #0f172a;
            color: #e0e0e0;
            font-size: 0.9rem;
        }

        /* Animations */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Smooth scroll for links */
        html {
            scroll-behavior: smooth;
        }

        /* Responsive adjustments */
        @media screen and (max-width: 768px) {
            .navbar {
                width: 60px;
                padding-top: 20px;
            }
            .navbar .logo {
                font-size: 1.2rem;
                margin-bottom: 20px;
            }
            .navbar a {
                padding: 10px 5px;
                font-size: 0.8rem;
            }
            .content {
                margin-left: 60px;
                width: calc(100% - 60px);
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Left Navbar -->
        <div class="navbar">
            <div class="logo">My Name</div>
            <a href="#home">Home</a>
            <a href="#about">About</a>
            <a href="#portfolio">Portfolio</a>
            <a href="#contact">Contact</a>
        </div>

        <!-- Main Content -->
        <div class="content">
            <!-- Hero Section -->
            <div id="home" class="hero">
                <h1>My Portfolio</h1>
                <p>Frontend Developer | Designer | Problem Solver</p>
            </div>

            <!-- About Section -->
            <section id="about">
                <h2>About Me</h2>
                <p>Hello! I'm a passionate developer who loves creating beautiful and functional websites. I specialize in ASP.NET, C#, and front-end development. I focus on creating clean, user-friendly, and modern interfaces that leave a lasting impression.</p>
            </section>

            <!-- Portfolio Section -->
            <section id="portfolio">
                <h2>My Work</h2>
                <div class="portfolio-items">
                    <div class="portfolio-item">
                        <img src="https://via.placeholder.com/400x300" alt="Project 1" />
                        <h3>Project 1</h3>
                    </div>
                    <div class="portfolio-item">
                        <img src="https://via.placeholder.com/400x300" alt="Project 2" />
                        <h3>Project 2</h3>
                    </div>
                    <div class="portfolio-item">
                        <img src="https://via.placeholder.com/400x300" alt="Project 3" />
                        <h3>Project 3</h3>
                    </div>
                </div>
            </section>

            <!-- Contact Section -->
            <section id="contact">
                <h2>Contact Me</h2>
                <p>Email: myemail@example.com</p>
                <p>Phone: +123 456 7890</p>
            </section>

            <!-- Footer -->
            <footer>
                &copy; 2025 My Portfolio. All rights reserved.
            </footer>
        </div>
    </form>
</body>
</html>
