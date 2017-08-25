unit calculatorform;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, CalculatorEngineUnit;

type

  { TFormCalculator }

  TFormCalculator = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    ButtonAdd: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    EditDisplay: TEdit;
    Label1: TLabel;

    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormCalculator: TFormCalculator;
  CalcEngine: TCalcEngine;

implementation

{$R *.lfm}

{ TFormCalculator }


procedure TFormCalculator.FormCreate(Sender: TObject);
begin
      CalcEngine := TCalcEngine.Create;

end;

procedure TFormCalculator.Button10Click(Sender: TObject);
begin
     CalcEngine.Append('0');
     FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

procedure TFormCalculator.Button11Click(Sender: TObject);
begin
  CalcEngine.Append('.');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

procedure TFormCalculator.ButtonAddClick(Sender: TObject);
begin

end;

procedure TFormCalculator.Button1Click(Sender: TObject);
begin
  CalcEngine.Append('1');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

procedure TFormCalculator.Button2Click(Sender: TObject);
begin
  CalcEngine.Append('2');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

procedure TFormCalculator.Button3Click(Sender: TObject);
begin
  CalcEngine.Append('3');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;

end;

procedure TFormCalculator.Button4Click(Sender: TObject);
begin
  CalcEngine.Append('4');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;

end;

procedure TFormCalculator.Button5Click(Sender: TObject);
begin
  CalcEngine.Append('5');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;

end;

procedure TFormCalculator.Button6Click(Sender: TObject);
begin
  CalcEngine.Append('6');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;

end;

procedure TFormCalculator.Button7Click(Sender: TObject);
begin
  CalcEngine.Append('7');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;

end;

procedure TFormCalculator.Button8Click(Sender: TObject);
begin
  CalcEngine.Append('8');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;

end;

procedure TFormCalculator.Button9Click(Sender: TObject);
begin
  CalcEngine.Append('9');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

end.

