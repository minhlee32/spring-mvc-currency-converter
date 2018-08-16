package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ConverterController {
    @GetMapping("/")
    public String converter() {
        return "converter";
    }

    @GetMapping("/convert")
    public String result(@RequestParam String currency, double amount, Model model) {
        double rate = 0;
        switch (currency) {
            case "USD":
                rate = 23313.0;
                break;
            case "Euro":
                rate = 26510.0;
                break;
            case "VND1":
                rate = 0.000043;
                break;
            case "VND2":
                rate = 0.000038;
                break;
            default:
                break;

        }

        double result = amount * rate;
        model.addAttribute("currency", currency);
        model.addAttribute("rate", rate);
        model.addAttribute("amount", amount);
        model.addAttribute("result", result);
        return "index";
    }
}
