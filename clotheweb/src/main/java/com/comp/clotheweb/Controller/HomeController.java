package com.comp.clotheweb.Controller;

import com.comp.clotheweb.Models.SebetModel;
import com.dev.clothedb.Dao.Entity.TulleContrastTshirt;
import com.dev.clothedb.Main.DbTalker;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {

    DbTalker dbTalker = new DbTalker();

    @RequestMapping(method = RequestMethod.GET, value = "/clearList")
    public static String  clearList(){
        sebetModelList.clear();
        return "redirect:/sebet";
    }
    @ModelAttribute("sebetRequestModel")
    public SebetModel construct() {
        return new SebetModel();
    }

    @RequestMapping(method = RequestMethod.GET, value = "/home")
    public String index() {
        return "home";
    }

    public static List<SebetModel> sebetModelList = new ArrayList<SebetModel>();

    @RequestMapping(method = RequestMethod.GET, value = "/ts2")
    public String ts2(Model model) {

        TulleContrastTshirt tulleContrastTshirt = dbTalker.getTulleContrastTshirt();
        List<String> colorList = new ArrayList<>();
        colorList.add("Black");
        colorList.add("White");
        colorList.add("Gray");
        colorList.add("Blue");
        model.addAttribute("tulleContrastTshirt", tulleContrastTshirt);
        model.addAttribute("colorList", colorList);

        return "ts2";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/add")
    public  String add(@ModelAttribute("sebetRequestModel") SebetModel sebetModel) {


        String[] s = sebetModel.getSize().split(",", sebetModel.getSize().length());
        sebetModel.setSize(s[1]);
        String sz = sebetModel.getSize();
        sebetModel.setPrice(dbTalker.getTulleContrastTshirtBySize(sz));
        sebetModelList.add(sebetModel);
        return "redirect:/ts2";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/sebet")
    public String sebet(Model model) {

        model.addAttribute("sebetModelList",sebetModelList);

        return "sebet";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/woman")
    public String woman() {
        return "woman";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/man")
    public String man() {
        return "man";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/tshirt")
    public String tshirt() {
        return "tshirt";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/sweat")
    public String sweat() {
        return "sweat";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/sw1")
    public String sw1() {
        return "sw1";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/sw2")
    public String sw2() {
        return "sw2";
    }



    @RequestMapping(method = RequestMethod.POST, value = "/ts1")
    public String ts1() {
        return "ts1";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/trousers")
    public String trousers() {
        return "trousers";
    }




}

