package controller;

import model.C1;
import model.Category;
import model.Product;
import service.C1Service;
import service.CategoryService;
import service.ProductService;
import service.impl.C1ServiceImpl;
import service.impl.CategoryServiceImpl;
import service.impl.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/products")
public class ProductServlet extends HttpServlet {
    private ProductService productService = new ProductServiceImpl();
    private CategoryService categoryService = new CategoryServiceImpl();
    private C1Service c1Service = new C1ServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            default:
                showListProduct(request, response);
                break;
            case "createProduct":
                try {
                    showCreate(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "deleteProduct":
                showDelete(request, response);
                break;
            case "editProduct":
                showEdit(request, response);
                break;
        }
    }

    private void showEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/editProduct.jsp");
        request.setAttribute("aloEdit", product);
        dispatcher.forward(request, response);
    }

    private void showDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/deleteProduct.jsp");
        request.setAttribute("aloDelete", product);
        dispatcher.forward(request, response);
    }

    private void showCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("product/createProduct.jsp");
        List<Category> list1 = categoryService.findAll();
        request.setAttribute("category", list1);
        requestDispatcher.forward(request, response);

    }

    private void showListProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/list.jsp");
        List<Product> list = productService.findAll();
        List<Category> categories = findCategory(list);
        List<C1> c1 = findC1(categories);
        request.setAttribute("alo", list);
        request.setAttribute("alo1", categories);
        request.setAttribute("alo2", c1);
        dispatcher.forward(request, response);
    }

    List<Category> findCategory(List<Product> products) {
        List<Category> list = new ArrayList<>();
        for (int i = 0; i < products.size(); i++) {
            Category category = categoryService.findById(products.get(i).getCategoryId());
            list.add(category);
        }
        return list;
    }

    List<C1> findC1(List<Category> categories) {
        List<C1> list1 = new ArrayList<>();
        for (int i = 0; i < categories.size(); i++) {
            C1 c1 = c1Service.findById(categories.get(i).getId());
            list1.add(c1);
        }
        return list1;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "createProduct":
                try {
                    createProduct(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "deleteProduct":
                try {
                    deleteProduct(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "editProduct":
                try {
                    saveEdit(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
        }
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String action1 = request.getParameter("action1");
        String capacity = request.getParameter("capacity");
        String barrel = request.getParameter("barrel");
        String weight = request.getParameter("weight");
        String img = request.getParameter("img");
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        productService.add(new Product(id, name, price, description,
                action1, capacity, barrel, weight, img, categoryId, quantity));
        response.sendRedirect("/products");
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        productService.delete(id);
        response.sendRedirect("/products");
    }

    private void saveEdit(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        String name = request.getParameter("name");
        int id = Integer.parseInt(request.getParameter("id"));
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String action1 = request.getParameter("action1");
        String capacity = request.getParameter("capacity");
        String barrel = request.getParameter("barrel");
        String weight = request.getParameter("weight");
        String img = request.getParameter("img");
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Product product = new Product(id, name, price, description, action1,
                capacity, barrel, weight, img, categoryId, quantity);
        productService.update(product);
        response.sendRedirect("/products");
    }
}
