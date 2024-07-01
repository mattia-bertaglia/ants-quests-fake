package com.gol.javahome.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.gol.javahome.hibernate.services.ProdottiHibService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class AppController {

    private final ProdottiHibService prodHibSrv;

    // prodotti divisi per ambiente casa
    @GetMapping("/prodotti")
    public String prodotti(Model model) {
        model.addAttribute("listaProdotti", prodHibSrv.findAll());
        return "prodotti.html";
    }

    // redirect Utente per aggiungere prodotti/clienti+ lista clienti
    @GetMapping("/nuovo")
    public String nuovo() {
        return "nuovo.html";
    }

    @GetMapping("/")
    public String home() {
        return "index.html";
    }

    @GetMapping("/logsign")
    public String logsign() {
        return "login-signup.html";
    }

    /*
     * @GetMapping("/findAllClienti")
     * public String clienti(Model model) {
     * 
     * List<Cliente> cli = cliDao.findAll();
     * model.addAttribute("listaClienti", cli);
     * 
     * return "nuovo.html";
     * }
     */

    /*
     * @GetMapping("/new_cliente")
     * public String newCliente(Model model, @RequestParam HashMap<String, String>
     * params) {
     * // import org.springframework.ui.Model;
     * cliDao.save(
     * new Cliente(
     * 0,
     * params.get("nome"),
     * params.get("cognome"),
     * params.get("email"),
     * params.get("password"),
     * Date.valueOf(params.get("nascita"))));
     * 
     * return "redirect:/";
     * 
     * }
     */

    /* restituisce una stringa(desing pattern) cerca una pagina con quel nome */
    /* @GetMapping("/findAllProdotti") */
    /* Model di Spring */
    /*
     * public String prodotti(Model model) {
     * List<Prodotto> prods = proDao.findAll();
     * model.addAttribute("listaProdotti", prods);
     * return "prodotti.html";
     * }
     */

    /*
     * @GetMapping("/new_prodotto")
     * public String newProdotto(Model model, @RequestParam HashMap<String, String>
     * params) {
     * // import org.springframework.ui.Model;
     * proDao.save(
     * new Prodotto(
     * 0,
     * params.get("nome"),
     * params.get("tipo"),
     * Double.parseDouble(params.get("prezzo")),
     * Integer.parseInt(params.get("quantita"))));
     * 
     * return "redirect:/findAllProdotti";
     * 
     * }
     */
}
