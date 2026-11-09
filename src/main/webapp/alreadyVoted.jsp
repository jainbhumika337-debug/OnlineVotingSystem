
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Already Voted | Online Voting System</title>
    <link rel="stylesheet" href="style.css">
</head>
<body class="already-voted-page">

    <nav class="premium-navbar">
        <a href="index.jsp" class="premium-logo">
            <span class="logo-box">OV</span>
            <span>ONLINE VOTING</span>
        </a>
        <div class="premium-nav-links">
            <a href="index.jsp">Home</a>
            <a href="result.jsp">Results</a>
        </div>
    </nav>

    <main class="already-page">
        <section class="already-card">
            <div class="success-icon">✓</div>
            <span class="status-label">VOTING STATUS</span>

            <h1>You've Already Voted!</h1>
            <p class="already-message">
                Your vote has already been successfully submitted.
            </p>

            <div class="thank-you-box">
                <h3>Thank You for Participating!</h3>
                <p>
                    Your participation makes this voting process meaningful.
                    We appreciate your valuable contribution.
                </p>
            </div>

            <div class="already-actions">
                <a href="result.jsp" class="result-btn">
                    View Voting Results →
                </a>
                <a href="index.jsp" class="home-btn">
                    ← Back to Home
                </a>
            </div>

            <div class="already-footer">
                ONE PERSON. ONE VOTE. YOUR VOICE MATTERS.
            </div>
        </section>
    </main>

</body>
</html>
