package net.eldiosantos.viajabessa.controller;

import br.com.caelum.vraptor.*;
import br.com.caelum.vraptor.view.Results;
import net.eldiosantos.viajabessa.model.PacoteViagem;
import net.eldiosantos.viajabessa.repository.PacoteViagemRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.inject.Inject;
import java.util.List;

/**
 * Created by Eldius on 10/02/2015.
 */
@Controller
@Path("/package")
public class ViagemController {

    private final Logger logger = LoggerFactory.getLogger(getClass());

    @Inject
    private PacoteViagemRepository pacoteViagemRepository;

    @Inject
    private Result result;

    @Path("/")
    public List<PacoteViagem>index() {
        return pacoteViagemRepository.listAll();
    }

    @Path("/edit")
    public void form() {

    }

    @Path("/edit/{id}")
    public PacoteViagem form(final Long id) {
        return pacoteViagemRepository.getByPk(id);
    }

    @Post("salvar")
    public void salvar(PacoteViagem pacote) {
        if(pacote.getId()==null) {
            pacoteViagemRepository.persist(pacote);
        } else {
            pacoteViagemRepository.update(pacote);
        }
        result.redirectTo(this).index();
    }

    @Get("/json")
    public void list() {
        List<PacoteViagem> lista = pacoteViagemRepository.listAll();
        logger.debug("lista:\n" + lista);
        result.use(Results.json()).from(lista).serialize();
    }



    @Get("/json/{id}")
    public void get(final Long id) {
        PacoteViagem pacote = pacoteViagemRepository.getByPk(id);
        logger.debug("pacote:\n" + pacote);
        result.use(Results.json()).from(pacote).serialize();
    }


    @Get("/json/{id}/buy")
    public void buy(final Long id) {
        result.use(Results.json()).from("compra efetuada com sucesso").serialize();
    }
}
