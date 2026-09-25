unit model.cidades.DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,Model.Conexao.DM;

type
  TModelCidadesDM = class(TDataModule)
    QCidadeCadastro: TFDQuery;
    QCidadeBusca: TFDQuery;
    DS_QCidadeCadastro: TDataSource;
    DS_QCidadeBusca: TDataSource;
    QCidadeCadastroID: TFDAutoIncField;
    QCidadeCadastroNOME: TStringField;
    QCidadeCadastroUF: TStringField;
    QCidadeCadastroCODIGO_IBGE: TIntegerField;
    QCidadeBuscaID: TFDAutoIncField;
    QCidadeBuscaNOME: TStringField;
    QCidadeBuscaUF: TStringField;
    QCidadeBuscaCODIGO_IBGE: TIntegerField;
  private

  public
    procedure CidadesBuscar(const ACondicao: String);
  end;

var
  ModelCidadesDM: TModelCidadesDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TModelCidadesDM.CidadesBuscar(const ACondicao: String);
begin
    QCidadeBusca.Close;
    QCidadeBusca.SQL.Clear;
    QCidadeBusca.SQL.Add('select * from cidades');
    QCidadeBusca.SQL.Add(ACondicao);
    QCidadeBusca.Open;
end;

end.
