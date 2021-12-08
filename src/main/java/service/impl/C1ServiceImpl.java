package service.impl;

import model.C1;
import model.Category;
import service.C1Service;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class C1ServiceImpl implements C1Service {

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/quanlybansung1?useSSL=false", "root", "123456");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public List<C1> findAll() {
        List<C1> list = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement
                     ("select  * from c1")) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int category = rs.getInt("categoryId");
                list.add(new C1(id, name, category));
            }
        } catch (SQLException e) {
            System.out.println("");
        }
        return list;
    }

    @Override
    public C1 findById(int id) {
        C1 c1 = new C1();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement
                     ("select * from c1 where id =?")) {
            System.out.println(preparedStatement);
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                int category = rs.getInt("categoryId");
                c1 = new C1(id, name, category);
            }
        } catch (SQLException ignored) {
        }
        return c1;
    }


    @Override
    public void add(C1 c1) throws SQLException {

    }

    @Override
    public boolean delete(int id) throws SQLException {
        return false;
    }

    @Override
    public boolean update(C1 c1) throws SQLException {
        return false;
    }
}
