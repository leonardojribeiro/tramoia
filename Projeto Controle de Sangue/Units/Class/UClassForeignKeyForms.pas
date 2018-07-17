unit UClassForeignKeyForms;

interface

uses System.SysUtils, System.Classes;

type
  TForeignKeyForms = class(TPersistent)
  private

  public

    const
    FIdUPrincipal: Byte = 1;
    FIdUConsPaciente: Byte = 2;
    FIdUCadPaciente: Byte = 3;
    FIdUConsMunicipio: Byte = 4;
    FIdUSaida: Byte = 5;
    FIdUSelRelatorio = 6;
    FIdURelEntrada  = 7;

  end;

implementation

end.
