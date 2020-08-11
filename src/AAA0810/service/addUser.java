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

@WebServlet("/add")
public class addUser extends HttpServlet {
    UserDao ud= new UserDaoImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String name=req.getParameter("username");
        String pwd=req.getParameter("userpwd");
        System.out.println("username:"+name+"\t\t"+"userpwd:"+pwd);
        if (null!=name&&null!=pwd){
            User u = new User();
            u.setUsername(name);
            u.setUserpwd(pwd);
            int result=ud.add(u);
            if (result>0){
                req.setAttribute("act","add");
                req.setAttribute("msg","yes");
            }else {
                req.setAttribute("act","add");
                req.setAttribute("msg","no");
            }
        }
        req.getRequestDispatcher("/Users/showall.jsp").forward(req,resp);
//        resp.sendRedirect("/AAA/Users/showall.jsp");
    }
}
