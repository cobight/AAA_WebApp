package AAA0810.service;

import AAA0810.Entity.User;
import AAA0810.dao.UserDao;
import AAA0810.dao.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/upd")
public class updUser extends HttpServlet {
    UserDao ud= new UserDaoImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String userid=req.getParameter("userid");
        String username=req.getParameter("username");
        String userpwd=req.getParameter("userpwd");
        System.out.println("userid:"+userid+"\t\tusername:"+username+"\t\tuserpwd:"+userpwd);
        if (null!=userid&&null!=username&&null!=userpwd){
            int result=ud.update(new User(Integer.parseInt(userid),username,userpwd));
            if (result>0){
                req.setAttribute("act","upd");
                req.setAttribute("msg","yes");
            }else {
                req.setAttribute("act","upd");
                req.setAttribute("msg","no");
            }
        }
        req.getRequestDispatcher("/Users/showall.jsp").forward(req,resp);
    }
}
