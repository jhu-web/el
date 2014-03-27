package coreservlets;

import java.util.*;
import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/collections")
public class Collections extends HttpServlet {
  private static final long serialVersionUID = 4274488451682319462L;

  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
      throws ServletException, IOException {
    String[] firstNames = { "Bill", "Scott", "Larry" };
    List<String> lastNames = new ArrayList<String>();
    lastNames.add("Ellison");
    lastNames.add("Gates");
    lastNames.add("McNealy");
    Map<String,String> companyNames = 
      new HashMap<String,String>();
    companyNames.put("Ellison", "Sun");
    companyNames.put("Gates", "Oracle");
    companyNames.put("McNealy", "Microsoft");
    request.setAttribute("first", firstNames); 
    request.setAttribute("last", lastNames);
    request.setAttribute("company", companyNames);
    RequestDispatcher dispatcher =
      request.getRequestDispatcher("/WEB-INF/results/collections.jsp");
    dispatcher.forward(request, response);
  }
}
