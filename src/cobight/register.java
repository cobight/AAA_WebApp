package cobight;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//@WebServlet("/reg")
public class register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //重定向--》重新定位新的资源
        //处理注册业务
        System.out.println("register");
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        String username = req.getParameter("username");
        String sex = req.getParameter("sex");
        String age = req.getParameter("age");
        String[] hobbys = req.getParameterValues("hobby");
        String edu = req.getParameter("edu");
        PrintWriter out = resp.getWriter();
        out.println("<pre>");
        out.println("username:"+username);
        out.println("age:"+age);
        out.println("sex:"+sex);
        out.println("edu:"+edu);
        for (int i = 0; i < hobbys.length; i++) {
            out.println(hobbys[i]);
        }

        out.println("</pre>");

    }
}
