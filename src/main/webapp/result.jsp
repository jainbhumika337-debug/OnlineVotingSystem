<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.*" %>

<%
    String[] subjects = {
        "Java",
        "Python",
        "Computer Networks",
        "Artificial Intelligence"
    };

    int[] votes = new int[subjects.length];
    int totalVotes = 0;
    int maxVotes = 0;
    String winner = "No votes yet";

    for (int i = 0; i < subjects.length; i++) {
        Integer count = (Integer)application.getAttribute(subjects[i]);
        votes[i] = (count == null) ? 0 : count;
        totalVotes += votes[i];

        if (votes[i] > maxVotes) {
            maxVotes = votes[i];
            winner = subjects[i];
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voting Analytics Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>

<body class="results-page">

    <nav class="premium-navbar">
        <a href="index.jsp" class="premium-logo">
            <span class="logo-box">OV</span>
            <span>ONLINE VOTING</span>
        </a>

        <div class="premium-nav-links">
            <a href="index.jsp">Home</a>
            <a href="vote.jsp" class="nav-button">Vote Now</a>
        </div>
    </nav>

    <main class="dashboard">

        <header class="dashboard-header">
            <div>
                <span class="dashboard-tag">LIVE ANALYTICS</span>
                <h1>Voting Dashboard</h1>
                <p>Track voting performance and subject-wise results.</p>
            </div>
            <a href="index.jsp" class="dashboard-home-btn">← Home</a>
        </header>

        <section class="summary">

            <div class="summary-card">
                <div class="summary-icon">TOTAL</div>
                <h3>Total Votes</h3>
                <h1><%= totalVotes %></h1>
                <p>Total votes submitted</p>
            </div>

            <div class="summary-card">
                <div class="summary-icon">SUBJECTS</div>
                <h3>Participating Subjects</h3>
                <h1>4</h1>
                <p>Available options</p>
            </div>

            <div class="summary-card leading-card">
                <div class="summary-icon">TOP</div>
                <h3>Leading Subject</h3>
                <h2><%= winner %></h2>
                <p>Highest votes: <%= maxVotes %></p>
            </div>

        </section>

        <section class="results-card">

            <div class="results-heading">
                <div>
                    <span class="dashboard-tag">RESULT OVERVIEW</span>
                    <h2>Voting Statistics</h2>
                    <p class="subtitle">Subject-wise voting performance</p>
                </div>
                <span class="live-indicator">LIVE RESULTS</span>
            </div>

            <% for (int i = 0; i < subjects.length; i++) {
                double percentage = totalVotes == 0
                    ? 0
                    : (votes[i] * 100.0 / totalVotes);
            %>

            <div class="result-item">

                <div class="result-info">
                    <span class="subject-name"><%= subjects[i] %></span>

                    <span class="vote-count">
                        <%= votes[i] %> votes
                        (<%= String.format("%.1f", percentage) %>%)
                    </span>
                </div>

                <div class="progress">
                    <div class="progress-fill"
                         style="width: <%= percentage %>%;">
                    </div>
                </div>

            </div>

            <% } %>

            <div class="winner">
                <div class="winner-trophy">🏆</div>
                <span>TOP PERFORMING SUBJECT</span>
                <h2><%= winner %></h2>
                <p>
                    <%= maxVotes %> votes received.
                    Thank you to everyone who participated!
                </p>
            </div>

            <a href="index.jsp" class="home-link">
                Back to Home
            </a>

        </section>

    </main>

    <footer class="premium-footer">
        <h3>ONLINE VOTING SYSTEM</h3>
        <p>Your Vote, Your Voice, Your Choice!</p>
    </footer>

</body>
</html>
