package AAA0810.service;

import AAA0810.dao.UserDao;
import AAA0810.dao.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/del")
public class delUser extends HttpServlet {
    UserDao  ud= new UserDaoImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userid=req.getParameter("userid");
        System.out.println("userid:"+userid);
        if (null!=userid){
            int result=ud.dedl(Integer.parseInt(userid));
            if (result>0){
                req.setAttribute("act","del");
                req.setAttribute("msg","yes");
            }else {
                req.setAttribute("act","del");
                req.setAttribute("msg","no");
            }
        }
        req.getRequestDispatcher("/Users/showall.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
