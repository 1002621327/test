package cn.sun.entity;

import java.util.Date;

public class Bizi {
    private String id;
    private Date time;
    private String title;
    private String body;
    private String style;
    private int userid;

    @Override
    public String toString() {
        return "Bizi{" +
                "id='" + id + '\'' +
                ", time=" + time +
                ", title='" + title + '\'' +
                ", body='" + body + '\'' +
                ", style='" + style + '\'' +
                ", userid=" + userid +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }


}
