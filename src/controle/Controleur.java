package controle;

import java.io.IOException;
import java.rmi.RemoteException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.axis2.AxisFault;

import service.ServiceMonExceptionException;
import service.ServiceStub;
import service.ServiceStub.ConsulterListePays;
import service.ServiceStub.ConsulterListePaysResponse;
import service.ServiceStub.Pays;

public class Controleur extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.getWriter().append("Served at: ").append(req.getContextPath());
		appelWebservice(req, resp);
	}

	private void appelWebservice(HttpServletRequest req, HttpServletResponse resp) {
		try {
			String nextPage = "";
			ServiceStub service = new ServiceStub();
			
			String pays = req.getParameter("pays");
			if (pays != null) {
				// TODO
				// req.setAttribute("pays", );
				nextPage = "/unPays.jsp";
			} else {
				Pays[] listePays;
				ConsulterListePays clP = new ConsulterListePays();
				ConsulterListePaysResponse cLPResponse = new ConsulterListePaysResponse();
				cLPResponse = service.consulterListePays(clP);
				listePays = cLPResponse.get_return();
				req.setAttribute("listePays", listePays);
				nextPage = "/listePays.jsp";
			}

			this.getServletContext().getRequestDispatcher(nextPage).forward(req, resp);

		} catch (AxisFault e1) {
			e1.printStackTrace();
		} catch (RemoteException e2) {
			e2.printStackTrace();
		} catch (ServletException e3) {
			e3.printStackTrace();
		} catch (IOException e4) {
			e4.printStackTrace();
		} catch (ServiceMonExceptionException e5) {
			e5.printStackTrace();
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
