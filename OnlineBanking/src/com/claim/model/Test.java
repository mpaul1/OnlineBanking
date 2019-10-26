package com.claim.model;

import java.io.FileNotFoundException;

import com.claim.controller.*;

public class Test
{

	public static void main(String[] args) throws FileNotFoundException
	{

		// String firstName, String lastName, String telephoneNumber, String email,
		// String password, String street, String city, String state, String zipCode
		// "Michael", "Doe", "3146053303", "mpaul1@outlook.com", "password", "2003
		// Virginia Ave", "Saint Louis", "MO", "63104"
//		Bank b1 = new Bank();
//		Bank b1=runcreate();
//		System.out.println(b1);
//		SaveorLoadBank.LoadBankFromFile();

	}

	public static Bank runcreate() throws FileNotFoundException
	{
		Customer c1 = new Customer("Michael", "Doe", "3146053303", "mpaul1@outlook.com", "password",
				"2003 Virginia Ave", "Saint Louis", "MO", "63104");
		System.out.println(c1);
		Customer c2 = new Customer("John", "Doe", "3146053303", "mpaul1@outlook.com", "password", "1 Virginia Ave",
				"Saint Louis", "MO", "63104");
		System.out.println(c2);
		CheckingAccount a1 = new CheckingAccount(100);
		System.out.println(a1);
		CheckingAccount a2 = new CheckingAccount(200);
		System.out.println(a2);
		CheckingAccount a3 = new CheckingAccount(300);
		System.out.println(a3);
		c1.addAccountToAccounts(a1);
		c1.addAccountToAccounts(a2);
		System.out.println(c1);
		c2.addAccountToAccounts(a3);

		System.out.println("******");
		Bank b1 = new Bank();
		b1.AddCustomerToBank(c1);
		b1.AddCustomerToBank(c2);
		System.out.println(b1);
		b1.saveTofilePrintWriter();
		return b1;
	}
	


}