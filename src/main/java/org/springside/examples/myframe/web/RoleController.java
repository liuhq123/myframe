package org.springside.examples.myframe.web;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.validation.Valid;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springside.examples.myframe.entity.Role;
import org.springside.examples.myframe.entity.User;
import org.springside.examples.myframe.service.AccountService;
import org.springside.modules.web.Servlets;

import com.google.common.collect.Maps;

/**
 * RoleController
 * 
 * @author liuhq
 * @since 2016年5月14日 下午12:03:52
 * @version 1.0
 */
@Controller
@RequestMapping(value = "/account/role")
public class RoleController {

	private static Map<String, String> allStatus = Maps.newHashMap();

	static {
		allStatus.put("enabled", "有效");
		allStatus.put("disabled", "无效");
	}

	@Autowired
	private AccountService accountService;

	// 特别设定多个ReuireRoles之间为Or关系，而不是默认的And.
	@RequiresRoles(value = { "Admin", "Role" }, logical = Logical.OR)
	@RequestMapping(value = "")
	public String list(Model model, ServletRequest request) {

		Map<String, Object> searchParams = Servlets.getParametersStartingWith(
				request, "search_");

		List<Role> roles = accountService.searchRole(searchParams);
		model.addAttribute("roles", roles);
		model.addAttribute("allStatus", allStatus);
		return "account/roleList";
	}

	@RequiresRoles("Admin")
	@RequestMapping(value = "update/{id}", method = RequestMethod.GET)
	public String updateForm(@PathVariable("id") Long id, Model model) {
		model.addAttribute("role", accountService.getRole(id));
		return "account/roleForm";
	}

	/**
	 * 演示自行绑定表单中的checkBox roleList到对象中.
	 */
	@RequiresPermissions("user:edit")
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@Valid @ModelAttribute("role") Role role,
			RedirectAttributes redirectAttributes) {

		accountService.saveRole(role);

		redirectAttributes.addFlashAttribute("message", "保存角色成功");
		return "redirect:/account/role";
	}

	@RequestMapping(value = "checkName")
	@ResponseBody
	public String checkName(@RequestParam("oldName") String oldName,
			@RequestParam("name") String name) {
		if (name.equals(oldName)) {
			return "true";
		} else if (accountService.findUserByName(name) == null) {
			return "true";
		}

		return "false";
	}

	/**
	 * 所有RequestMapping方法调用前的Model准备方法, 实现Struts2
	 * Preparable二次部分绑定的效果,先根据form的id从数据库查出User对象,再把Form提交的内容绑定到该对象上。
	 * 因为仅update()方法的form中有id属性，因此仅在update时实际执行.
	 */
	@ModelAttribute
	public void getUser(
			@RequestParam(value = "id", defaultValue = "-1") Long id,
			Model model) {
		if (id != -1) {
			model.addAttribute("user", accountService.getUser(id));
		}
	}

	/**
	 * 不自动绑定对象中的roleList属性，另行处理。
	 */
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.setDisallowedFields("roleList");
	}
}
