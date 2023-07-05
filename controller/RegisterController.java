package m1.project.ch4.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import m1.project.ch4.dao.UserDao;
import m1.project.ch4.domain.User;
import m1.project.ch4.domain.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/register")
public class RegisterController {
    @Autowired
    UserDao userDao;

    final int FAIL = 0;

    @InitBinder
    public void toDate(WebDataBinder binder) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(df, false));
        binder.setValidator(new UserValidator()); // UserValidator를 WebDataBinder의 로컬 validator로 등록
    }

    @GetMapping("/add")
    public String register() {

        return "registerForm";
    }

    @PostMapping("/add")
    public String save(@Valid User user, BindingResult result, Model m) throws Exception {


        if (!result.hasErrors()) {
            // 2. DB에 신규회원 정보를 저장
            int rowCnt = userDao.insertUser(user);

            if (rowCnt!=FAIL){
                m.addAttribute("message", "회원가입이 완료되었습니다.");
                return "loginForm";

        }
    }

    return "registerForm";
}

    private boolean isValid(User user) {
        return false;
    }
}