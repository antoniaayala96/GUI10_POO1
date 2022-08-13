package org.apache.jsp.MantenimientoAutores;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Insertar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" >\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"UTF-8\">\n");
      out.write("  <title>Ingresar_datos</title>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  <link rel='stylesheet prefetch' href='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'>\n");
      out.write("\n");
      out.write("      <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("\n");
      out.write("  \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("  <link href='https://fonts.googleapis.com/css?family=Ubuntu:500' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("<div class=\"login\">\n");
      out.write("  <div class=\"login-header\">\n");
      out.write("    <h1>Ingresar datos de Autor</h1>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"login-form\">\n");
      out.write("    <form method=\"POST\" action=\"InsertAutor.jsp\">\n");
      out.write("            <h3>Nombre: </h3>\n");
      out.write("            <input type=\"text\" name=\"Nombre\" placeholder=\"Nombre Autor\" required=\"\"><br>\n");
      out.write("            <h3>Apellido:</h3>\n");
      out.write("            <input type=\"text\" name=\"Apellido\" placeholder=\"Apellido Autor\" required=\"\"><br>\n");
      out.write("            <h3>Ciudad de Nacimiento:</h3>\n");
      out.write("            <input type=\"text\" name=\"CN\" placeholder=\"Ciudad Nacimiento\" required=\"\"><br>\n");
      out.write("            <h3>Pais de Nacimiento:</h3>\n");
      out.write("            <input type=\"text\" name=\"PA\" placeholder=\"Pais Autor\" required=\"\">\n");
      out.write("            <br>\n");
      out.write("            <input type=\"submit\" value=\"Enviar\" name=\"enviar\" class=\"login-button\"/>\n");
      out.write("    <br>\n");
      out.write("      </form>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>\n");
      out.write("<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>\n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("    <script  src=\"js/index.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
