package cn.sun.service;

import cn.sun.dao.UserDAO;
import cn.sun.dao.impl.UserDAOImpl;
import cn.sun.entity.User;

public class UserService {

    private UserDAO dao = new UserDAOImpl() ;

    public User login(User user){
        return dao.login(user);
    }

    public boolean update(User user){
        return dao.update(user);
    }

}
