package co.pr.fi.controller;

import java.io.File;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import co.pr.fi.domain.GGroupBoard;
import co.pr.fi.domain.GGroup;
import co.pr.fi.domain.GLocation;
import co.pr.fi.domain.Post;
import co.pr.fi.domain.MemberList;
import co.pr.fi.service.GroupService;

@Controller
public class GroupController {
	@Autowired
	private GroupService groupservice;

	// @Value("${savefolder}")
	// private String saveFolder;
	@GetMapping("/group_main.net")
	public ModelAndView group_main(ModelAndView mv) {
		int groupkey = 1;
		GGroup group = groupservice.groupInfo(groupkey);
		mv.setViewName("groupin_group_main");
		mv.addObject("groupkey", groupkey);
		String groupmaster = groupservice.groupmaster(groupkey);
		mv.addObject("groupmaster", groupmaster);
		mv.addObject("groupname", group.getGroupName());
		mv.addObject("groupdfile", group.getGroupDFile());
		mv.addObject("groupcfile", group.getGroupCFile());
		mv.addObject("groupinfo", group.getGroupInfo());
		GLocation location = groupservice.groupwhere(group.getWhereKey());
		mv.addObject("groupswhere", location.getSWhere());
		mv.addObject("groupdwhere", location.getDWhere());
		int age = groupservice.groupage(group.getAgeKey());
		mv.addObject("groupage", age);
		String dcategory = groupservice.groupdcategory(group.getCategoryKey());
		mv.addObject("groupdcategory", dcategory);
		String scategory = groupservice.groupscategory(group.getCategoryKey());
		mv.addObject("groupscategory", scategory);
		int groupmembers = groupservice.groupmembers(groupkey);
		mv.addObject("groupmembers", groupmembers);
		List<GGroupBoard> groupboardlist = groupservice.groupboardlist(groupkey);
		mv.addObject("groupboardlist", groupboardlist);
		List<MemberList> groupmemberlist = groupservice.groupmemberlist(groupkey);
		mv.addObject("groupmemberlist", groupmemberlist);
		List<Post> groupmeetinglist = groupservice.groupmeetinglist(groupkey);
		mv.addObject("groupmeetinglist", groupmeetinglist);
		return mv;
	}

	@ResponseBody
	@RequestMapping(value = "/group_main_ajax.net")
	public Object boardListAjax(@RequestParam(value = "postkey") int postkey,
			@RequestParam(value = "groupkey") int groupkey) throws Exception {
		List<MemberList> groupcalendarmemberlist = groupservice.calendarmemberlist(postkey, groupkey);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("groupcalendarmemberlist", groupcalendarmemberlist);
		return map;
	}

