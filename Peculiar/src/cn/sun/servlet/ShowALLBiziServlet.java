package cn.sun.servlet;

import cn.sun.entity.Bizi;
import cn.sun.service.BiziService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/allbizi")
public class ShowALLBiziServlet extends HttpServlet {

    private BiziService service = new BiziService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Bizi> allBizi = service.findAllBizi();
        request.setAttribute("bizis",allBizi);
        request.getRequestDispatcher("/Community.jsp").forward(request,response);
    }
}
