package cn.sun.entity;

public class User {
    private int userid;
    private String username;
    private String password1;

    @Override
    public String toString() {
        return "User{" +
                "userid=" + userid +
                ", username='" + username + '\'' +
                ", password1='" + password1 + '\'' +
                '}';
    }

    public User() {
    }

    public User(int userid, String username, String password1) {
        this.userid = userid;
        this.username = username;
        this.password1 = password1;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword1() {
        return password1;
    }

    public void setPassword1(String password1) {
        this.password1 = password1;
    }
}
