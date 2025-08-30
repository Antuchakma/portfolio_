<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="p.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Antu | Portfolio</title>
    <!-- Devicon for programming icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/devicon.min.css">
    <!-- Simple icons fallback -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/simple-icons-font@v5/font/simple-icons.min.css">

    <style>
        /* Reset */
        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(120deg, #0f2027, #203a43, #2c5364);
            color: #fff;
            scroll-behavior: smooth;
        }

        a { text-decoration: none; color: inherit; }

        /* Navbar */
        .navbar {
            position: fixed; top: 0; left: 0; width: 100%;
            padding: 20px 60px;
            display: flex; justify-content: space-between; align-items: center;
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(12px);
            z-index: 1000;
        }

        .navbar .logo {
            font-size: 1.5rem; font-weight: bold; letter-spacing: 2px; color: #4facfe;
        }

        .navbar ul { display: flex; list-style: none; gap: 30px; }
        .navbar ul li a { font-weight: 600; transition: color 0.3s; }
        .navbar ul li a:hover { color: #ff6ec7; }

        /* Hero */
        .hero {
            height: 100vh; display: flex; flex-direction: column;
            justify-content: center; align-items: center; text-align: center;
            background: url('https://images.unsplash.com/photo-1503264116251-35a269479413?auto=format&fit=crop&w=1400&q=80') no-repeat center/cover;
            position: relative;
        }
        .hero::after {
            content: ""; position: absolute; top: 0; left: 0; right: 0; bottom: 0;
            background: rgba(0,0,0,0.6);
        }
        .hero h1, .hero p { position: relative; z-index: 1; }
        .hero h1 {
            font-size: 4rem; background: linear-gradient(90deg, #ff6ec7, #4facfe);
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
        }
        .hero p { font-size: 1.3rem; margin-top: 15px; }

        /* Section General */
        section { padding: 100px 60px; max-width: 1100px; margin: auto; text-align: center; }
        section h2 { font-size: 2.5rem; margin-bottom: 40px; color: #4facfe; }

        /* About */
        #about p { font-size: 1.2rem; line-height: 1.8; color: #ddd; margin-bottom: 40px; }

        .skills {
            display: flex; justify-content: center; flex-wrap: wrap;
            gap: 30px; margin-top: 20px;
        }

        .skills i {
            font-size: 3rem; transition: transform 0.3s ease;
        }

        .skills i:hover {
            transform: scale(1.2);
        }

        /* Portfolio */
        .portfolio-items {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
        }
        .portfolio-item {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 18px;
            overflow: hidden;
            transition: transform 0.4s ease, box-shadow 0.4s ease;
        }
        .portfolio-item img { width: 100%; display: block; }
        .portfolio-item:hover { transform: translateY(-10px) scale(1.03); box-shadow: 0 15px 30px rgba(0,0,0,0.4); }
        .portfolio-item h3 { margin: 15px; }

        /* Contact */
        #contact p { font-size: 1.1rem; margin: 8px 0; color: #ccc; }

        /* Footer */
        footer {
            background: rgba(0,0,0,0.6);
            padding: 30px; text-align: center;
            font-size: 0.9rem; color: #aaa;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .navbar { flex-direction: column; gap: 10px; }
            .hero h1 { font-size: 2.5rem; }
            section { padding: 80px 20px; }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navbar -->
        <div class="navbar">
            <div class="logo">Antu</div>
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#portfolio">Portfolio</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </div>

        <!-- Hero -->
        <div id="home" class="hero">
            <h1>Hello, I'm Antu</h1>
            <p>Full-Stack Developer | Designer | Creator</p>
        </div>

        <!-- About -->
      
<section id="about">
    <h2>About Me</h2>
    <p>
        I'm a creative and detail-oriented developer passionate about building interactive 
        and functional web solutions. I love turning ideas into reality with modern 
        technologies and clean design.
    </p>

    <!-- Languages -->
    <h3 style="margin-top: 40px; color: #ff6ec7;">Languages I Know</h3>
    <div class="skills">
        <i class="devicon-c-plain colored" title="C"></i>
        <i class="devicon-cplusplus-plain colored" title="C++"></i>
        <i class="devicon-java-plain colored" title="Java"></i>
        <i class="devicon-javascript-plain colored" title="JavaScript"></i>
        <i class="devicon-python-plain colored" title="Python"></i>
    </div>

    <!-- Frameworks and Tools -->
    <h3 style="margin-top: 40px; color: #4facfe;">Frameworks & Tools</h3>
    <div class="skills">
        <i class="devicon-react-original colored" title="React (MERN)"></i>
        <i class="devicon-nodejs-plain colored" title="Node.js (MERN)"></i>
        <i class="devicon-express-original colored" title="Express (MERN)"></i>
        <i class="devicon-mongodb-plain colored" title="MongoDB (MERN)"></i>
        <i class="devicon-postman-plain colored" title="Postman"></i>
        <i class="devicon-unity-original colored" title="Unity"></i>
    </div>
</section>


        <!-- Portfolio -->
        <section id="portfolio">
            <h2>My Work</h2>
            <div class="portfolio-items">
                <div class="portfolio-item">
                    <img src="https://via.placeholder.com/400x250" alt="Project 1"/>
                    <h3>Project 1</h3>
                </div>
                <div class="portfolio-item">
                    <img src="https://via.placeholder.com/400x250" alt="Project 2"/>
                    <h3>Project 2</h3>
                </div>
                <div class="portfolio-item">
                    <img src="https://via.placeholder.com/400x250" alt="Project 3"/>
                    <h3>Project 3</h3>
                </div>
            </div>
        </section>

        <!-- Contact -->
        <section id="contact">
            <h2>Contact</h2>
            <p>Email: myemail@example.com</p>
            <p>Phone: +123 456 7890</p>
        </section>

        <!-- Footer -->
        <footer>
            © 2025 Antu. Built with ❤️ in ASP.NET
        </footer>
    </form>
</body>
</html>
