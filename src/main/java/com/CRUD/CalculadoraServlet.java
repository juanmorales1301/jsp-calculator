package com.CRUD;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CalculadoraServlet extends HttpServlet {

    public CalculadoraServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    float resultado = Float.parseFloat(request.getParameter("resultado"));

    String pos = (String) request.getParameter("resultado");
    String operador = (String) request.getParameter("operador");
    HttpSession sesion = request.getSession(true);

    float num1=0;
    float num2=0;

    if (pos==""){
    float numero = Float.parseFloat(request.getParameter("resultado"));
    sesion.setAttribute("numero", new Float(numero));
    resultado= num1;
    }
    else {
    float numero = Float.parseFloat(request.getParameter("resultado"));
    sesion.setAttribute("numero", new Float(numero));
    resultado= num2;
    }

    if (operador == "+"){
    resultado = num1 + num2;
    }
    else if (operador == "-"){
    resultado = num1 - num2;
    }
    else if (operador == "*"){
    resultado = num1 * num2;
    }
    else if (operador == "/"){
    resultado = num1 / num2;
    }
    else if (operador == "="){
    resultado = num1;
    pos="";
    };

    //sesion.setAttribute = ("resultado", new Float (resultado));

    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
    
    if (rd != null) {rd.forward(request, response);
    }

    }
}