	@PostMapping("/group_mainImgUpdate.net")
	public String groupMainImg(@RequestParam(value = "groupkey") int groupKey, GGroup group, HttpServletRequest request) throws Exception {
		MultipartFile uploadfile = group.getGroupMainImgUpload();

		if (!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();// ���� ���ϸ�
			group.setGroupIdOrigin(fileName);// ���� ���ϸ� ����
			group.setGroupKey(groupKey);
			// ���ο� ���� �̸� : ���� ��+��+��
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);// ���� �⵵ ���մϴ�.
			int month = c.get(Calendar.MONTH) + 1;// ���� �� ���մϴ�.
			int date = c.get(Calendar.DATE);// ���� �� ���մϴ�.
			// String saveFolder =
			// request.getSession().getServletContext().getRealPath("resources") +
			// "/upload/";
			String saveFolder = "C:\\groupin/";
			String homedir = saveFolder + year + "-" + month + "-" + date;
			System.out.println("homedir = " + homedir);
			File path1 = new File(homedir);
			if (!(path1.exists())) {
				path1.mkdir();// ���ο� ���� ����
			}
			// ������ ���մϴ�.
			Random r = new Random();
			int random = r.nextInt(100000000);

			/*** Ȯ���� ���ϱ� ���� ****/
			int index = fileName.lastIndexOf(".");
			// ���ڿ����� Ư�� ���ڿ��� ��ġ ��(index)�� ��ȯ�Ѵ�.
			// indexOf�� ó�� �߰ߵǴ� ���ڿ��� ���� index�� ��ȯ�ϴ� �ݸ�,
			// lastIndexOf�� ���������� �߰ߵǴ� ���ڿ��� index�� ��ȯ�մϴ�.
			// (���ϸ� ���� ������ ���� ��� �� �������� �߰ߵǴ� ���ڿ��� ��ġ�� �����մϴ�.)
			System.out.println("index = " + index);
			String fileExtension = fileName.substring(index + 1);
			System.out.println("fileExtension = " + fileExtension);
			/*** Ȯ���� ���ϱ� �� ***/

			// ���ο� ���ϸ�
			String refileName = "groupMainImg" + year + month + date + random + "." + fileExtension;
			System.out.println("refileName = " + refileName);

			// ����Ŭ ��� ����� ���� ��
			String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
			System.out.println("fileDBName = " + fileDBName);

			// transferTo(File Path) : ���ε��� ������ �Ű������� ��ο� �����մϴ�.
			uploadfile.transferTo(new File(saveFolder + fileDBName));

			// �ٲ� ���ϸ����� ����
			group.setGroupDFile(fileDBName);
		}
		groupservice.groupMainImgUpdate(group);// ����޼��� ȣ��
		return "redirect:group_main.net";
	}

	@PostMapping("/group_ImgUpdate.net")
	public String groupImg(GGroup group, HttpServletRequest request) throws Exception {
		MultipartFile uploadfile = group.getGroupImgUpload();

		if (!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();// ���� ���ϸ�
			group.setGroupCOrigin(fileName);// ���� ���ϸ� ����

			// ���ο� ���� �̸� : ���� ��+��+��
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);// ���� �⵵ ���մϴ�.
			int month = c.get(Calendar.MONTH) + 1;// ���� �� ���մϴ�.
			int date = c.get(Calendar.DATE);// ���� �� ���մϴ�.
			// String saveFolder =
			// request.getSession().getServletContext().getRealPath("resources") +
			// "/upload/";
			String saveFolder = "C:\\groupin/";
			String homedir = saveFolder + year + "-" + month + "-" + date;
			System.out.println("homedir = " + homedir);
			File path1 = new File(homedir);
			if (!(path1.exists())) {
				path1.mkdir();// ���ο� ���� ����
			}
			// ������ ���մϴ�.
			Random r = new Random();
			int random = r.nextInt(100000000);

			/*** Ȯ���� ���ϱ� ���� ****/
			int index = fileName.lastIndexOf(".");
			// ���ڿ����� Ư�� ���ڿ��� ��ġ ��(index)�� ��ȯ�Ѵ�.
			// indexOf�� ó�� �߰ߵǴ� ���ڿ��� ���� index�� ��ȯ�ϴ� �ݸ�,
			// lastIndexOf�� ���������� �߰ߵǴ� ���ڿ��� index�� ��ȯ�մϴ�.
			// (���ϸ� ���� ������ ���� ��� �� �������� �߰ߵǴ� ���ڿ��� ��ġ�� �����մϴ�.)
			System.out.println("index = " + index);
			String fileExtension = fileName.substring(index + 1);
			System.out.println("fileExtension = " + fileExtension);
			/*** Ȯ���� ���ϱ� �� ***/

			// ���ο� ���ϸ�
			String refileName = "groupImg" + year + month + date + random + "." + fileExtension;
			System.out.println("refileName = " + refileName);

			// ����Ŭ ��� ����� ���� ��
			String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
			System.out.println("fileDBName = " + fileDBName);

			// transferTo(File Path) : ���ε��� ������ �Ű������� ��ο� �����մϴ�.
			uploadfile.transferTo(new File(saveFolder + fileDBName));

			// �ٲ� ���ϸ����� ����
			group.setGroupCFile(fileDBName);
		}
		groupservice.groupImgUpdate(group);// ����޼��� ȣ��
		return "redirect:group_main.net";
	}

	@RequestMapping(value = "/group_sheduleList.net", method = RequestMethod.GET)
	public String group_sheduleList() {
		return "member/groupin_group_admin_scheduleList";
	}

	@RequestMapping(value = "/group_freeBoard.net", method = RequestMethod.GET)
	public String group_freeBoard() {
		return "member/groupin_group_freeBoard";
	}

	@RequestMapping(value = "/group_reviewBoard.net", method = RequestMethod.GET)
	public String group_reviewBoard() {
		return "member/groupin_group_reviewBoard";
	}

	@RequestMapping(value = "/group_admin.net", method = RequestMethod.GET)
	public String group_admin() {
		return "member/groupin_group_admin";
	}

	@RequestMapping(value = "/group_admin_addSchedule.net", method = RequestMethod.GET)
	public String group_admin_addSchedule() {
		return "member/groupin_group_admin_addSchedule";
	}

	@RequestMapping(value = "/group_admin_modifySchedule.net", method = RequestMethod.GET)
	public String group_admin_modifySchedule() {
		return "member/groupin_group_admin_modifySchedule";
	}

	@RequestMapping(value = "/group_admin_members.net", method = RequestMethod.GET)
	public String group_admin_members() {
		return "member/groupin_group_admin_members";
	}

	@RequestMapping(value = "/group_admin_board.net", method = RequestMethod.GET)
	public String group_admin_board() {
		return "member/groupin_group_admin_board";
	}

	@RequestMapping(value = "/group_boardWrite.net", method = RequestMethod.GET)
	public String group_boardWrite() {
		return "member/groupin_group_boardWrite";
	}

}
