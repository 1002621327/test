package cn.sun.servlet;

import cn.sun.entity.User;
import cn.sun.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 要求：上课的验证码，加上真正的实现
 * 1. 将随机生成的字符串保存在会话域中。
 * 2. 用户登录的时候，从会话域中取出字符串，并且与用户提交的表单验证码字符串进行比较。
 * 3. 如果不相等，则跳转到另一个页面，显示验证码不正确。
 */

@WebServlet("/day30login")
public class LoginServlet extends HttpServlet {

    private UserService service = new UserService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        acquire source
        response.setContentType("text/html;charset=utf-8");
        PrintWriter writer = response.getWriter();

        HttpSession session = request.getSession();
        String sb = (String) session.getAttribute("sb");
        String vcode = request.getParameter("vcode");

//        check the security code
        if (vcode.equalsIgnoreCase(sb)) {
            String name = request.getParameter("name");
            String password = request.getParameter("password");
//            check the name and password.
            User loguser = new User(0,name,password);

            User login = service.login(loguser);

            if (login!=null) {
                session.setAttribute("login",login);
                response.sendRedirect(request.getContextPath()+"/allbizi");
            }else{
                writer.print("<script>");
                writer.print("alert('用户名或密码不正确');");
                writer.print("location.href='login.html';");
                writer.print("</script>");
            }
//         if the security code incorrect.
        }else {
            System.out.println("验证码不正确");
            writer.print("<script>");
            writer.print("alert('验证码不正确');");
            writer.print("location.href='login.html';");
            writer.print("</script>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

}
