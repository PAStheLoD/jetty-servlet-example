import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;


public class HelloWebServlet extends HttpServlet {

	public void init () throws ServletException {
		System.out.println("TMP:" + System.getProperty("java.io.tmpdir"));
	}

	public void destroy () {
		System.out.println("Destroy");
	}

	public void doGet(HttpServletRequest req, HttpServletResponse resp) {
		try {
			resp.setContentType("text/plain");
			PrintWriter w = resp.getWriter();
			w.write("TMP:" + System.getProperty("java.io.tmpdir"));
			w.close();
		} catch (IOException eio) {
			eio.printStackTrace();
		}
	}
}
