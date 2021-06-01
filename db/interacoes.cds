namespace app.interacoes;

using { Country } from '@sap/cds/common';
type BusinessKey : String(10);
type SDate : DateTime;
type LText : String(1024);

entity Interacoes_Cabecalho {
    key ID : Integer;
    itens : Composition of many Interacoes_Itens on itens.intCab = $self;
    parceiro : BusinessKey;
    data_log : SDate;
    parceiro_pais : Country;  
};

entity Interacoes_Itens {

    key intCab : Association to Interacoes_Cabecalho;
    key IDTexto : BusinessKey;
        langu : String(2);
        texto_log : LText;
};

