package cn.sun.servlet;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

@WebServlet("/imgCode")
public class ImgCodeServlet extends HttpServlet {
    Random ran = new Random();

    //1) 写一个方法随机获取颜色
    private Color getColor() {
        //每种颜色的取值是0-255
        int r = ran.nextInt(256);
        int g = ran.nextInt(256);
        int b = ran.nextInt(256);
        return new Color(r, g, b);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int width = 90, height = 30;
        //2) 创建缓存图片：指定宽width=90，高height=30
        BufferedImage img = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        //3) 获取画笔对象
        Graphics graphics = img.getGraphics();
        //4) 设置画笔颜色，并且填充矩形区域
        graphics.setColor(Color.WHITE);
        graphics.fillRect(0, 0, width, height);
        //5) 从字符数组中随机得到字符
        char[] arr = {'A', 'B', 'C', 'D', 'N', 'E', 'W', 'b', 'o', 'y', '1', '2', '3', '4','0','5','6','7','8','9','a','f','h','i','m','Y'};
        //将生成的字符串存到会话域中
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 4; i++) {
            int index = ran.nextInt(arr.length);  //随机得到下标
            char c = arr[index];
            sb.append(c);
            //6) 设置字体，大小为18，设置字的颜色随机
            graphics.setFont(new Font(Font.DIALOG, Font.BOLD + Font.ITALIC, 18));
            graphics.setColor(getColor());    //设置颜色
            //7) 将每个字符画到图片，位置：5+(i*20), 20
            graphics.drawString(String.valueOf(c), 5 + (i * 20), 20);
        }
        //放到会话域中
        request.getSession().setAttribute("sb", sb.toString());
        //8) 画干扰线7条线，线的位置是随机的，x范围在width之中，y的范围在height之中。
        for (int i = 0; i < 7; i++) {
            int x1 = ran.nextInt(width);
            int y1 = ran.nextInt(height);
            int x2 = ran.nextInt(width);
            int y2 = ran.nextInt(height);
            graphics.setColor(getColor());
            graphics.drawLine(x1, y1, x2, y2);
        }
        //9) 将缓存的图片输出到响应输出流中
        ImageIO.write(img, "jpg", response.getOutputStream());

    }
}
