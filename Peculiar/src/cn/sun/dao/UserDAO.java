package cn.sun.dao;

import cn.sun.entity.User;

public interface UserDAO {
    public User login(User user);
    public Boolean update(User user);
}
