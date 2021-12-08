package service;

import model.Product;

import java.sql.SQLException;
import java.util.List;

public interface GeneralService<T> {
    List<T> findAll();

    T findById(int id);

    void add(T t) throws SQLException;

    boolean delete(int id) throws SQLException;

    boolean update(T t) throws SQLException;
}
