package com.niit.shopingcart;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servletpage
 */
@WebServlet("/Servletpage")
public class Servletpage extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Servletpage() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		Logindeo logindeo=new Logindeo();
		RequestDispatcher dispatcher;
		if(logindeo.isValidUser(username,password)==true)
			
		{
			dispatcher=request.getRequestDispatcher("home.html");
			dispatcher.forward(request,response);
		}
		else
		{
			dispatcher=request.getRequestDispatcher("First.html");
			PrintWriter w=response.getWriter();
			w.append("please enter valid password!");
			dispatcher.include(request, response);
		
		}
		}
		
	}


