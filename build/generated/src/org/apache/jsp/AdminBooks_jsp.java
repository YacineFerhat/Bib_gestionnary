package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class AdminBooks_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css\">\n");
      out.write("    <script defer src=\"https://use.fontawesome.com/releases/v5.3.1/js/all.js\"></script>\n");
      out.write("    <script src=\"https://kit.fontawesome.com/773695578b.js\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.2/css/all.css\" integrity=\"sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay\" crossorigin=\"anonymous\">\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("    <title>Manage the books</title>\n");
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
      out.write("\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <section class=\"hero is-fullheight\">\n");
      out.write("        <div class=\"hero-head has-text-white\">\n");
      out.write("            <div class=\"columns is-mobile is-marginless heading has-text-weight-bold\">\n");
      out.write("                <div class=\"column left\">\n");
      out.write("                    <p class=\"navbar-item\">Bouquini</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"column center\">\n");
      out.write("                    <p class=\"navbar-item\">Users</p>\n");
      out.write("                    <p class=\"navbar-item\">Books</p>\n");
      out.write("                    <p class=\"navbar-item\">Writers</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"column right\">\n");
      out.write("                    <p class=\"navbar-item\">Disconnect</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"hero-body\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"columns is-centered\">\n");
      out.write("                    <div class=\"column has-text-centered\">\n");
      out.write("                        <div class=\"box\">\n");
      out.write("                            <form action=\"user\" method=\"POST\">\n");
      out.write("                                    <div class=\"field has-addons\">\n");
      out.write("                                        <p class=\"control\">\n");
      out.write("                                            <span class=\"select\">\n");
      out.write("                                            <select>\n");
      out.write("                                                <option>Code</option>\n");
      out.write("                                                <option>Name</option>\n");
      out.write("                                                <option>Domain</option>\n");
      out.write("                                                \n");
      out.write("                                            </select>\n");
      out.write("                                            </span>\n");
      out.write("                                        </p>\n");
      out.write("                                        <p class=\"control is-expanded\">\n");
      out.write("                                            <input class=\"input\" type=\"text\" placeholder=\"Type!\">\n");
      out.write("                                        </p>\n");
      out.write("                                        <p class=\"control\">\n");
      out.write("                                            <input class=\"button\" value=\"Search\">\n");
      out.write("                                        </p>\n");
      out.write("                                        <p class=\"control\">\n");
      out.write("                                            <input class=\"button is-danger\" id=\"OpenModal\" value=\"add a book\">\n");
      out.write("                                        </p>\n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                    </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <!-->  Modals  <!-->\n");
      out.write("                \n");
      out.write("                <div class=\"modal\" id=\"ModalToOpen\">\n");
      out.write("                    <div class=\"modal-background\"></div>\n");
      out.write("                        <div class=\"modal-card\">\n");
      out.write("                            <header class=\"modal-card-head\">\n");
      out.write("                                <p class=\"modal-card-title\">Modal title</p>\n");
      out.write("                                <button id=\"ModalToClose\" sclass=\"delete\" aria-label=\"close\"></button>\n");
      out.write("                            </header>\n");
      out.write("                            <section class=\"modal-card-body\">\n");
      out.write("                              <!-- Content ... -->\n");
      out.write("                            </section>\n");
      out.write("                            <footer class=\"modal-card-foot\">\n");
      out.write("                              <button class=\"button is-success\">Save changes</button>\n");
      out.write("                              <button class=\"button\">Cancel</button>\n");
      out.write("                            </footer>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"columns is-centered\">\n");
      out.write("                    <div class=\"column\">\n");
      out.write("                        \n");
      out.write("                        <table class=\"table is-fullwidth is-bordered is-striped is-hoverable\">\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th><abbr title=\"Code\">Code</abbr></th>  \n");
      out.write("                                    <th><abbr title=\"Name\">Name</abbr></th>\n");
      out.write("                                    <th><abbr title=\"Domain\">Domain</abbr></th>\n");
      out.write("                                    <th><abbr title=\"Nbr pages\">Nb pages</abbr></th>\n");
      out.write("                                    <th><abbr title=\"Resume\">Resume</abbr></th>\n");
      out.write("                                    <th><abbr title=\"Action\">Actions</abbr></th>\n");
      out.write("\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tfoot>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th><abbr title=\"Code\">Code</abbr></th>  \n");
      out.write("                                    <th><abbr title=\"Name\">Name</abbr></th>\n");
      out.write("                                    <th><abbr title=\"Domain\">Domain</abbr></th>\n");
      out.write("                                    <th><abbr title=\"Nbr pages\">Nb pages</abbr></th>\n");
      out.write("                                    <th><abbr title=\"Resume\">Resume</abbr></th>\n");
      out.write("                                    <th><abbr title=\"Action\">Actions</abbr></th>\n");
      out.write("                                </tr>\n");
      out.write("                            </tfoot>\n");
      out.write("                            <tbody>\n");
      out.write("                                ");

                                try{
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Cawa","root","");
                                    String Query = "Select ISSN,Titre,Resume,NbPage,Domaine from livre";
                                    Statement stm=conn.createStatement();
                                    ResultSet rs = stm.executeQuery(Query);
                                    while(rs.next()){
                                  
      out.write("<tr>\n");
      out.write("                                        <td>");
      out.print(rs.getInt("ISSN"));
      out.write("</td>  \n");
      out.write("                                        <td>");
      out.print(rs.getString("Titre"));
      out.write("</td>\n");
      out.write("                                        <td>");
      out.print(rs.getString("Domaine"));
      out.write("</td>\n");
      out.write("                                        <td>");
      out.print(rs.getInt("NbPage"));
      out.write("</td>\n");
      out.write("                                        <td>");
      out.print(rs.getString("Resume"));
      out.write("</td>\n");
      out.write("                                        <td class=\"has-text-centered\">\n");
      out.write("                                            <div class=\"buttons are-small\">\n");
      out.write("                                                <a class=\"button is-danger\">delete</a>\n");
      out.write("                                                <a class=\"button is-warning\">modify</a>\n");
      out.write("                                                <a class=\"button is-info\">consult</a>\n");
      out.write("                                            </div>\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                  ");

                                    }
                                }
                                catch(Exception ex){
                                    out.println("erreur");
                                }

                                  
      out.write("\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("\n");
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
