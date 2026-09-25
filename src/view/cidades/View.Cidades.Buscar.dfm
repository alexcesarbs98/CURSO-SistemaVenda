inherited ViewCidadesBuscar: TViewCidadesBuscar
  Caption = 'Cidades Cadastrar/Alterar'
  ClientHeight = 451
  ClientWidth = 686
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 702
  ExplicitHeight = 490
  TextHeight = 15
  inherited PnTopo: TPanel
    Width = 686
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 618
    inherited Label1: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edtBuscar: TEdit
      Width = 654
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 586
    end
  end
  inherited PnGrid: TPanel
    Width = 686
    Height = 311
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 618
    ExplicitHeight = 311
  end
  inherited PnRodape: TPanel
    Top = 401
    Width = 686
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 401
    ExplicitWidth = 618
    inherited rdGroupFiltros: TRadioGroup
      Width = 324
      Anchors = [akLeft, akTop, akRight, akBottom]
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'C'#243'digo (F1)'
        'Nome (F2)'
        'UF (F3)')
      ExplicitWidth = 256
    end
    inherited btnUtilizar: TBitBtn
      Left = 508
      ExplicitLeft = 440
    end
    inherited btnFechar: TBitBtn
      Left = 597
      ExplicitLeft = 529
    end
    inherited btnCadastrar: TBitBtn
      Left = 420
      ExplicitLeft = 352
    end
    inherited BitBtn1: TBitBtn
      Left = 331
      Width = 83
      ExplicitLeft = 263
      ExplicitWidth = 83
    end
  end
  inherited DBGrid1: TDBGrid
    Width = 686
    Height = 311
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 291
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_IBGE'
        Width = 82
        Visible = True
      end>
  end
  inherited pnTotal: TPanel
    Top = 376
    Width = 686
    Height = 25
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 376
    ExplicitWidth = 618
    ExplicitHeight = 25
    inherited lbTotal: TLabel
      Left = 534
      Height = 23
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 466
    end
  end
  inherited ImageList1: TImageList
    Top = 304
  end
  inherited DataSource1: TDataSource
    DataSet = ModelCidadesDM.QCidadeBusca
    Top = 232
  end
end
