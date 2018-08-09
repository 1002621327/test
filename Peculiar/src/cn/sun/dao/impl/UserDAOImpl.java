package cn.sun.dao.impl;

import cn.sun.dao.UserDAO;
import cn.sun.entity.User;
import cn.sun.util.C3P0Util;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class UserDAOImpl implements UserDAO {

    private JdbcTemplate template = new JdbcTemplate(C3P0Util.getDataSource());

    @Override
    public User login(User user) {
        try {
            return template.queryForObject("select * from user WHERE username=? and password1=?",new BeanPropertyRowMapper<>(User.class),
                    user.getUsername(),user.getPassword1());
        } catch (EmptyResultDataAccessException e) {
           return null;
        }
    }

    @Override
    public Boolean update(User user) {
        int update = template.update("UPDATE user SET password1 = ? WHERE username = ?", user.getPassword1(), user.getUsername());
        return update>0?true:false;
    }
}
