package cn.sun.dao.impl;

import cn.sun.dao.BiziDAO;
import cn.sun.util.C3P0Util;
import cn.sun.entity.Bizi;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.ArrayList;
import java.util.List;


public class BiziDAOImpl implements BiziDAO {

    private JdbcTemplate template = new JdbcTemplate(C3P0Util.getDataSource());

//    添加壁纸
    public boolean doCreate(Bizi bizi){
        String sql = "INSERT INTO bizi(id,time,title,body,style,userid) VALUES (?,?,?,?,?,?)";
        int update = template.update(sql, bizi.getId(), bizi.getTime(), bizi.getTitle(), bizi.getBody(), bizi.getStyle(), bizi.getUserid());
        return update>0?true:false;
    }

//    根据
    public List<Bizi> findAll(){
//        String sql = "SELECT id,time,title,body,style,userid FROM bizi WHERE id LIKE ? OR time LIKE ?";
        String sql = "SELECT * from bizi";
        return template.query(sql, new BeanPropertyRowMapper<>(Bizi.class));
    }

    //    根据ID查找壁纸
    public Bizi findById(int id){
        Bizi bizi = null;
        String sql = "SELECT id,time,title,body,style,userid FROM bizi WHERE id=?";
        bizi = template.queryForObject(sql, new BeanPropertyRowMapper<>(Bizi.class), id);
        return bizi;
    }
}
