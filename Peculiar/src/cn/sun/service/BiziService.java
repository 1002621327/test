package cn.sun.service;

import cn.sun.dao.BiziDAO;
import cn.sun.dao.impl.BiziDAOImpl;
import cn.sun.entity.Bizi;

import java.util.List;

public class BiziService {
    private BiziDAO dao = new BiziDAOImpl();

    public List<Bizi> findAllBizi(){
        dao.findAll().forEach(System.out::println);
        return dao.findAll();
    }
}
