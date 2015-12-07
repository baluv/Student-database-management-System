package com.balu.curd.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.balu.curd.domain.Bdsfee;
import com.balu.curd.domain.Doc;
import com.balu.curd.domain.Exam;
import com.balu.curd.domain.Registration;
import com.balu.curd.service.SDMService;

@SuppressWarnings("unused")
@Controller
public class SDMController {

	public SDMController() {

	}
	@Autowired
	private SDMService sdmService;

	@RequestMapping(value="/Registration")
	public ModelAndView saveRegistration() 
	{
		return new ModelAndView("Registration");

	}
	@RequestMapping(value="/saveRegistration")
	public ModelAndView saveRegistration(@ModelAttribute Registration regs, Map<String, Object> model,@RequestParam(value="ImageFile",required=false)MultipartFile image)throws Exception
	{
		sdmService.saveRegistration(regs);
		return new ModelAndView("store");

	}
	@RequestMapping(value="/Registration-list")
	public ModelAndView registartionListPage()
	{
		System.out.println("exe...");
		List<Registration> registrationList=sdmService.registrationList();
		System.out.println("exe...1111"+registrationList);
		return new ModelAndView("Registration_list","registrationList",registrationList);

	}

	@RequestMapping(value="/update")
	public ModelAndView updateRegistrationPage(@ModelAttribute("regs") Registration  regs)
	{
		sdmService.updateRow(regs);
		return new ModelAndView("edit");

	}
	/*@RequestMapping(value="/update")
	public ModelAndView updateRegistration(@ModelAttribute("regs") Registration regs)
	{

		System.out.println("executing update");
		sdmService.updateRow(regs);
		return new ModelAndView("store");	
	}*/

	@RequestMapping(value="/view")
	public ModelAndView editRegistration1(@RequestParam int sno,
			@ModelAttribute Registration regs) {
		Registration received =sdmService.getRowById(sno);
		return new ModelAndView("view", "received", received);
	}


	@RequestMapping(value="/BdsFee")
	public ModelAndView BdsFee()
	{
		return new ModelAndView("BdsFee");

	}

	@RequestMapping(value="/saveBdsFee")
	public ModelAndView saveBdsFeePage(@ModelAttribute("bdsfee") Bdsfee bdsfee)
	{
		sdmService.saveBdsfee(bdsfee);
		return new ModelAndView("store");

	}
	@RequestMapping(value="/BdsFee-list")
	public ModelAndView BdsFeeList()
	{
		List<Bdsfee> studentfeeList = sdmService.studentfeeList();
		return new ModelAndView("BdsFee-list","studentfeeList",studentfeeList);

	}
	/*@RequestMapping(value="/saveDoc")
	public ModelAndView BdsDoc()
	{
		return new ModelAndView("doc");

	}

	@RequestMapping(value="/Document_list")
	public ModelAndView BdsDocList()
	{
		List<Doc> documentList = sdmService.documentList();
		return new ModelAndView("Document_list","documentList",documentList);

	}*/
	@RequestMapping("/exam")
	public ModelAndView exam() {
		return new ModelAndView("exam");
	}

	@RequestMapping("/saveExam")
	public ModelAndView saveExam(Map<String, Object> model, @ModelAttribute Exam exam) {
		System.out.println(exam);
		sdmService.saveExam(exam);
		return new ModelAndView("store");
	}

	@RequestMapping("/Examdetails-list")
	public ModelAndView examdetailsList(){
		List<Exam> examdetailsList = sdmService.examdetailsList();
		return new ModelAndView("Examdetails_list","examdetailsList",examdetailsList);

	}
	@RequestMapping("/doc")
	public ModelAndView doc() {
		return new ModelAndView("doc");
	}
	@RequestMapping("/saveDoc")
	public ModelAndView saveDoc(Map<String, Object> model, @ModelAttribute Doc doc) {
		System.out.println(doc);
		sdmService.saveDoc(doc);
		return new ModelAndView("store");
	}
	@RequestMapping("/Document-list")
	public ModelAndView docmentList(){
		List<Doc> documentList = sdmService.documentList();
		return new ModelAndView("Document_list","documentList",documentList);

	}
}
