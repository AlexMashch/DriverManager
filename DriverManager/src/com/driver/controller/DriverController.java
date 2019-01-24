package com.driver.controller;

import java.awt.List;
import java.util.ArrayList;

import org.springframework.ui.Model;

import com.driver.bean.Driver;
import com.driver.dao.DriverDao;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DriverController {
@RequestMapping(value="/all")
	public String queryAll(Model model) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		DriverDao dao = (DriverDao) context.getBean("dao");
		ArrayList<Driver> driverList = new ArrayList<Driver>();
		driverList = (ArrayList<Driver>) dao.queryAll();
		model.addAttribute("drivers", driverList);
		return "index";
	}
	@RequestMapping(value="/dall")
	public String querydAll(Model model) {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		DriverDao dao=(DriverDao) context.getBean("dao");
		model.addAttribute("drivers", dao.queryAll());
		return "driver";
	}
	@RequestMapping(value="/querybyid")
	public String querybyid(String id,Model model) {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		DriverDao dao=(DriverDao) context.getBean("dao");
		model.addAttribute("drivers", dao.querybyid(id));
		return "driver";
	}
	@RequestMapping(value = "/querybyname")
	public String querybyname(String name,Model model) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		DriverDao dao = (DriverDao) context.getBean("dao");
		model.addAttribute("drivers", dao.querybyname(name));
		return "driver";
	}
	@RequestMapping(value = "/update")
	public String updateDriver(String id,String name, String mile,String city,  Model model) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		DriverDao dao = (DriverDao) context.getBean("dao");
		Driver driver = new Driver();
		driver.setId(Integer.parseInt(id));
		driver.setName(name);
		driver.setMile(Integer.parseInt(mile));
		driver.setCity(city);
		boolean result = dao.updateDriver(driver);
		if (result) {
			System.out.println("update����");
		} else {
			System.out.println("update���s");
		}
		model.addAttribute("drivers", dao.queryAll());
		return "index";
	}
	@RequestMapping(value = "/delbyid")
	public String deleteDri(String id,Model model) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		DriverDao dao = (DriverDao) context.getBean("dao");
		boolean result = dao.deleteDri(Integer.parseInt(id));
		if (result) {
			System.out.println("Delete����");
		} else {
			System.out.println("Delete���s");
		}
		model.addAttribute("drivers", dao.queryAll());
		return "index";
	}
	@RequestMapping(value = "/add")
	public String addDri(String id,String name, String mile,String city,  Model model) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		DriverDao dao = (DriverDao) context.getBean("dao");
		Driver driver = new Driver();
		driver.setId(Integer.parseInt(id));
		driver.setName(name);
		driver.setMile(Integer.parseInt(mile));
		driver.setCity(city);
		boolean result = dao.addDri(driver);
		if (result) {
			System.out.println("Add����");
		} else {
			System.out.println("Add���s");
		}
		model.addAttribute("drivers", dao.queryAll());
		return "index";
	}
}
