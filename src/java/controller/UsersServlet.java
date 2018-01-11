package controller;

import dao.UsersDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Users;
import tools.MD5;
import tools.SendMail;

public class UsersServlet extends HttpServlet {

    UsersDAO usersDAO = new UsersDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String command = request.getParameter("command");
        String url = "";
        Users users = new Users();
        HttpSession session = request.getSession();
        switch (command) {
            case "insert":
                users.setUserID(new java.util.Date().getTime());
                users.setUserEmail(request.getParameter("email"));
                users.setUserPass(MD5.encryption(request.getParameter("pass")));
                users.setUserRole(false);
                usersDAO.insertUser(users);
                session.setAttribute("user", users);
                SendMail sm = new SendMail();
                sm.sendMail(users.getUserEmail(), "Shop Gaming Gear", "Hello, " + users.getUserEmail() + "\n Register successfully");
                url = "/index.jsp";
                break;
            case "login":
                users = usersDAO.login(request.getParameter("email"), MD5.encryption(request.getParameter("pass")));
                if (users != null) {
                    session.setAttribute("user", users);
                    url = "/index.jsp";
                } else {
                    request.setAttribute("error", "Error email or password!");
                    url = "/login.jsp";
                }
                break;
            case "logout": {
                session.removeAttribute("user");
                url = "/index.jsp";
            }
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);

    }

}
