<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cast Your Vote | Online Voting System</title>
    <link rel="stylesheet" href="style.css">
</head>
<body class="voting-page">

    <!-- NAVBAR -->
    <nav class="premium-navbar">
        <a href="index.jsp" class="premium-logo">
            <span class="logo-box">OV</span>
            <span>ONLINE VOTING</span>
        </a>

        <div class="premium-nav-links">
            <a href="index.jsp">Home</a>
            <a href="result.jsp">Results</a>
            <a href="vote.jsp" class="nav-button active">Vote Now</a>
        </div>
    </nav>

    <!-- PAGE BANNER -->
    <header class="vote-hero">
        <div class="vote-hero-content">
            <span class="vote-eyebrow">YOUR VOICE MATTERS</span>
            <h1>Make Your Choice.<br><span>Make It Count.</span></h1>
            <p>Your opinion can make a difference. Choose the subject you believe deserves your vote.</p>
            <div class="vote-trust-line">
                <span>✓ Simple process</span>
                <span>✓ One choice</span>
                <span>✓ Your voice matters</span>
            </div>
        </div>

        <div class="vote-hero-art" aria-hidden="true">
            <div class="vote-art-ring">
                <div class="vote-art-card">
                    <div class="vote-art-top">
                        <span>ONLINE ELECTION</span>
                        <i></i>
                    </div>
                    <div class="vote-art-check">✓</div>
                    <strong>YOUR VOTE</strong>
                    <small>YOUR VOICE MATTERS</small>
                    <div class="vote-art-line"></div>
                    <b>VOTE WITH CONFIDENCE</b>
                </div>
            </div>
            <div class="vote-art-float">✓ &nbsp; Your choice counts</div>
        </div>
    </header>

    <!-- VOTING FORM -->
    <main class="vote-main">
        <section class="vote-container">
            <div class="vote-section-heading">
                <span class="vote-section-label">CHOOSE ONE SUBJECT</span>
                <h2>Cast Your Vote</h2>
                <p>Select your favourite subject from the options below.</p>
            </div>

            <form action="VoteServlet" method="post" class="voting-form">
                <div class="subject-grid">

                    <label class="subject-card java-card">
                        <input type="radio" name="subject" value="Java" required>
                        <span class="subject-card-top">
                            <span class="subject-icon">01</span>
                            <span class="subject-select-mark">✓</span>
                        </span>
                        <span class="subject-symbol" aria-hidden="true">☕</span>
                        <span class="subject-name">Java</span>
                        <span class="subject-info">Object Oriented Programming</span>
                        <span class="subject-pick">Select Java</span>
                    </label>

                    <label class="subject-card python-card">
                        <input type="radio" name="subject" value="Python">
                        <span class="subject-card-top">
                            <span class="subject-icon">02</span>
                            <span class="subject-select-mark">✓</span>
                        </span>
                        <span class="subject-symbol" aria-hidden="true">🐍</span>
                        <span class="subject-name">Python</span>
                        <span class="subject-info">Simple and Powerful Language</span>
                        <span class="subject-pick">Select Python</span>
                    </label>

                    <label class="subject-card network-card">
                        <input type="radio" name="subject" value="Computer Networks">
                        <span class="subject-card-top">
                            <span class="subject-icon">03</span>
                            <span class="subject-select-mark">✓</span>
                        </span>
                        <span class="subject-symbol" aria-hidden="true">🌐</span>
                        <span class="subject-name">Computer Networks</span>
                        <span class="subject-info">Connecting the Digital World</span>
                        <span class="subject-pick">Select Networks</span>
                    </label>

                    <label class="subject-card ai-card">
                        <input type="radio" name="subject" value="Artificial Intelligence">
                        <span class="subject-card-top">
                            <span class="subject-icon">04</span>
                            <span class="subject-select-mark">✓</span>
                        </span>
                        <span class="subject-symbol" aria-hidden="true">🤖</span>
                        <span class="subject-name">Artificial Intelligence</span>
                        <span class="subject-info">Future of Smart Technology</span>
                        <span class="subject-pick">Select AI</span>
                    </label>

                </div>

                <div class="vote-form-bottom">
                    <p class="vote-selection-note">Please select one subject before submitting.</p>
                    <button type="submit" class="vote-submit">
                        Submit My Vote <span aria-hidden="true">→</span>
                    </button>
                    <a href="index.jsp" class="vote-back">← Back to Home</a>
                </div>
            </form>
        </section>
    </main>

    <!-- FOOTER -->
    <footer class="premium-footer">
        <h3>ONLINE VOTING SYSTEM</h3>
        <p>Your Vote, Your Voice, Your Choice!</p>
        <div class="footer-line"></div>
        <span>© 2026 Online Voting System. All Rights Reserved.</span>
    </footer>

</body>
</html>
