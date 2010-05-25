package org.wiztools.fileupload;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author subwiz
 */
@MultipartConfig(location="/tmp")
@WebServlet("/process.html")
public class ServletProcessUpload extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(req.getParts() == null || req.getPart("file") == null) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
            return;
        }
        final Part part = req.getPart("file");
        File f = new File("/tmp/test.ext");
        if(f.exists()){
            f.delete();
        }
        part.write("test.ext");
        final String parameter = req.getParameter("param");

        req.setAttribute("parameter", parameter);
        req.setAttribute("file", "/tmp/test.ext");

        req.getRequestDispatcher("/WEB-INF/jsp/process.jsp").include(req, resp);
    }

}
