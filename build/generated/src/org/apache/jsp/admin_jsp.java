package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css\">\n");
      out.write("    <script defer src=\"https://use.fontawesome.com/releases/v5.3.1/js/all.js\"></script>\n");
      out.write("    <script src=\"https://kit.fontawesome.com/773695578b.js\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.2/css/all.css\" integrity=\"sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    <title>Home</title>\n");
      out.write("\n");
      out.write("    <style>\n");
      out.write("        .center , .center-column, .top, .right, .bottom, .left{\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .center-column{\n");
      out.write("            flex-direction: column;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .top{\n");
      out.write("            align-items: flex-start;\n");
      out.write("        }\n");
      out.write("        .right{\n");
      out.write("            justify-content: flex-end;\n");
      out.write("        }\n");
      out.write("        .bottom{\n");
      out.write("            align-items: flex-end;\n");
      out.write("        }\n");
      out.write("        .left{\n");
      out.write("            justify-content: flex-start;\n");
      out.write("        }\n");
      out.write("        .single-spaced, .single-spaced *{\n");
      out.write("            line-height: 1;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <section class=\"hero is-fullheight\">\n");
      out.write("        <div class=\"hero-head is-black\">\n");
      out.write("            <div class=\"columns is-mobile is-marginless heading has-text-weight-bold\">\n");
      out.write("                <div class=\"column left\">\n");
      out.write("                    <p class=\"navbar-item\">Bouquini</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"column center\">\n");
      out.write("                    <p class=\"navbar-item\"><a href=\"AdminUsers.jsp\">Users</a></p>\n");
      out.write("                    <p class=\"navbar-item\">Books</p>\n");
      out.write("                    <p class=\"navbar-item\">Writers</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"column right\">\n");
      out.write("                    <p class=\"navbar-item\">Disconnect</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"hero-body\">\n");
      out.write("            <div class=\"is-overlay\">\n");
      out.write("                <h1 class=\"title is-4 has-text-centered\" style=\"margin-top :60px;\">Home</h1>\n");
      out.write("                <h2 class=\"subtitle is-6 has-text-centered\">As an admin, you can manage the whole system</h2>\n");
      out.write("            </div>\n");
      out.write("            <form method=\"Get\" action=\"Admin\">\n");
      out.write("                \n");
      out.write("            <div class=\"columns\">\n");
      out.write("                <div class=\"column has-text-centered\">\n");
      out.write("                    <div class=\"box\">\n");
      out.write("                        <span class=\"icon\">\n");
      out.write("                            <i class=\"fas fa-users fa-2x\">\n");
      out.write("                            </i>\n");
      out.write("                        </span>\n");
      out.write("                        <h1 class=\"title is-4\"> Users</h1>\n");
      out.write("                        <p>\n");
      out.write("                            Here, u can access to the users of the system, you will be able to consult their informations, maybe modify some and delete some.\n");
      out.write("                        </p>\n");
      out.write("                        <br>\n");
      out.write("                        <input name=\"users\" class=\"button\" value=\"Move on\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"column has-text-centered\">\n");
      out.write("                    <div class=\"box\">\n");
      out.write("                        <span class=\"icon\">\n");
      out.write("                            <i class=\"fas fa-book fa-2x\"></i>\n");
      out.write("                        \n");
      out.write("                        </span>\n");
      out.write("                        <h1 class=\"title is-4\"> Books</h1>\n");
      out.write("                        <p>\n");
      out.write("                            Here, u can access to the books of the system, you will be able to consult their informations, add, delete and modify.\n");
      out.write("                        </p>\n");
      out.write("                        <br>\n");
      out.write("                        <input name=\"books\" value=\"Move on\" class=\"button\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"column has-text-centered\">\n");
      out.write("                    <div class=\"box\">\n");
      out.write("                        <span class=\"icon\">\n");
      out.write("                            <i class=\"fas fa-feather-alt fa-2x\"></i>                        \n");
      out.write("                        </span>\n");
      out.write("                        <h1 class=\"title is-4\"> Writers</h1>\n");
      out.write("                        <p>\n");
      out.write("                            Here, you can access to the writers and manage them\n");
      out.write("                        </p>\n");
      out.write("                        <br>\n");
      out.write("                        <input name=\"writers\" value=\"Move on\" class=\"button\">\n");
      out.write("                    </div>        \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("                \n");
      out.write("            </form>s\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("</body>\n");
      out.write("</html>");
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
