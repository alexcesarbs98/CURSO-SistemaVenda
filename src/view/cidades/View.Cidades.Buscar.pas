unit View.Cidades.Buscar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Herencas.Buscar, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, model.cidades.DM, Vcl.Menus;

type
  TViewCidadesBuscar = class(TViewHerencasBuscar)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
protected
    procedure BuscarDados;  override;
  public
    { Public declarations }
  end;

var
  ViewCidadesBuscar: TViewCidadesBuscar;

implementation

{$R *.dfm}


procedure TViewCidadesBuscar.BuscarDados;
var
  LStrBuscar: string;
  LCondicao: string;
begin
  LStrBuscar := QuotedStr('%'+ edtBuscar.Text +'%').ToUpper;
  LCondicao := '';
  case rdGroupFiltros.ItemIndex of
    0: LCondicao := 'where(id like ' + LStrBuscar + ')';
    1: LCondicao := 'where(upper (nome) like ' + LStrBuscar + ')';
    2: LCondicao := 'where(upper (uf) like ' + LStrBuscar + ')';
  end;

ModelCidadesDM.cidadesBuscar(LCondicao);

end;

procedure TViewCidadesBuscar.FormCreate(Sender: TObject);
begin
  inherited;
  if (ModelCidadesDM = nil) then
    ModelCidadesDM := TModelCidadesDM.Create(nil);
end;

procedure TViewCidadesBuscar.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(ModelCidadesDM);
end;

end.
