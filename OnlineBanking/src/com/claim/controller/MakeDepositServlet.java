package com.claim.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.claim.model.Account;
import com.claim.model.Bank;
import com.claim.model.Customer;
import com.claim.model.Transaction;
import com.claim.model.TransferManager;

/**
 * Servlet implementation class MakeDepositServlet
 */
@WebServlet("/MakeDepositServlet")
public class MakeDepositServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MakeDepositServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		Bank bank = new Bank();
		Customer sessioncustomer = (Customer) session.getAttribute("customer");
		
		Customer customer=null;
		for (int i = 0; i < bank.getCustomers().size(); i++)
		{
			if(sessioncustomer.getPersonid()==bank.getCustomers().get(i).getPersonid()) {
				customer = bank.getCustomers().get(i);
			}
		}
		
		Account sessionaccount = (Account) session.getAttribute("bankaccount");
		Account account=null;
		for (int i = 0; i < customer.getAccounts().size(); i++)
		{
			if(sessionaccount.getAccountNumber()==customer.getAccounts().get(i).getAccountNumber()) {
				account = customer.getAccounts().get(i);
			}
		}
		
		
		long amount = Long.parseLong(request.getParameter("deposit"));
		TransferManager.Transfer(bank,bank.getCustomers().get(0), bank.getCustomers().get(0).getAccounts().get(0), customer, account, amount,"x");
		
		ArrayList<Transaction> accounttransactions=new ArrayList<Transaction>();
		for(Transaction t:bank.getTransactions()) {
			if(account.getAccountNumber()==t.getFromAccount().getAccountNumber()||account.getAccountNumber()==t.getToAccount().getAccountNumber()) {
				accounttransactions.add(t);
			}
		}
		
			bank.saveTofilePrintWriter();
			
			session.setAttribute("customer", customer);
			session.setAttribute("bankaccount", account);
			session.setAttribute("accounttransactions", accounttransactions);
			RequestDispatcher rs = request.getRequestDispatcher("account.jsp");
			rs.forward(request,  response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
