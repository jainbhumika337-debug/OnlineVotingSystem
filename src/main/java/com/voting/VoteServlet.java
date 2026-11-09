
package com.voting;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.ServletContext;

@WebServlet("/VoteServlet")
public class VoteServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        // Check whether user has already voted
        if (session.getAttribute("hasVoted") != null) {
            response.sendRedirect("alreadyVoted.jsp");
            return;
        }

        String subject = request.getParameter("subject");

        // Validate selected subject
        if (subject == null ||
            !(subject.equals("Java") ||
              subject.equals("Python") ||
              subject.equals("Computer Networks") ||
              subject.equals("Artificial Intelligence"))) {

            response.sendRedirect("vote.jsp");
            return;
        }

        ServletContext context = getServletContext();

        // Update vote count
        synchronized (context) {

            Integer count = (Integer)
                context.getAttribute(subject);

            if (count == null) {
                count = 0;
            }

            context.setAttribute(subject, count + 1);
        }

        // Mark session as voted
        session.setAttribute("hasVoted", true);

        response.sendRedirect("result.jsp");
    }
}

