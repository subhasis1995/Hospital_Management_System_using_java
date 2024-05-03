package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;

@WebServlet("/doctorUpdateProfile")
public class EditProfile extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			String full_name = req.getParameter("full_name");
			String dob = req.getParameter("dob");
			String off_days = req.getParameter("off_days");
			String timing = req.getParameter("timing");
			String qualification = req.getParameter("qualification");
			String certificate_no = req.getParameter("certificate_no");
			String spec = req.getParameter("spec");
			String joining_date = req.getParameter("joining_date");
			String salary = req.getParameter("salary");
			String address = req.getParameter("address");
			String email = req.getParameter("email");
			String mobno = req.getParameter("mobno");


			int id = Integer.parseInt(req.getParameter("id"));

			Doctor d = new Doctor(id, full_name, dob, off_days, timing, qualification, certificate_no , spec, joining_date, salary , address, email, mobno, "");

			DoctorDao dao = new DoctorDao(DBConnect.getConn());
			HttpSession session = req.getSession();

			if (dao.editDoctorProfile(d)) {
				Doctor updateDoctor = dao.getDoctorById(id);
				session.setAttribute("succMsgd", "Doctor Update Sucessfully..");
				session.setAttribute("doctObj", updateDoctor);
				resp.sendRedirect("doctor/edit_profile.jsp");
			} else {
				session.setAttribute("errorMsgd", "something wrong on server");
				resp.sendRedirect("doctor/edit_profile.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}