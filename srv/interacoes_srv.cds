using app.interacoes from '../db/interacoes';

service CatalogoServico {

    entity Interacoes_Cabecalho as projection on interacoes.Interacoes_Cabecalho;
    entity interacoes_Itens     as projection on interacoes.Interacoes_Itens;

}
