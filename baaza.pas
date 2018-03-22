unit baaza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, ExtCtrls,math, ComCtrls;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    CheckBox1: TCheckBox;
    Edit6: TEdit;
    Button3: TButton;
    Edit7: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button1: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Button2: TButton;
    Button6: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    CheckBox2: TCheckBox;
    Label16: TLabel;
    StringGrid2: TStringGrid;
    Button7: TButton;
    ComboBoxCoWyszukac: TComboBox;
    Edit13: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Button8: TButton;
    Label12: TLabel;
    Label13: TLabel;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    StringGrid4: TStringGrid;
    Button9: TButton;
    Edit8: TEdit;
    ComboBox2: TComboBox;
    Label15: TLabel;
    Label17: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    StringGrid3: TStringGrid;
    Label19: TLabel;
    ComboBox3: TComboBox;
    Label20: TLabel;
    Edit9: TEdit;
    Button10: TButton;
    Label21: TLabel;
    Label22: TLabel;
    TabSheet5: TTabSheet;
    StringGrid5: TStringGrid;
    Label23: TLabel;
    ComboBox4: TComboBox;
    Label24: TLabel;
    Edit10: TEdit;
    Button11: TButton;
    Label25: TLabel;
    Label26: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);





  private
    { Private declarations }
  public
    { Public declarations }
  end;
 type
  auto = record
    id : Integer;
    marka : String[10];
    model : String[10];
    uzywany: String[10];
    ilosc_rdz : String[5];
    data_produkcji : Integer;
    roz_ap : Real;
    nr_ser : String[17];

  end;

   plik = File of auto;
var
startTime, endTime, frequency: Int64;
czas:Single;
  Form1: TForm1;
  pliczek:plik;
   tab : array of auto;
   tab1 : array [1..10] of string=('Samsung','LG','HTC','Apple','Nokia','XIAOmi','Google','Huawei','Sony','Microsoft');
   tab2 : array [1..10] of string=('S7 Edge','K10','825','6s','A5','P8','Pixel','MI2','Z4','Lumia 850');
   tab3 : array [1..5] of string=('1','2','4','6','8');

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);

begin

randomize;
stringgrid1.Cells[0,0]:='ID';
stringgrid1.Cells[1,0]:='Marka';
stringgrid1.Cells[2,0]:='Model';
stringgrid1.Cells[3,0]:='Rdzenie';
stringgrid1.Cells[4,0]:='Rok_produkcji';
stringgrid1.Cells[5,0]:='Roz_aparatu';
stringgrid1.Cells[6,0]:='Nr_seryjny';
stringgrid1.Cells[7,0]:='Uzywany';

stringgrid2.Cells[0,0]:='ID';
stringgrid2.Cells[1,0]:='Marka';
stringgrid2.Cells[2,0]:='Model';
stringgrid2.Cells[3,0]:='Rdzenie';
stringgrid2.Cells[4,0]:='Rok_produkcji';
stringgrid2.Cells[5,0]:='Roz_aparatu';
stringgrid2.Cells[6,0]:='Nr_seryjny';
stringgrid2.Cells[7,0]:='Uzywany';

stringgrid3.Cells[0,0]:='ID';
stringgrid3.Cells[1,0]:='Marka';
stringgrid3.Cells[2,0]:='Model';
stringgrid3.Cells[3,0]:='Rdzenie';
stringgrid3.Cells[4,0]:='Rok_produkcji';
stringgrid3.Cells[5,0]:='Roz_aparatu';
stringgrid3.Cells[6,0]:='Nr_seryjny';
stringgrid3.Cells[7,0]:='Uzywany';

stringgrid4.Cells[0,0]:='ID';
stringgrid4.Cells[1,0]:='Marka';
stringgrid4.Cells[2,0]:='Model';
stringgrid4.Cells[3,0]:='Rdzenie';
stringgrid4.Cells[4,0]:='Rok_produkcji';
stringgrid4.Cells[5,0]:='Roz_aparatu';
stringgrid4.Cells[6,0]:='Nr_seryjny';
stringgrid4.Cells[7,0]:='Uzywany';

stringgrid5.Cells[0,0]:='ID';
stringgrid5.Cells[1,0]:='Marka';
stringgrid5.Cells[2,0]:='Model';
stringgrid5.Cells[3,0]:='Rdzenie';
stringgrid5.Cells[4,0]:='Rok_produkcji';
stringgrid5.Cells[5,0]:='Roz_aparatu';
stringgrid5.Cells[6,0]:='Nr_seryjny';
stringgrid5.Cells[7,0]:='Uzywany';


end;














procedure TForm1.BitBtn1Click(Sender: TObject);




begin

if  (edit1.Text='') or (edit2.Text='') or (combobox1.Text='') or  (edit4.Text='') or (edit3.Text='') or (edit5.Text='') then
showmessage('Wypelnij wszytskie pola!') else begin
                                                                  // dodawanie
setlength(tab,length(tab)+1);
tab[length(tab)-1].id:=length(tab);
tab[length(tab)-1].marka:=edit2.Text;
tab[length(tab)-1].model:=edit1.Text;
tab[length(tab)-1].ilosc_rdz:=combobox1.Text;
tab[length(tab)-1].data_produkcji:=strtoint(edit3.Text);
tab[length(tab)-1].roz_ap:=strtofloat(edit4.Text);
tab[length(tab)-1].nr_ser:=edit5.Text;
//tab[length(tab)-1].uzywany:=checkbox1.Checked;




    stringgrid1.Cells[0,length(tab)]:=inttostr(length(tab));
    stringgrid1.Cells[1,length(tab)]:=tab[length(tab)-1].marka;
    stringgrid1.Cells[2,length(tab)]:=tab[length(tab)-1].model;
    stringgrid1.Cells[3,length(tab)]:=inttostr(tab[length(tab)-1].data_produkcji);
    stringgrid1.Cells[4,length(tab)]:=tab[length(tab)-1].ilosc_rdz;
    stringgrid1.Cells[5,length(tab)]:=floattostr(tab[length(tab)-1].roz_ap);
    stringgrid1.Cells[6,length(tab)]:=tab[length(tab)-1].nr_ser;
    stringgrid1.Cells[7,length(tab)]:=tab[length(tab)-1].uzywany;
     //showmessage(inttostr(length(tab)));
  end;
end;









procedure TForm1.BitBtn3Click(Sender: TObject);
var i:integer;
begin
if  (edit6.Text='')  then
showmessage('Wypelnij puste pole!') else begin                                                                // losowanie
for i:=1 to strtoint(edit6.text) do
begin
setlength(tab,length(tab)+1);
tab[length(tab)-1].id:=length(tab);
tab[length(tab)-1].marka:=tab1[random(10)+1];
tab[length(tab)-1].model:=tab2[random(10)+1];
tab[length(tab)-1].ilosc_rdz:=tab3[random(5)+1];
tab[length(tab)-1].data_produkcji:=randomrange(1950,2016);
tab[length(tab)-1].roz_ap:=RoundTo(random(20)+1+random,-1);
tab[length(tab)-1].nr_ser:=tab[length(tab)-1].nr_ser+char(randomrange(65,90))+char(randomrange(65,90))+char(randomrange(65,90))+inttostr(randomrange(111111111,999999999));
  //RundTo(R,-2)
if random(2)=1 then
tab[length(tab)-1].uzywany:='True'
else
tab[length(tab)-1].uzywany:='False';
//showmessage('cons');


    stringgrid1.Cells[0,length(tab)]:=inttostr(length(tab));
    stringgrid1.Cells[1,length(tab)]:=tab[length(tab)-1].marka;
    stringgrid1.Cells[2,length(tab)]:=tab[length(tab)-1].model;
    stringgrid1.Cells[3,length(tab)]:=tab[length(tab)-1].ilosc_rdz;
    stringgrid1.Cells[4,length(tab)]:=inttostr(tab[length(tab)-1].data_produkcji);
    stringgrid1.Cells[5,length(tab)]:=floattostr(tab[length(tab)-1].roz_ap);
    stringgrid1.Cells[6,length(tab)]:=tab[length(tab)-1].nr_ser;
    stringgrid1.Cells[7,length(tab)]:=tab[length(tab)-1].uzywany;
     //showmessage(inttostr(length(tab)));
     end;
       showmessage('Gotowe!');
end;
end;






procedure TForm1.Button3Click(Sender: TObject);
var i :integer;
begin
                                                      // usun wszytsko
for i:=1 to length(tab) do
begin

    stringgrid1.Cells[0,length(tab)]:='';
    stringgrid1.Cells[1,length(tab)]:='';
    stringgrid1.Cells[2,length(tab)]:='';
    stringgrid1.Cells[3,length(tab)]:='';
    stringgrid1.Cells[4,length(tab)]:='';
    stringgrid1.Cells[5,length(tab)]:='';
    stringgrid1.Cells[6,length(tab)]:='';
    stringgrid1.Cells[7,length(tab)]:='';

    setlength(tab,length(tab)-1);
end;
    showmessage('Gotowe!');
end;





procedure TForm1.BitBtn2Click(Sender: TObject);       //usuwanie
var i:integer;
begin

 for i:=1 to length(tab) do

 if edit7.text=stringgrid1.Cells[0,i] then
 begin
      stringgrid1.Cells[0,i]:=stringgrid1.Cells[0,length(tab)];
      stringgrid1.Cells[1,i]:=stringgrid1.Cells[1,length(tab)];
      stringgrid1.Cells[2,i]:=stringgrid1.Cells[2,length(tab)];
      stringgrid1.Cells[3,i]:=stringgrid1.Cells[3,length(tab)];
      stringgrid1.Cells[4,i]:=stringgrid1.Cells[4,length(tab)];
      stringgrid1.Cells[5,i]:=stringgrid1.Cells[5,length(tab)];
      stringgrid1.Cells[6,i]:=stringgrid1.Cells[6,length(tab)];
      stringgrid1.Cells[7,i]:=stringgrid1.Cells[7,length(tab)];

      stringgrid1.Cells[0,length(tab)]:='';
      stringgrid1.Cells[1,length(tab)]:='';
      stringgrid1.Cells[2,length(tab)]:='';
      stringgrid1.Cells[3,length(tab)]:='';
      stringgrid1.Cells[4,length(tab)]:='';
      stringgrid1.Cells[5,length(tab)]:='';
      stringgrid1.Cells[6,length(tab)]:='';
      stringgrid1.Cells[7,length(tab)]:='';
      tab[i-1]:=tab[length(tab)-1];
      setlength(tab,length(tab)-1);
      //showmessage(inttostr(length(tab)));
      end;
                end;








procedure TForm1.Button4Click(Sender: TObject);                //ile
//var i:integer  ;
begin
//for i:=0 to length(tab)-1 do
if (inttostr(tab[length(tab)].id)<='0') then
     showmessage('Pusto!') else
     showmessage(inttostr(tab[length(tab)-1].id));
end;










procedure TForm1.Button5Click(Sender: TObject);          //zapis
var i:integer;
begin
AssignFile(pliczek, 'telefony.mdb');
rewrite(pliczek);
Reset(pliczek);
Seek(pliczek, FileSize(pliczek));
for i:=0 to length(tab)-1 do
Write(pliczek, tab[i]);
CloseFile(pliczek) ;
showmessage('Gotowe!');
end;







procedure TForm1.Button1Click(Sender: TObject);         //odczyt
var i:integer;
begin
AssignFile(pliczek, 'telefony.mdb');
Reset(pliczek);
for i := 0 to FileSize(pliczek)-1 do
  begin
  setlength(tab,length(tab)+1);
    Read(pliczek, tab[i]);                            // po kolei odczytanie kolejnego z rekord�w
     stringgrid1.Cells[0,length(tab)]:=inttostr(tab[i].id);
     stringgrid1.Cells[1,length(tab)]:=tab[length(tab)-1].marka;
    stringgrid1.Cells[2,length(tab)]:=tab[length(tab)-1].model;
    stringgrid1.Cells[3,length(tab)]:=inttostr(tab[length(tab)-1].data_produkcji);
    stringgrid1.Cells[4,length(tab)]:=tab[length(tab)-1].ilosc_rdz;
    stringgrid1.Cells[5,length(tab)]:=floattostr(tab[length(tab)-1].roz_ap);
    stringgrid1.Cells[6,length(tab)]:=tab[length(tab)-1].nr_ser;
    stringgrid1.Cells[7,length(tab)]:=tab[length(tab)-1].uzywany;
  end;
 CloseFile(pliczek);
 showmessage('Gotowe!');
end;















procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);  //zabezpieczenia
begin
       if Key in [' '..'?'] + ['['..'_'] + ['@','{','}'] then Key := #0
end;



procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
        if Key in ['!'..'/'] + [':'..'@'] + ['['..'`'] + ['{'..'~'] then Key := #0
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
        if Key in [' '..'+'] + ['-'..'/'] + [':'..'~'] then Key := #0
end;



procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);

begin
        if Key in ['!'..'/'] + [':'..'~'] then Key := #0
end;




procedure TForm1.ComboBox1KeyPress(Sender: TObject; var Key: Char);

begin
        if Key in ['!'..'~'] then Key := #0
end;


procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);

begin
        if Key in [' '..'/'] + [':'..'@'] + ['['..'`'] + ['{'..'~'] then Key := #0
end;


procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['!'..'/'] + [':'..'~'] then Key := #0
end;

procedure TForm1.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
 if Key in ['!'..'/'] + [':'..'~'] then Key := #0
end;

procedure TForm1.Button2Click(Sender: TObject);
var k:integer;
begin

 for k:=10 downto 1 do

 begin
      if length(tab)>10 then begin

      stringgrid1.Cells[0,k]:=stringgrid1.Cells[0,length(tab)];
      stringgrid1.Cells[1,k]:=stringgrid1.Cells[1,length(tab)];
      stringgrid1.Cells[2,k]:=stringgrid1.Cells[2,length(tab)];
      stringgrid1.Cells[3,k]:=stringgrid1.Cells[3,length(tab)];
      stringgrid1.Cells[4,k]:=stringgrid1.Cells[4,length(tab)];
      stringgrid1.Cells[5,k]:=stringgrid1.Cells[5,length(tab)];
      stringgrid1.Cells[6,k]:=stringgrid1.Cells[6,length(tab)];
      stringgrid1.Cells[7,k]:=stringgrid1.Cells[7,length(tab)];
      end;

      stringgrid1.Cells[0,length(tab)]:='';
      stringgrid1.Cells[1,length(tab)]:='';
      stringgrid1.Cells[2,length(tab)]:='';
      stringgrid1.Cells[3,length(tab)]:='';
      stringgrid1.Cells[4,length(tab)]:='';
      stringgrid1.Cells[5,length(tab)]:='';
      stringgrid1.Cells[6,length(tab)]:='';
      stringgrid1.Cells[7,length(tab)]:='';



      tab[k-1]:=tab[length(tab)-1];
      setlength(tab,length(tab)-1);
      //showmessage(inttostr(length(tab)));

  end;
  {for i:=0 to length(tab)-1 do
  showmessage(inttostr(tab[i].id)); }
end;

procedure TForm1.Button6Click(Sender: TObject);
var k,l:Integer;
begin
k:=0;
 for l:=0 to length(tab) do begin

if  (stringgrid1.Cells[1,l])='Apple' then
    begin
    k:=k+1

     end;

end;
showmessage(inttostr(k));
 end;



procedure TForm1.Button7Click(Sender: TObject);            //wyszukiwanie liniowe
var licznik,i,ii:integer;
 ad,ab,cd:double;



begin
 ad:=gettickcount;
for ii:=8 to stringgrid2.ColCount do
begin
  stringgrid2.Cols[ii].Clear;
end;

for ii:=1 to stringgrid2.RowCount do
begin
  stringgrid2.Rows[ii].Clear;
end;


if ComboBoxCoWyszukac.Text='' then showmessage('Wybierz co chcesz poszukiwac.')
else

licznik:=1;
if ComboBoxCoWyszukac.Text = 'ID' then begin
    for i:=0 to length(tab)-1 do begin
      if tab[i].ID = StrToInt (Edit13.Text) then begin
      with StringGrid2 do begin
        cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
        //if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;
    end;
    end;
end;


if ComboBoxCoWyszukac.Text = 'Ilosc rdzeni' then begin
    for i:=0 to length(tab)-1 do begin
      if tab[i].ilosc_rdz = Edit13.Text then begin
      with StringGrid2 do begin
        cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
       // if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;
    end;
    end;
end;


if ComboBoxCoWyszukac.Text = 'Marka' then begin
   for i:=0 to length(tab)-1 do begin
      if tab[i].marka = Edit13.Text then begin
      with StringGrid2 do begin
        cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
     //   if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;
    end;
  end;
end;


if ComboBoxCoWyszukac.Text = 'Model' then begin
   for i:=0 to length(tab)-1 do begin
      if tab[i].Model = Edit13.Text then begin
      with StringGrid2 do begin
        cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
      //  if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;
    end;
  end;
end;


if ComboBoxCoWyszukac.Text = 'Numer seryjny' then begin
   for i:=0 to length(tab)-1 do begin
      if tab[i].nr_ser = Edit13.Text then begin
      with StringGrid2 do begin
        cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
       // if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;
    end;
  end;
end;


if ComboBoxCoWyszukac.Text = 'Data produkcji' then begin
   for i:=0 to length(tab)-1 do begin
      if tab[i].data_produkcji = StrToInt(Edit13.Text) then begin
      with StringGrid2 do begin
        cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
      //  if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;
    end;
  end;
end;

if ComboBoxCoWyszukac.Text = 'Rozdzielczosc aparatu' then begin
  for i:=0 to length(tab)-1 do begin
    if FloatToStr(tab[i].roz_ap) = Edit13.Text then begin
    //licznik:=1;
      with StringGrid2 do begin
        cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
      //  if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;
    end;
  end;
end;


if ComboBoxCoWyszukac.Text = 'Uszkodzony' then begin
if CheckBox2.State=cbChecked then begin
  for i:=0 to length(tab)-1 do begin
    if tab[i].uzywany = 'True' then begin
    //licznik:=1;
      with StringGrid2 do begin
       cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
        //if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;
    end;
  end;
end;



if CheckBox2.State=cbUnchecked then begin
for i:=0 to length(tab)-1 do begin
    if tab[i].uzywany = 'False' then begin
    //licznik:=1;
      with StringGrid2 do begin
       cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
       // if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;
    end;
  end;
end;

end;
ab:=gettickcount;
cd:=(ab-ad)/1000;
Label12.Caption := FloatToStr(cd);
end;






procedure TForm1.Button8Click(Sender: TObject);             //wyszukaj 1
var licznik,i,ii:integer;


begin
for ii:=8 to stringgrid2.ColCount do
begin
  stringgrid2.Cols[ii].Clear;
end;

for ii:=1 to stringgrid2.RowCount do
begin
  stringgrid2.Rows[ii].Clear;
end;



if ComboBoxCoWyszukac.Text='' then showmessage('Wybierz co chcesz poszukiwac.')
else

//QueryPerformanceFrequency(frequency);
//QueryPerformanceCounter(startTime);


licznik:=1;
if ComboBoxCoWyszukac.Text = 'ID' then begin
    for i:=0 to length(tab)-1 do begin
      if tab[i].ID = StrToInt (Edit13.Text) then begin
      with StringGrid2 do begin
        cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
        //if tab[i].uzywany = 'True then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;
    break;
    end;
    end;
end;


if ComboBoxCoWyszukac.Text = 'Ilosc rdzeni' then begin
    for i:=0 to length(tab)-1 do begin
      if tab[i].ilosc_rdz = Edit13.Text then begin
      with StringGrid2 do begin
        cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
        //if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;  break;
    end;
    end;
end;


if ComboBoxCoWyszukac.Text = 'Marka' then begin
   for i:=0 to length(tab)-1 do begin
      if tab[i].marka = Edit13.Text then begin
      with StringGrid2 do begin
        cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
       // if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;      break;
    end;
  end;
end;


if ComboBoxCoWyszukac.Text = 'Model' then begin
   for i:=0 to length(tab)-1 do begin
      if tab[i].Model = Edit13.Text then begin
      with StringGrid2 do begin
        cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
      //  if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;    break;
    end;
  end;
end;


if ComboBoxCoWyszukac.Text = 'Numer seryjny' then begin
   for i:=0 to length(tab)-1 do begin
      if tab[i].nr_ser = Edit13.Text then begin
      with StringGrid2 do begin
        cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
       // if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;    break;
    end;
  end;
end;


if ComboBoxCoWyszukac.Text = 'Data produkcji' then begin
   for i:=0 to length(tab)-1 do begin
      if tab[i].data_produkcji = StrToInt(Edit13.Text) then begin
      with StringGrid2 do begin
        cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
        //if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;    break;
    end;
  end;
end;

if ComboBoxCoWyszukac.Text = 'Rozdzielczosc aparatu' then begin
  for i:=0 to length(tab)-1 do begin
    if FloatToStr(tab[i].roz_ap) = Edit13.Text then begin
    //licznik:=1;
      with StringGrid2 do begin
        cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
        //if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;   break;
    end;
  end;
end;


if ComboBoxCoWyszukac.Text = 'Uszkodzony' then begin
if CheckBox2.State=cbChecked then begin
  for i:=0 to length(tab)-1 do begin
    if tab[i].uzywany = 'True' then begin
    //licznik:=1;
      with StringGrid2 do begin
       cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
        //if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;    break;
    end;
  end;
end;




if CheckBox2.State=cbUnchecked then begin
for i:=0 to length(tab)-1 do begin
    if tab[i].uzywany = 'False' then begin
    //licznik:=1;
      with StringGrid2 do begin
       cells [0,licznik]:= IntToStr (tab[i].ID);
        cells [1,licznik]:= tab[i].marka;
        cells [2,licznik]:= tab[i].model;
        //if tab[i].uzywany = true then cells [7,licznik]:= '-1' else  cells [7,licznik]:= '0';
        cells [6,licznik]:= tab[i].nr_ser;
        cells [5,licznik]:= FloatToStr(tab[i].roz_ap);
        cells [4,licznik]:= IntToStr(tab[i].data_produkcji);
        cells [3,licznik]:= tab[i].ilosc_rdz;
        end;
    licznik:=licznik+1;     break;
    end;
  end;
end;


//QueryPerformanceCounter(endTime);
//czas:= 1000* ((endTime - startTime) / frequency);
//czas:=Roundto(czas,-4);
//showmessage(floattostr(czas));
end;
end;


procedure TForm1.Button9Click(Sender: TObject);                                    // BINARNE
var x,licznik,iii,ii,i,j,m,znaleziono,pocz,kon,sr,wskaznik:integer;
temp:auto;
 ad,ab,cd:double;
 begin


 ad:=gettickcount;
for ii:=8 to stringgrid2.ColCount do
begin
  stringgrid2.Cols[ii].Clear;
end;

for ii:=1 to stringgrid2.RowCount do
begin
  stringgrid2.Rows[ii].Clear;
end;






 for i:=1 to length(tab) do
  begin
    stringgrid3.Cells[0,i]:='';
    stringgrid3.Cells[1,i]:='';
    stringgrid3.Cells[2,i]:='';
    stringgrid3.Cells[3,i]:='';
    stringgrid3.Cells[4,i]:='';
    stringgrid3.Cells[5,i]:='';
    stringgrid3.Cells[6,i]:='';
    stringgrid3.Cells[7,i]:='';
  end;


 if ComboBox2.Text = 'ID' then
begin
for j:=0 to length(tab)-2 do
  begin;
    for i:=0 to length(tab)-2 do
      begin;
        if tab[i].id>tab[i+1].id then
          begin
            temp:=tab[i];
            tab[i]:=tab[i+1];
            tab[i+1]:=temp;
          end;
      end;
  end;
znaleziono:=0;
pocz:=0;
kon:=length(tab);
repeat
sr:=floor((pocz + kon)/2);
// showmessage(inttostr(sr)+'dzielenie');
if(tab[sr].id=strtoint(edit8.text)) then
begin
znaleziono:=1;
    stringgrid3.Cells[0,znaleziono]:=inttostr(tab[sr].id);
    stringgrid3.Cells[1,znaleziono]:=tab[sr].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[sr].model;
    stringgrid3.Cells[3,znaleziono]:=tab[sr].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[sr].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[sr].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[sr].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[sr].uzywany;
end
else if (tab[sr].id<strtoint(edit8.text))then
begin
if(pocz=kon)then begin showmessage('nie znaleziono');break; end;
pocz:=sr+1;
//showmessage('mniejsze')
end
else
begin
if(pocz=kon)then break;
kon:=sr-1;
//showmessage('wieksze');
end;
until znaleziono>=1;
 end;


 if ComboBox2.Text = 'Marka' then
begin
for j:=0 to length(tab)-2 do
  begin;
    for i:=0 to length(tab)-2 do
      begin;
        if tab[i].marka>tab[i+1].marka then
          begin
            temp:=tab[i];
            tab[i]:=tab[i+1];
            tab[i+1]:=temp;
          end;
      end;
  end;
znaleziono:=0;
pocz:=0;
kon:=length(tab)-1;
repeat
sr:=floor((pocz + kon)/2);
//showmessage(inttostr(sr)+'dzielenie');
if(tab[sr].marka=edit8.text) then
begin
znaleziono:=1;
   stringgrid3.Cells[0,znaleziono]:=inttostr(tab[sr].id);
    stringgrid3.Cells[1,znaleziono]:=tab[sr].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[sr].model;
    stringgrid3.Cells[3,znaleziono]:=tab[sr].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[sr].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[sr].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[sr].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[sr].uzywany;
    pocz:=sr;
    repeat
    sr:=sr+1;
    znaleziono:=znaleziono+1;
   if (tab[sr].marka=edit8.text)then
    begin
     stringgrid3.Cells[0,znaleziono]:=inttostr(tab[sr].id);
    stringgrid3.Cells[1,znaleziono]:=tab[sr].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[sr].model;
    stringgrid3.Cells[3,znaleziono]:=tab[sr].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[sr].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[sr].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[sr].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[sr].uzywany;
    end
    else
     break;
    until 0=1;
    znaleziono:=znaleziono-1;;
     repeat
    pocz:=pocz-1;
    znaleziono:=znaleziono+1;
    if (tab[pocz].marka=edit8.text)then
    begin
     stringgrid3.Cells[0,znaleziono]:=inttostr(tab[pocz].id);
    stringgrid3.Cells[1,znaleziono]:=tab[pocz].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[pocz].model;
    stringgrid3.Cells[3,znaleziono]:=tab[pocz].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[pocz].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[pocz].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[pocz].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[pocz].uzywany;
    end
    else
     break;
    until 0=1;
end
else if (tab[sr].marka<edit8.text)then
begin
if(pocz=kon)then begin showmessage('nie znaleziono');break; end;
pocz:=sr+1;
//showmessage('mniejsze')
end
else
begin
if(pocz=kon)then break;
kon:=sr-1;
//showmessage('wieksze');
end;
until znaleziono>=1;
 end;



 if ComboBox2.Text = 'Model' then
begin
for j:=0 to length(tab)-2 do
  begin;
    for i:=0 to length(tab)-2 do
      begin;
        if tab[i].model>tab[i+1].model then
          begin
            temp:=tab[i];
            tab[i]:=tab[i+1];
            tab[i+1]:=temp;
          end;
      end;
  end;
znaleziono:=0;
pocz:=0;
kon:=length(tab)-1;
repeat
sr:=floor((pocz + kon)/2);
//showmessage(inttostr(sr)+'dzielenie');
if(tab[sr].model=edit8.text) then
begin
znaleziono:=1;
   stringgrid3.Cells[0,znaleziono]:=inttostr(tab[sr].id);
    stringgrid3.Cells[1,znaleziono]:=tab[sr].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[sr].model;
    stringgrid3.Cells[3,znaleziono]:=tab[sr].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[sr].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[sr].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[sr].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[sr].uzywany;
    pocz:=sr;
    repeat
    sr:=sr+1;
    znaleziono:=znaleziono+1;
    if (tab[sr].model=edit8.text)then
    begin
     stringgrid3.Cells[0,znaleziono]:=inttostr(tab[sr].id);
    stringgrid3.Cells[1,znaleziono]:=tab[sr].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[sr].model;
    stringgrid3.Cells[3,znaleziono]:=tab[sr].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[sr].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[sr].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[sr].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[sr].uzywany;
    end
    else
     break;
    until 0=1;
    znaleziono:=znaleziono-1;;
     repeat
    pocz:=pocz-1;
    znaleziono:=znaleziono+1;
    if (tab[pocz].model=edit8.text)then
    begin
     stringgrid3.Cells[0,znaleziono]:=inttostr(tab[pocz].id);
    stringgrid3.Cells[1,znaleziono]:=tab[pocz].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[pocz].model;
    stringgrid3.Cells[3,znaleziono]:=tab[pocz].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[pocz].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[pocz].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[pocz].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[pocz].uzywany;
    end
    else
     break;
    until 0=1;
end
else if (tab[sr].model<edit8.text)then
begin
if(pocz=kon)then begin showmessage('nie znaleziono');break; end;
pocz:=sr+1;
//showmessage('mniejsze')
end
else
begin
if(pocz=kon)then break;
kon:=sr-1;
//showmessage('wieksze');
end;
until znaleziono>=1;
 end;




 if ComboBox2.Text = 'Rdzenie' then
begin
for j:=0 to length(tab)-2 do
  begin;
    for i:=0 to length(tab)-2 do
      begin;
        if tab[i].ilosc_rdz>tab[i+1].ilosc_rdz then
          begin
            temp:=tab[i];
            tab[i]:=tab[i+1];
            tab[i+1]:=temp;
          end;
      end;
  end;
znaleziono:=0;
pocz:=0;
kon:=length(tab)-1;
repeat
sr:=floor((pocz + kon)/2);
//showmessage(inttostr(sr)+'dzielenie');
if(tab[sr].ilosc_rdz=edit8.text) then
begin


znaleziono:=1;
   stringgrid3.Cells[0,znaleziono]:=inttostr(tab[sr].id);
    stringgrid3.Cells[1,znaleziono]:=tab[sr].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[sr].model;
    stringgrid3.Cells[3,znaleziono]:=tab[sr].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[sr].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[sr].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[sr].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[sr].uzywany;
    pocz:=sr;
    repeat
    sr:=sr+1;
    znaleziono:=znaleziono+1;
    if (tab[sr].ilosc_rdz=edit8.text)then
    begin
     stringgrid3.Cells[0,znaleziono]:=inttostr(tab[sr].id);
    stringgrid3.Cells[1,znaleziono]:=tab[sr].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[sr].model;
    stringgrid3.Cells[3,znaleziono]:=tab[sr].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[sr].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[sr].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[sr].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[sr].uzywany;
    end
    else
     break;
    until 0=1;
    znaleziono:=znaleziono-1;;
     repeat
    pocz:=pocz-1;
    znaleziono:=znaleziono+1;
    if (tab[pocz].ilosc_rdz=edit8.text)then
    begin
     stringgrid3.Cells[0,znaleziono]:=inttostr(tab[pocz].id);
    stringgrid3.Cells[1,znaleziono]:=tab[pocz].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[pocz].model;
    stringgrid3.Cells[3,znaleziono]:=tab[pocz].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[pocz].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[pocz].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[pocz].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[pocz].uzywany;
    end
    else
     break;
    until 0=1;
end
else if (tab[sr].ilosc_rdz<edit8.text)then
begin
if(pocz=kon)then begin showmessage('nie znaleziono');break; end;
pocz:=sr+1;
//showmessage('mniejsze')
end
else
begin
if(pocz=kon)then break;
kon:=sr-1;
//showmessage('wieksze');
end;
until znaleziono>=1;
 end;




 if ComboBox2.Text = 'Rok produkcji' then
begin
for j:=0 to length(tab)-2 do
  begin;
    for i:=0 to length(tab)-2 do
      begin;
        if tab[i].data_produkcji>tab[i+1].data_produkcji then
          begin
            temp:=tab[i];
            tab[i]:=tab[i+1];
            tab[i+1]:=temp;
          end;
      end;
  end;

    znaleziono:=0;
pocz:=0;
kon:=length(tab)-1;
repeat
sr:=floor((pocz + kon)/2);
//showmessage(inttostr(sr)+'dzielenie');
if(tab[sr].data_produkcji=strtoint(edit8.text)) then
begin

znaleziono:=1;
   stringgrid3.Cells[0,znaleziono]:=inttostr(tab[sr].id);
    stringgrid3.Cells[1,znaleziono]:=tab[sr].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[sr].model;
    stringgrid3.Cells[3,znaleziono]:=tab[sr].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[sr].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[sr].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[sr].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[sr].uzywany;
    pocz:=sr;
    repeat

    sr:=sr+1;
    znaleziono:=znaleziono+1;
    if (tab[sr].data_produkcji=strtoint(edit8.text))then
    begin
     stringgrid3.Cells[0,znaleziono]:=inttostr(tab[sr].id);
    stringgrid3.Cells[1,znaleziono]:=tab[sr].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[sr].model;
    stringgrid3.Cells[3,znaleziono]:=tab[sr].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[sr].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[sr].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[sr].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[sr].uzywany;
    end
    else
     break;
    until 0=1;
    znaleziono:=znaleziono-1;;
     repeat
    pocz:=pocz-1;
    znaleziono:=znaleziono+1;
    if (tab[pocz].data_produkcji=strtoint(edit8.text))then
    begin
     stringgrid3.Cells[0,znaleziono]:=inttostr(tab[pocz].id);
    stringgrid3.Cells[1,znaleziono]:=tab[pocz].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[pocz].model;
    stringgrid3.Cells[3,znaleziono]:=tab[pocz].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[pocz].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[pocz].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[pocz].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[pocz].uzywany;
    end
    else
     break;
    until 0=1;
end
else if (tab[sr].data_produkcji<strtoint(edit8.text))then
begin
if(pocz=kon)then begin showmessage('nie znaleziono');break; end;
pocz:=sr+1;
//showmessage('mniejsze')
end
else
begin
if(pocz=kon)then break;
kon:=sr-1;
//showmessage('wieksze');
end;
until znaleziono>=1;
 end;



 if ComboBox2.Text = 'Rozdzielczosc' then
begin
for j:=0 to length(tab)-2 do
  begin;
    for i:=0 to length(tab)-2 do
      begin;
        if tab[i].roz_ap>tab[i+1].roz_ap then
          begin
            temp:=tab[i];
            tab[i]:=tab[i+1];
            tab[i+1]:=temp;
          end;
      end;
  end;

    znaleziono:=0;
pocz:=0;
kon:=length(tab)-1;
repeat
sr:=floor((pocz + kon)/2);
//showmessage(inttostr(sr)+'dzielenie');
//showmessage(floattostr(strtofloat(edit8.text)*100));
//showmessage(floattostr(tab[sr].roz_ap*100));
if(CompareValue(tab[sr].roz_ap,strtofloat(edit8.text))=0) then
begin


znaleziono:=1;
   stringgrid3.Cells[0,znaleziono]:=inttostr(tab[sr].id);
    stringgrid3.Cells[1,znaleziono]:=tab[sr].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[sr].model;
    stringgrid3.Cells[3,znaleziono]:=tab[sr].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[sr].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[sr].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[sr].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[sr].uzywany;
    pocz:=sr;
    repeat

    sr:=sr+1;
    znaleziono:=znaleziono+1;
    if(CompareValue(tab[sr].roz_ap,strtofloat(edit8.text))=0) then
    begin
     stringgrid3.Cells[0,znaleziono]:=inttostr(tab[sr].id);
    stringgrid3.Cells[1,znaleziono]:=tab[sr].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[sr].model;
    stringgrid3.Cells[3,znaleziono]:=tab[sr].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[sr].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[sr].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[sr].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[sr].uzywany;
    end
    else
     break;
    until 0=1;
    znaleziono:=znaleziono-1;;
     repeat
    pocz:=pocz-1;
    znaleziono:=znaleziono+1;
    if(CompareValue(tab[pocz].roz_ap,strtofloat(edit8.text))=0) then
    begin
     stringgrid3.Cells[0,znaleziono]:=inttostr(tab[pocz].id);
    stringgrid3.Cells[1,znaleziono]:=tab[pocz].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[pocz].model;
    stringgrid3.Cells[3,znaleziono]:=tab[pocz].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[pocz].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[pocz].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[pocz].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[pocz].uzywany;
    end
    else
     break;
    until 0=1;
end
else if (tab[sr].roz_ap<strtofloat(edit8.text))then
begin
if(pocz=kon)then begin showmessage('nie znaleziono');break; end;
pocz:=sr+1;
//showmessage('mniejsze')
end
else
begin
if(pocz=kon)then break;
kon:=sr-1;
//showmessage('wieksze');
end;
until znaleziono>=1;
 end;



 if ComboBox2.Text = 'Numer seryjny' then
begin
for j:=0 to length(tab)-2 do
  begin;
    for i:=0 to length(tab)-2 do
      begin;
        if tab[i].nr_ser>tab[i+1].nr_ser then
          begin
            temp:=tab[i];
            tab[i]:=tab[i+1];
            tab[i+1]:=temp;
          end;
      end;
  end;

    znaleziono:=0;
pocz:=0;
kon:=length(tab)-1;
repeat
sr:=floor((pocz + kon)/2);
//showmessage(inttostr(sr)+'dzielenie');
if(tab[sr].nr_ser=edit8.text) then
begin


znaleziono:=1;
   stringgrid3.Cells[0,znaleziono]:=inttostr(tab[sr].id);
    stringgrid3.Cells[1,znaleziono]:=tab[sr].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[sr].model;
    stringgrid3.Cells[3,znaleziono]:=tab[sr].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[sr].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[sr].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[sr].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[sr].uzywany;
    pocz:=sr;
    repeat
    sr:=sr+1;
    znaleziono:=znaleziono+1;
    if (tab[sr].nr_ser=edit8.text)then
    begin
     stringgrid3.Cells[0,znaleziono]:=inttostr(tab[sr].id);
    stringgrid3.Cells[1,znaleziono]:=tab[sr].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[sr].model;
    stringgrid3.Cells[3,znaleziono]:=tab[sr].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[sr].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[sr].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[sr].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[sr].uzywany;
    end
    else
     break;
    until 0=1;
    znaleziono:=znaleziono-1;;
     repeat
    pocz:=pocz-1;
    znaleziono:=znaleziono+1;
    if (tab[pocz].nr_ser=edit8.text)then
    begin
     stringgrid3.Cells[0,znaleziono]:=inttostr(tab[pocz].id);
    stringgrid3.Cells[1,znaleziono]:=tab[pocz].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[pocz].model;
    stringgrid3.Cells[3,znaleziono]:=tab[pocz].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[pocz].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[pocz].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[pocz].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[pocz].uzywany;
    end
    else
     break;
    until 0=1;
end
else if (tab[sr].nr_ser<edit8.text)then
begin
if(pocz=kon)then begin showmessage('nie znaleziono');break; end;
pocz:=sr+1;
//showmessage('mniejsze')
end
else
begin
if(pocz=kon)then break;
kon:=sr-1;
//showmessage('wieksze');
end;
until znaleziono>=1;
 end;



 if ComboBox2.Text = 'Uszkodzony' then
begin
for j:=0 to length(tab)-2 do
  begin;
    for i:=0 to length(tab)-2 do
      begin;
        if tab[i].uzywany>tab[i+1].uzywany then
          begin
            temp:=tab[i];
            tab[i]:=tab[i+1];
            tab[i+1]:=temp;
          end;
      end;
  end;
    znaleziono:=0;
pocz:=0;
kon:=length(tab)-1;
repeat
sr:=floor((pocz + kon)/2);
//showmessage(inttostr(sr)+'dzielenie');
if(tab[sr].uzywany=edit8.text) then
begin
znaleziono:=1;
   stringgrid3.Cells[0,znaleziono]:=inttostr(tab[sr].id);
    stringgrid3.Cells[1,znaleziono]:=tab[sr].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[sr].model;
    stringgrid3.Cells[3,znaleziono]:=tab[sr].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[sr].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[sr].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[sr].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[sr].uzywany;
    pocz:=sr;
    repeat
    sr:=sr+1;
    znaleziono:=znaleziono+1;
    if (tab[sr].uzywany=edit8.text)then
    begin
     stringgrid3.Cells[0,znaleziono]:=inttostr(tab[sr].id);
    stringgrid3.Cells[1,znaleziono]:=tab[sr].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[sr].model;
    stringgrid3.Cells[3,znaleziono]:=tab[sr].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[sr].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[sr].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[sr].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[sr].uzywany;
    end
    else
     break;
    until 0=1;
    znaleziono:=znaleziono-1;;
     repeat
    pocz:=pocz-1;
    znaleziono:=znaleziono+1;
    if (tab[pocz].uzywany=edit8.text)then
    begin
     stringgrid3.Cells[0,znaleziono]:=inttostr(tab[pocz].id);
    stringgrid3.Cells[1,znaleziono]:=tab[pocz].marka;
    stringgrid3.Cells[2,znaleziono]:=tab[pocz].model;
    stringgrid3.Cells[3,znaleziono]:=tab[pocz].ilosc_rdz;
    stringgrid3.Cells[4,znaleziono]:=inttostr(tab[pocz].data_produkcji);
    stringgrid3.Cells[5,znaleziono]:=floattostr(tab[pocz].roz_ap);
    stringgrid3.Cells[6,znaleziono]:=tab[pocz].nr_ser;
    stringgrid3.Cells[7,znaleziono]:=tab[pocz].uzywany;
    end
    else
     break;
    until 0=1;
end
else if (tab[sr].uzywany<edit8.text)then
begin
if(pocz=kon)then begin showmessage('nie znaleziono');break; end;
pocz:=sr+1;
//showmessage('mniejsze')
end
else
begin
if(pocz=kon)then break;
kon:=sr-1;
//showmessage('wieksze');
end;
until znaleziono>=1;
 end;
  for m:=0 to length(tab)-1 do
   begin
    stringgrid1.Cells[0,m+1]:=inttostr(tab[m].id);
    stringgrid1.Cells[1,m+1]:=tab[m].marka;
    stringgrid1.Cells[2,m+1]:=tab[m].model;
    stringgrid1.Cells[3,m+1]:=tab[m].ilosc_rdz;
    stringgrid1.Cells[4,m+1]:=inttostr(tab[m].data_produkcji);
    stringgrid1.Cells[5,m+1]:=floattostr(tab[m].roz_ap);
    stringgrid1.Cells[6,m+1]:=tab[m].nr_ser;
    stringgrid1.Cells[7,m+1]:=tab[m].uzywany;

  end;
ab:=gettickcount;
cd:=(ab-ad)/1000;
Label18.Caption := FloatToStr(cd);
end;














procedure TForm1.Button10Click(Sender: TObject);      ///////////////////////////////////////////////////////////////////////// �A�CUCHOWE
 type
  poczatki = record
    nazwa: string;
    poz: Integer;
end;

var x,iii,ii,i,j,poczszuk,start,wsk,licznik:integer;

znaleziono:boolean;
b2:array of integer;
pocz:array of poczatki;



 ad,ab,cd:double;
 begin
  setlength(b2, length(tab));

 ad:=gettickcount;
for ii:=8 to stringgrid2.ColCount do
begin
  stringgrid2.Cols[ii].Clear;
end;

for ii:=1 to stringgrid2.RowCount do
begin
  stringgrid2.Rows[ii].Clear;
end;


znaleziono:=true;
 start:=0;
 wsk:=1;
 licznik:=1;
 for i:=1 to length(tab) do
  begin
    stringgrid4.Cells[0,i]:='';
    stringgrid4.Cells[1,i]:='';
    stringgrid4.Cells[2,i]:='';
    stringgrid4.Cells[3,i]:='';
    stringgrid4.Cells[4,i]:='';
    stringgrid4.Cells[5,i]:='';
    stringgrid4.Cells[6,i]:='';
    stringgrid4.Cells[7,i]:='';
  end;





if ComboBox3.Text = 'ID' then
begin

for j:=0 to length(tab)-1 do
begin
if (length(pocz)<=0) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=inttostr(tab[j].id);
pocz[start].poz:=j;
start:=start+1;
end
else
begin
for i:=0 to length(pocz)-1 do
if inttostr(tab[j].id)=pocz[i].nazwa then begin znaleziono:=true; break; end  else
znaleziono:=false;

if(znaleziono=false) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=inttostr(tab[j].id);
pocz[start].poz:=j;
start:=start+1;
end;
end;
end;

 //showmessage(inttostr(length(pocz)));
//for i:=0 to length(pocz)-1 do
  // showmessage(inttostr(i+1)+' '+inttostr(pocz[i].poz+1)+pocz[i].nazwa);


for i:=0 to length(pocz)-1 do
begin
poczszuk:=pocz[i].poz;
  for j:=poczszuk+1 to length(tab)-1 do
  if (inttostr(tab[j].id)=pocz[i].nazwa)then begin                                    ///tutej///
  b2[poczszuk]:=j; poczszuk:=j end
  else  begin
  b2[poczszuk]:=-1;
   end;
 end;
   // showmessage(inttostr(length(b2)));
//for i:=0 to length(b2)-1 do
   //showmessage(inttostr(i)+' '+inttostr(b2[i]));

for i:=0 to length(pocz)-1 do
begin
if edit9.text=pocz[i].nazwa then begin
 stringgrid4.Cells[0,1]:=inttostr(tab[pocz[i].poz].id);
    stringgrid4.Cells[1,1]:=tab[pocz[i].poz].marka;
    stringgrid4.Cells[2,1]:=tab[pocz[i].poz].model;
    stringgrid4.Cells[3,1]:=tab[pocz[i].poz].ilosc_rdz;
    stringgrid4.Cells[4,1]:=inttostr(tab[pocz[i].poz].data_produkcji);
    stringgrid4.Cells[5,1]:=floattostr(tab[pocz[i].poz].roz_ap);
    stringgrid4.Cells[6,1]:=tab[pocz[i].poz].nr_ser;
    stringgrid4.Cells[7,1]:=tab[pocz[i].poz].uzywany;

 wsk:=pocz[i].poz;
break;
end;

end;
//showmessage('Wskaznik '+inttostr(wsk));
 while (b2[wsk] >0)do
begin
wsk := b2[wsk];
//showmessage('Wskaznik '+inttostr(wsk));
licznik:=licznik+1;
   stringgrid4.Cells[0,licznik]:=inttostr(tab[wsk].id);
    stringgrid4.Cells[1,licznik]:=tab[wsk].marka;
    stringgrid4.Cells[2,licznik]:=tab[wsk].model;
    stringgrid4.Cells[3,licznik]:=tab[wsk].ilosc_rdz;
    stringgrid4.Cells[4,licznik]:=inttostr(tab[wsk].data_produkcji);
    stringgrid4.Cells[5,licznik]:=floattostr(tab[wsk].roz_ap);
    stringgrid4.Cells[6,licznik]:=tab[wsk].nr_ser;
    stringgrid4.Cells[7,licznik]:=tab[wsk].uzywany;
end;

end;

if ComboBox3.Text = 'Marka' then
begin

for j:=0 to length(tab)-1 do
begin
if (length(pocz)<=0) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].marka;
pocz[start].poz:=j;
start:=start+1;
end
else
begin
for i:=0 to length(pocz)-1 do
if tab[j].marka=pocz[i].nazwa then begin znaleziono:=true; break; end  else
znaleziono:=false;

if(znaleziono=false) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].marka;
pocz[start].poz:=j;
start:=start+1;
end;
end;
end;

 //showmessage(inttostr(length(pocz)));
//for i:=0 to length(pocz)-1 do
  // showmessage(inttostr(i+1)+' '+inttostr(pocz[i].poz+1)+pocz[i].nazwa);


for i:=0 to length(pocz)-1 do
begin
poczszuk:=pocz[i].poz;
  for j:=poczszuk+1 to length(tab)-1 do
  if (tab[j].marka=pocz[i].nazwa)then begin
  b2[poczszuk]:=j; poczszuk:=j end
  else  begin
  b2[poczszuk]:=-1;
   end;
 end;
   // showmessage(inttostr(length(b2)));
//for i:=0 to length(b2)-1 do
   //showmessage(inttostr(i)+' '+inttostr(b2[i]));

for i:=0 to length(pocz)-1 do
begin
if edit9.text=pocz[i].nazwa then begin
 stringgrid4.Cells[0,1]:=inttostr(tab[pocz[i].poz].id);
    stringgrid4.Cells[1,1]:=tab[pocz[i].poz].marka;
    stringgrid4.Cells[2,1]:=tab[pocz[i].poz].model;
    stringgrid4.Cells[3,1]:=tab[pocz[i].poz].ilosc_rdz;
    stringgrid4.Cells[4,1]:=inttostr(tab[pocz[i].poz].data_produkcji);
    stringgrid4.Cells[5,1]:=floattostr(tab[pocz[i].poz].roz_ap);
    stringgrid4.Cells[6,1]:=tab[pocz[i].poz].nr_ser;
    stringgrid4.Cells[7,1]:=tab[pocz[i].poz].uzywany;
wsk:=pocz[i].poz;
break;
end;

end;
//showmessage('elo'+inttostr(wsk));
while (b2[wsk] >0)do
begin
wsk := b2[wsk];
//showmessage('kk'+inttostr(wsk));
licznik:=licznik+1;
   stringgrid4.Cells[0,licznik]:=inttostr(tab[wsk].id);
    stringgrid4.Cells[1,licznik]:=tab[wsk].marka;
    stringgrid4.Cells[2,licznik]:=tab[wsk].model;
    stringgrid4.Cells[3,licznik]:=tab[wsk].ilosc_rdz;
    stringgrid4.Cells[4,licznik]:=inttostr(tab[wsk].data_produkcji);
    stringgrid4.Cells[5,licznik]:=floattostr(tab[wsk].roz_ap);
    stringgrid4.Cells[6,licznik]:=tab[wsk].nr_ser;
    stringgrid4.Cells[7,licznik]:=tab[wsk].uzywany;

end;

end;
if ComboBox3.Text = 'Model' then
begin

for j:=0 to length(tab)-1 do
begin
if (length(pocz)<=0) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].model;
pocz[start].poz:=j;
start:=start+1;
end
else
begin
for i:=0 to length(pocz)-1 do
if tab[j].model=pocz[i].nazwa then begin znaleziono:=true; break; end  else
znaleziono:=false;

if(znaleziono=false) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].model;
pocz[start].poz:=j;
start:=start+1;
end;
end;
end;

 //showmessage(inttostr(length(pocz)));
//for i:=0 to length(pocz)-1 do
  // showmessage(inttostr(i+1)+' '+inttostr(pocz[i].poz+1)+pocz[i].nazwa);


for i:=0 to length(pocz)-1 do
begin
poczszuk:=pocz[i].poz;
  for j:=poczszuk+1 to length(tab)-1 do
  if (tab[j].model=pocz[i].nazwa)then begin
  b2[poczszuk]:=j; poczszuk:=j end
  else  begin
  b2[poczszuk]:=-1; 
   end;
 end;
   // showmessage(inttostr(length(b2)));
//for i:=0 to length(b2)-1 do
   //showmessage(inttostr(i)+' '+inttostr(b2[i]));

for i:=0 to length(pocz)-1 do
begin
if edit9.text=pocz[i].nazwa then begin
 stringgrid4.Cells[0,1]:=inttostr(tab[pocz[i].poz].id);
    stringgrid4.Cells[1,1]:=tab[pocz[i].poz].marka;
    stringgrid4.Cells[2,1]:=tab[pocz[i].poz].model;
    stringgrid4.Cells[3,1]:=tab[pocz[i].poz].ilosc_rdz;
    stringgrid4.Cells[4,1]:=inttostr(tab[pocz[i].poz].data_produkcji);
    stringgrid4.Cells[5,1]:=floattostr(tab[pocz[i].poz].roz_ap);
    stringgrid4.Cells[6,1]:=tab[pocz[i].poz].nr_ser;
    stringgrid4.Cells[7,1]:=tab[pocz[i].poz].uzywany;
wsk:=pocz[i].poz;
break;
end;

end;
//showmessage('elo'+inttostr(wsk));
 while (b2[wsk] >0)do
begin
wsk := b2[wsk];
//showmessage('kk'+inttostr(wsk));
licznik:=licznik+1;
   stringgrid4.Cells[0,licznik]:=inttostr(tab[wsk].id);
    stringgrid4.Cells[1,licznik]:=tab[wsk].marka;
    stringgrid4.Cells[2,licznik]:=tab[wsk].model;
    stringgrid4.Cells[3,licznik]:=tab[wsk].ilosc_rdz;
    stringgrid4.Cells[4,licznik]:=inttostr(tab[wsk].data_produkcji);
    stringgrid4.Cells[5,licznik]:=floattostr(tab[wsk].roz_ap);
    stringgrid4.Cells[6,licznik]:=tab[wsk].nr_ser;
    stringgrid4.Cells[7,licznik]:=tab[wsk].uzywany;
end;

end;
if ComboBox3.Text = 'Rdzenie' then
begin

for j:=0 to length(tab)-1 do
begin
if (length(pocz)<=0) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].ilosc_rdz;
pocz[start].poz:=j;
start:=start+1;
end
else
begin
for i:=0 to length(pocz)-1 do
if tab[j].ilosc_rdz=pocz[i].nazwa then begin znaleziono:=true; break; end  else
znaleziono:=false;

if(znaleziono=false) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].ilosc_rdz;
pocz[start].poz:=j;
start:=start+1;
end;
end;
end;

 //showmessage(inttostr(length(pocz)));
//for i:=0 to length(pocz)-1 do
  // showmessage(inttostr(i+1)+' '+inttostr(pocz[i].poz+1)+pocz[i].nazwa);


for i:=0 to length(pocz)-1 do
begin
poczszuk:=pocz[i].poz;
  for j:=poczszuk+1 to length(tab)-1 do
  if (tab[j].ilosc_rdz=pocz[i].nazwa)then begin
  b2[poczszuk]:=j; poczszuk:=j end
  else  begin
  b2[poczszuk]:=-1; 
   end;
 end;
   // showmessage(inttostr(length(b2)));
//for i:=0 to length(b2)-1 do
   //showmessage(inttostr(i)+' '+inttostr(b2[i]));

for i:=0 to length(pocz)-1 do
begin
if edit9.text=pocz[i].nazwa then begin
 stringgrid4.Cells[0,1]:=inttostr(tab[pocz[i].poz].id);
    stringgrid4.Cells[1,1]:=tab[pocz[i].poz].marka;
    stringgrid4.Cells[2,1]:=tab[pocz[i].poz].model;
    stringgrid4.Cells[3,1]:=tab[pocz[i].poz].ilosc_rdz;
    stringgrid4.Cells[4,1]:=inttostr(tab[pocz[i].poz].data_produkcji);
    stringgrid4.Cells[5,1]:=floattostr(tab[pocz[i].poz].roz_ap);
    stringgrid4.Cells[6,1]:=tab[pocz[i].poz].nr_ser;
    stringgrid4.Cells[7,1]:=tab[pocz[i].poz].uzywany;
wsk:=pocz[i].poz;
break;
end;

end;
//showmessage('elo'+inttostr(wsk));
 while (b2[wsk] >0)do
begin
wsk := b2[wsk];
//showmessage('kk'+inttostr(wsk));
licznik:=licznik+1;
   stringgrid4.Cells[0,licznik]:=inttostr(tab[wsk].id);
    stringgrid4.Cells[1,licznik]:=tab[wsk].marka;
    stringgrid4.Cells[2,licznik]:=tab[wsk].model;
    stringgrid4.Cells[3,licznik]:=tab[wsk].ilosc_rdz;
    stringgrid4.Cells[4,licznik]:=inttostr(tab[wsk].data_produkcji);
    stringgrid4.Cells[5,licznik]:=floattostr(tab[wsk].roz_ap);
    stringgrid4.Cells[6,licznik]:=tab[wsk].nr_ser;
    stringgrid4.Cells[7,licznik]:=tab[wsk].uzywany;
end;

end;
if ComboBox3.Text = 'Rok produkcji' then
begin

for j:=0 to length(tab)-1 do
begin
if (length(pocz)<=0) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=inttostr(tab[j].data_produkcji);
pocz[start].poz:=j;
start:=start+1;
end
else
begin
for i:=0 to length(pocz)-1 do
if inttostr(tab[j].data_produkcji)=pocz[i].nazwa then begin znaleziono:=true; break; end  else
znaleziono:=false;

if(znaleziono=false) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=inttostr(tab[j].data_produkcji);
pocz[start].poz:=j;
start:=start+1;
end;
end;
end;

 //showmessage(inttostr(length(pocz)));
//for i:=0 to length(pocz)-1 do
  // showmessage(inttostr(i+1)+' '+inttostr(pocz[i].poz+1)+pocz[i].nazwa);


for i:=0 to length(pocz)-1 do
begin
poczszuk:=pocz[i].poz;
  for j:=poczszuk+1 to length(tab)-1 do
  if (inttostr(tab[j].data_produkcji)=pocz[i].nazwa)then begin
  b2[poczszuk]:=j; poczszuk:=j end
  else  begin
  b2[poczszuk]:=-1; 
   end;
 end;
   // showmessage(inttostr(length(b2)));
//for i:=0 to length(b2)-1 do
   //showmessage(inttostr(i)+' '+inttostr(b2[i]));

for i:=0 to length(pocz)-1 do
begin
if edit9.text=pocz[i].nazwa then begin
 stringgrid4.Cells[0,1]:=inttostr(tab[pocz[i].poz].id);
    stringgrid4.Cells[1,1]:=tab[pocz[i].poz].marka;
    stringgrid4.Cells[2,1]:=tab[pocz[i].poz].model;
    stringgrid4.Cells[3,1]:=tab[pocz[i].poz].ilosc_rdz;
    stringgrid4.Cells[4,1]:=inttostr(tab[pocz[i].poz].data_produkcji);
    stringgrid4.Cells[5,1]:=floattostr(tab[pocz[i].poz].roz_ap);
    stringgrid4.Cells[6,1]:=tab[pocz[i].poz].nr_ser;
    stringgrid4.Cells[7,1]:=tab[pocz[i].poz].uzywany;
wsk:=pocz[i].poz;
break;
end;

end;
//showmessage('elo'+inttostr(wsk));
 while (b2[wsk] >0)do
begin
wsk := b2[wsk];
//showmessage('kk'+inttostr(wsk));
licznik:=licznik+1;
   stringgrid4.Cells[0,licznik]:=inttostr(tab[wsk].id);
    stringgrid4.Cells[1,licznik]:=tab[wsk].marka;
    stringgrid4.Cells[2,licznik]:=tab[wsk].model;
    stringgrid4.Cells[3,licznik]:=tab[wsk].ilosc_rdz;
    stringgrid4.Cells[4,licznik]:=inttostr(tab[wsk].data_produkcji);
    stringgrid4.Cells[5,licznik]:=floattostr(tab[wsk].roz_ap);
    stringgrid4.Cells[6,licznik]:=tab[wsk].nr_ser;
    stringgrid4.Cells[7,licznik]:=tab[wsk].uzywany;
end;

end;
if ComboBox3.Text = 'Rozdzielczosc' then
begin

for j:=0 to length(tab)-1 do
begin
if (length(pocz)<=0) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=floattostr(tab[j].roz_ap);
pocz[start].poz:=j;
start:=start+1;
end
else
begin
for i:=0 to length(pocz)-1 do
if floattostr(tab[j].roz_ap)=pocz[i].nazwa then begin znaleziono:=true; break; end  else
znaleziono:=false;

if(znaleziono=false) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=floattostr(tab[j].roz_ap);
pocz[start].poz:=j;
start:=start+1;
end;
end;
end;

 //showmessage(inttostr(length(pocz)));
//for i:=0 to length(pocz)-1 do
  // showmessage(inttostr(i+1)+' '+inttostr(pocz[i].poz+1)+pocz[i].nazwa);


for i:=0 to length(pocz)-1 do
begin
poczszuk:=pocz[i].poz;
  for j:=poczszuk+1 to length(tab)-1 do
  if (floattostr(tab[j].roz_ap)=pocz[i].nazwa)then begin
  b2[poczszuk]:=j; poczszuk:=j end
  else  begin
  b2[poczszuk]:=-1; 
   end;
 end;
   // showmessage(inttostr(length(b2)));
//for i:=0 to length(b2)-1 do
   //showmessage(inttostr(i)+' '+inttostr(b2[i]));

for i:=0 to length(pocz)-1 do
begin
if edit9.text=pocz[i].nazwa then begin
 stringgrid4.Cells[0,1]:=inttostr(tab[pocz[i].poz].id);
    stringgrid4.Cells[1,1]:=tab[pocz[i].poz].marka;
    stringgrid4.Cells[2,1]:=tab[pocz[i].poz].model;
    stringgrid4.Cells[3,1]:=tab[pocz[i].poz].ilosc_rdz;
    stringgrid4.Cells[4,1]:=inttostr(tab[pocz[i].poz].data_produkcji);
    stringgrid4.Cells[5,1]:=floattostr(tab[pocz[i].poz].roz_ap);
    stringgrid4.Cells[6,1]:=tab[pocz[i].poz].nr_ser;
    stringgrid4.Cells[7,1]:=tab[pocz[i].poz].uzywany;
wsk:=pocz[i].poz;
break;
end;

end;
//showmessage('elo'+inttostr(wsk));
 while (b2[wsk] >0)do
begin
wsk := b2[wsk];
//showmessage('kk'+inttostr(wsk));
licznik:=licznik+1;
   stringgrid4.Cells[0,licznik]:=inttostr(tab[wsk].id);
    stringgrid4.Cells[1,licznik]:=tab[wsk].marka;
    stringgrid4.Cells[2,licznik]:=tab[wsk].model;
    stringgrid4.Cells[3,licznik]:=tab[wsk].ilosc_rdz;
    stringgrid4.Cells[4,licznik]:=inttostr(tab[wsk].data_produkcji);
    stringgrid4.Cells[5,licznik]:=floattostr(tab[wsk].roz_ap);
    stringgrid4.Cells[6,licznik]:=tab[wsk].nr_ser;
    stringgrid4.Cells[7,licznik]:=tab[wsk].uzywany;
end;

end;
if ComboBox3.Text = 'Numer seryjny' then
begin

for j:=0 to length(tab)-1 do
begin
if (length(pocz)<=0) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].nr_ser;
pocz[start].poz:=j;
start:=start+1;
end
else
begin
for i:=0 to length(pocz)-1 do
if tab[j].nr_ser=pocz[i].nazwa then begin znaleziono:=true; break; end  else
znaleziono:=false;

if(znaleziono=false) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].nr_ser;
pocz[start].poz:=j;
start:=start+1;
end;
end;
end;

 //showmessage(inttostr(length(pocz)));
//for i:=0 to length(pocz)-1 do
  // showmessage(inttostr(i+1)+' '+inttostr(pocz[i].poz+1)+pocz[i].nazwa);


for i:=0 to length(pocz)-1 do
begin
poczszuk:=pocz[i].poz;
  for j:=poczszuk+1 to length(tab)-1 do
  if (tab[j].nr_ser=pocz[i].nazwa)then begin
  b2[poczszuk]:=j; poczszuk:=j end
  else  begin
  b2[poczszuk]:=-1; 
   end;
 end;
   // showmessage(inttostr(length(b2)));
//for i:=0 to length(b2)-1 do
   //showmessage(inttostr(i)+' '+inttostr(b2[i]));

for i:=0 to length(pocz)-1 do
begin
if edit9.text=pocz[i].nazwa then begin
 stringgrid4.Cells[0,1]:=inttostr(tab[pocz[i].poz].id);
    stringgrid4.Cells[1,1]:=tab[pocz[i].poz].marka;
    stringgrid4.Cells[2,1]:=tab[pocz[i].poz].model;
    stringgrid4.Cells[3,1]:=tab[pocz[i].poz].ilosc_rdz;
    stringgrid4.Cells[4,1]:=inttostr(tab[pocz[i].poz].data_produkcji);
    stringgrid4.Cells[5,1]:=floattostr(tab[pocz[i].poz].roz_ap);
    stringgrid4.Cells[6,1]:=tab[pocz[i].poz].nr_ser;
    stringgrid4.Cells[7,1]:=tab[pocz[i].poz].uzywany;
wsk:=pocz[i].poz;
break;
end;

end;
//showmessage('elo'+inttostr(wsk));
 while (b2[wsk] >0)do
begin
wsk := b2[wsk];
//showmessage('kk'+inttostr(wsk));
licznik:=licznik+1;
   stringgrid4.Cells[0,licznik]:=inttostr(tab[wsk].id);
    stringgrid4.Cells[1,licznik]:=tab[wsk].marka;
    stringgrid4.Cells[2,licznik]:=tab[wsk].model;
    stringgrid4.Cells[3,licznik]:=tab[wsk].ilosc_rdz;
    stringgrid4.Cells[4,licznik]:=inttostr(tab[wsk].data_produkcji);
    stringgrid4.Cells[5,licznik]:=floattostr(tab[wsk].roz_ap);
    stringgrid4.Cells[6,licznik]:=tab[wsk].nr_ser;
    stringgrid4.Cells[7,licznik]:=tab[wsk].uzywany;
end;

end;


if ComboBox3.Text = 'Uszkodzony' then
begin

for j:=0 to length(tab)-1 do
begin
if (length(pocz)<=0) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].uzywany;
pocz[start].poz:=j;
start:=start+1;
end
else
begin
for i:=0 to length(pocz)-1 do
if tab[j].uzywany=pocz[i].nazwa then begin znaleziono:=true; break; end  else
znaleziono:=false;

if(znaleziono=false) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].uzywany;
pocz[start].poz:=j;
start:=start+1;
end;
end;
end;

 //showmessage(inttostr(length(pocz)));
//for i:=0 to length(pocz)-1 do
  // showmessage(inttostr(i+1)+' '+inttostr(pocz[i].poz+1)+pocz[i].nazwa);


for i:=0 to length(pocz)-1 do
begin
poczszuk:=pocz[i].poz;
  for j:=poczszuk+1 to length(tab)-1 do
  if (tab[j].uzywany=pocz[i].nazwa)then begin
  b2[poczszuk]:=j; poczszuk:=j end
  else  begin
  b2[poczszuk]:=-1; 
   end;
 end;
   // showmessage(inttostr(length(b2)));
//for i:=0 to length(b2)-1 do
   //showmessage(inttostr(i)+' '+inttostr(b2[i]));

for i:=0 to length(pocz)-1 do
begin
if edit9.text=pocz[i].nazwa then begin
 stringgrid4.Cells[0,1]:=inttostr(tab[pocz[i].poz].id);
    stringgrid4.Cells[1,1]:=tab[pocz[i].poz].marka;
    stringgrid4.Cells[2,1]:=tab[pocz[i].poz].model;
    stringgrid4.Cells[3,1]:=tab[pocz[i].poz].ilosc_rdz;
    stringgrid4.Cells[4,1]:=inttostr(tab[pocz[i].poz].data_produkcji);
    stringgrid4.Cells[5,1]:=floattostr(tab[pocz[i].poz].roz_ap);
    stringgrid4.Cells[6,1]:=tab[pocz[i].poz].nr_ser;
    stringgrid4.Cells[7,1]:=tab[pocz[i].poz].uzywany;
wsk:=pocz[i].poz;
break;
end;

end;
//showmessage('elo'+inttostr(wsk));
 while (b2[wsk] >0)do
begin
wsk := b2[wsk];
//showmessage('kk'+inttostr(wsk));
licznik:=licznik+1;
   stringgrid4.Cells[0,licznik]:=inttostr(tab[wsk].id);
    stringgrid4.Cells[1,licznik]:=tab[wsk].marka;
    stringgrid4.Cells[2,licznik]:=tab[wsk].model;
    stringgrid4.Cells[3,licznik]:=tab[wsk].ilosc_rdz;
    stringgrid4.Cells[4,licznik]:=inttostr(tab[wsk].data_produkcji);
    stringgrid4.Cells[5,licznik]:=floattostr(tab[wsk].roz_ap);
    stringgrid4.Cells[6,licznik]:=tab[wsk].nr_ser;
    stringgrid4.Cells[7,licznik]:=tab[wsk].uzywany;
end;
end;
ab:=gettickcount;
cd:=(ab-ad)/1000;
Label22.Caption := FloatToStr(cd);
end;








procedure TForm1.Button11Click(Sender: TObject);          //////////////////////////////////////inwersyjne
 type
  poczatki = record
    nazwa: string;
    poz: Integer;
end;

var i,j,poczszuk,start,wsk,licznik:integer;
 checker:bool;
znaleziono:boolean;
lista : array of array of integer;
pocz:array of poczatki;
x,iii,ii:integer;
ad,ab,cd:double;



 begin
 if  edit10.text=''then showmessage('Wypelnij puste pole!') else

 begin
 ad:=gettickcount;
for ii:=8 to stringgrid5.ColCount do
begin
  stringgrid5.Cols[ii].Clear;
end;

for ii:=1 to stringgrid5.RowCount do
begin
  stringgrid5.Rows[ii].Clear;
end;


if ComboBox4.Text = 'Uszkodzony' then
begin


 checker:=false;
 znaleziono:=true;
 start:=0;
 wsk:=0;
 licznik:=-1;

 for i:=1 to length(tab) do
  begin
    stringgrid5.Cells[0,i]:='';
    stringgrid5.Cells[1,i]:='';
    stringgrid5.Cells[2,i]:='';
    stringgrid5.Cells[3,i]:='';
    stringgrid5.Cells[4,i]:='';
    stringgrid5.Cells[5,i]:='';
    stringgrid5.Cells[6,i]:='';
    stringgrid5.Cells[7,i]:='';
  end;

for j:=0 to length(tab)-1 do
begin
if (length(pocz)<=0) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].uzywany;
pocz[start].poz:=j;
start:=start+1;
end
else
begin
for i:=0 to length(pocz)-1 do
if tab[j].uzywany=pocz[i].nazwa then begin znaleziono:=true; break; end  else
znaleziono:=false;

if(znaleziono=false) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].uzywany;
pocz[start].poz:=j;
start:=start+1;
end;
end;
end;
//showmessage(inttostr(length(pocz)));
//showmessage(inttostr(length(pocz)));
//for i:=0 to length(pocz)-1 do
//showmessage(inttostr(i+1)+' '+inttostr(pocz[i].poz+1)+pocz[i].nazwa);
for i:=0 to length(pocz)-1 do
begin
licznik:=-1;
//showmessage('zmiana pozatku '+pocz[i].nazwa);
poczszuk:=pocz[i].poz;
  for j:=0 to length(tab)-1 do
  if (tab[j].uzywany=pocz[i].nazwa)then begin
  //showmessage('if '+inttostr(j));
  setlength(lista,length(pocz),length(lista)+1);
  licznik:=licznik+1;
  lista[i,licznik]:=j;  end
  else  begin
  //b2[poczszuk]:=-1;
   end;
 end;

licznik:=0;
for i:=0 to length(pocz)-1 do
for j:=0 to high(lista) do
begin
if(lista[i,j]=0)then checker:=true else checker:=false;
if(checker=false) or ((i=0) and (j=0))then
if (edit10.text=tab[lista[i,j]].uzywany)then begin
licznik:=licznik+1;
    stringgrid5.Cells[0,licznik]:=inttostr(tab[lista[i,j]].id);
    stringgrid5.Cells[1,licznik]:=tab[lista[i,j]].marka;
    stringgrid5.Cells[2,licznik]:=tab[lista[i,j]].model;
    stringgrid5.Cells[3,licznik]:=tab[lista[i,j]].ilosc_rdz;
    stringgrid5.Cells[4,licznik]:=inttostr(tab[lista[i,j]].data_produkcji);
    stringgrid5.Cells[5,licznik]:=floattostr(tab[lista[i,j]].roz_ap);
    stringgrid5.Cells[6,licznik]:=tab[lista[i,j]].nr_ser;
    stringgrid5.Cells[7,licznik]:=tab[lista[i,j]].uzywany;
    end;
 end;
end;






if ComboBox4.Text = 'Marka' then
begin


 checker:=false;
 znaleziono:=true;
 start:=0;
 wsk:=0;
 licznik:=-1;

 for i:=1 to length(tab) do
  begin
    stringgrid5.Cells[0,i]:='';
    stringgrid5.Cells[1,i]:='';
    stringgrid5.Cells[2,i]:='';
    stringgrid5.Cells[3,i]:='';
    stringgrid5.Cells[4,i]:='';
    stringgrid5.Cells[5,i]:='';
    stringgrid5.Cells[6,i]:='';
    stringgrid5.Cells[7,i]:='';
  end;





for j:=0 to length(tab)-1 do
begin
if (length(pocz)<=0) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].marka;
pocz[start].poz:=j;
start:=start+1;
end
else
begin
for i:=0 to length(pocz)-1 do
if tab[j].marka=pocz[i].nazwa then begin znaleziono:=true;  break; end  else
znaleziono:=false;

if(znaleziono=false) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].marka;
pocz[start].poz:=j;
start:=start+1;
end;
end;
end;
//showmessage(inttostr(length(pocz)));
//showmessage(inttostr(length(pocz)));
//for i:=0 to length(pocz)-1 do
//showmessage(inttostr(i+1)+' '+inttostr(pocz[i].poz+1)+pocz[i].nazwa);
for i:=0 to length(pocz)-1 do
begin
licznik:=-1;
//showmessage('zmiana pozatku '+pocz[i].nazwa);
poczszuk:=pocz[i].poz;
  for j:=0 to length(tab)-1 do
  if (tab[j].marka=pocz[i].nazwa)then begin
  //showmessage('if '+inttostr(j));
  setlength(lista,length(pocz),length(lista)+1);
  licznik:=licznik+1;
  lista[i,licznik]:=j;  end
  else  begin
  //b2[poczszuk]:=-1;
   end;
 end;

licznik:=0;
for i:=0 to length(pocz)-1 do
for j:=0 to high(lista) do
begin
if(lista[i,j]=0)then checker:=true else checker:=false;
if(checker=false) or ((i=0) and (j=0))then
if (edit10.text=tab[lista[i,j]].marka)then begin
licznik:=licznik+1;
    stringgrid5.Cells[0,licznik]:=inttostr(tab[lista[i,j]].id);
    stringgrid5.Cells[1,licznik]:=tab[lista[i,j]].marka;
    stringgrid5.Cells[2,licznik]:=tab[lista[i,j]].model;
    stringgrid5.Cells[3,licznik]:=tab[lista[i,j]].ilosc_rdz;
    stringgrid5.Cells[4,licznik]:=inttostr(tab[lista[i,j]].data_produkcji);
    stringgrid5.Cells[5,licznik]:=floattostr(tab[lista[i,j]].roz_ap);
    stringgrid5.Cells[6,licznik]:=tab[lista[i,j]].nr_ser;
    stringgrid5.Cells[7,licznik]:=tab[lista[i,j]].uzywany;
    end;
 end;
end;




if ComboBox4.Text = 'Model' then
begin


 checker:=false;
 znaleziono:=true;
 start:=0;
 wsk:=0;
 licznik:=-1;

 for i:=1 to length(tab) do
  begin
    stringgrid5.Cells[0,i]:='';
    stringgrid5.Cells[1,i]:='';
    stringgrid5.Cells[2,i]:='';
    stringgrid5.Cells[3,i]:='';
    stringgrid5.Cells[4,i]:='';
    stringgrid5.Cells[5,i]:='';
    stringgrid5.Cells[6,i]:='';
    stringgrid5.Cells[7,i]:='';
  end;

for j:=0 to length(tab)-1 do
begin
if (length(pocz)<=0) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].model;
pocz[start].poz:=j;
start:=start+1;
end
else
begin
for i:=0 to length(pocz)-1 do
if tab[j].model=pocz[i].nazwa then begin znaleziono:=true; break; end  else
znaleziono:=false;

if(znaleziono=false) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].model;
pocz[start].poz:=j;
start:=start+1;
end;
end;
end;
//showmessage(inttostr(length(pocz)));
//showmessage(inttostr(length(pocz)));
//for i:=0 to length(pocz)-1 do
//showmessage(inttostr(i+1)+' '+inttostr(pocz[i].poz+1)+pocz[i].nazwa);
for i:=0 to length(pocz)-1 do
begin
licznik:=-1;
//showmessage('zmiana pozatku '+pocz[i].nazwa);
poczszuk:=pocz[i].poz;
  for j:=0 to length(tab)-1 do
  if (tab[j].model=pocz[i].nazwa)then begin
  //showmessage('if '+inttostr(j));
  setlength(lista,length(pocz),length(lista)+1);
  licznik:=licznik+1;
  lista[i,licznik]:=j;  end
  else  begin
  //b2[poczszuk]:=-1;
   end;
 end;

licznik:=0;
for i:=0 to length(pocz)-1 do
for j:=0 to high(lista) do
begin
if(lista[i,j]=0)then checker:=true else checker:=false;
if(checker=false) or ((i=0) and (j=0))then
if (edit10.text=tab[lista[i,j]].model)then begin
licznik:=licznik+1;
    stringgrid5.Cells[0,licznik]:=inttostr(tab[lista[i,j]].id);
    stringgrid5.Cells[1,licznik]:=tab[lista[i,j]].marka;
    stringgrid5.Cells[2,licznik]:=tab[lista[i,j]].model;
    stringgrid5.Cells[3,licznik]:=tab[lista[i,j]].ilosc_rdz;
    stringgrid5.Cells[4,licznik]:=inttostr(tab[lista[i,j]].data_produkcji);
    stringgrid5.Cells[5,licznik]:=floattostr(tab[lista[i,j]].roz_ap);
    stringgrid5.Cells[6,licznik]:=tab[lista[i,j]].nr_ser;
    stringgrid5.Cells[7,licznik]:=tab[lista[i,j]].uzywany;
    end;
 end;
end;



if ComboBox4.Text = 'Rdzenie' then
begin


 checker:=false;
 znaleziono:=true;
 start:=0;
 wsk:=0;
 licznik:=-1;

 for i:=1 to length(tab) do
  begin
    stringgrid5.Cells[0,i]:='';
    stringgrid5.Cells[1,i]:='';
    stringgrid5.Cells[2,i]:='';
    stringgrid5.Cells[3,i]:='';
    stringgrid5.Cells[4,i]:='';
    stringgrid5.Cells[5,i]:='';
    stringgrid5.Cells[6,i]:='';
    stringgrid5.Cells[7,i]:='';
  end;

for j:=0 to length(tab)-1 do
begin
if (length(pocz)<=0) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].ilosc_rdz;
pocz[start].poz:=j;
start:=start+1;
end
else
begin
for i:=0 to length(pocz)-1 do
if tab[j].ilosc_rdz=pocz[i].nazwa then begin znaleziono:=true; break; end  else
znaleziono:=false;

if(znaleziono=false) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].ilosc_rdz;
pocz[start].poz:=j;
start:=start+1;
end;
end;
end;
//showmessage(inttostr(length(pocz)));
//showmessage(inttostr(length(pocz)));
//for i:=0 to length(pocz)-1 do
//showmessage(inttostr(i+1)+' '+inttostr(pocz[i].poz+1)+pocz[i].nazwa);
for i:=0 to length(pocz)-1 do
begin
licznik:=-1;
//showmessage('zmiana pozatku '+pocz[i].nazwa);
poczszuk:=pocz[i].poz;
  for j:=0 to length(tab)-1 do
  if (tab[j].ilosc_rdz=pocz[i].nazwa)then begin
  //showmessage('if '+inttostr(j));
  setlength(lista,length(pocz),length(lista)+1);
  licznik:=licznik+1;
  lista[i,licznik]:=j;  end
  else  begin
  //b2[poczszuk]:=-1;
   end;
 end;

licznik:=0;
for i:=0 to length(pocz)-1 do
for j:=0 to high(lista) do
begin
if(lista[i,j]=0)then checker:=true else checker:=false;
if(checker=false) or ((i=0) and (j=0))then
if (edit10.text=tab[lista[i,j]].ilosc_rdz)then begin
licznik:=licznik+1;
    stringgrid5.Cells[0,licznik]:=inttostr(tab[lista[i,j]].id);
    stringgrid5.Cells[1,licznik]:=tab[lista[i,j]].marka;
    stringgrid5.Cells[2,licznik]:=tab[lista[i,j]].model;
    stringgrid5.Cells[3,licznik]:=tab[lista[i,j]].ilosc_rdz;
    stringgrid5.Cells[4,licznik]:=inttostr(tab[lista[i,j]].data_produkcji);
    stringgrid5.Cells[5,licznik]:=floattostr(tab[lista[i,j]].roz_ap);
    stringgrid5.Cells[6,licznik]:=tab[lista[i,j]].nr_ser;
    stringgrid5.Cells[7,licznik]:=tab[lista[i,j]].uzywany;
    end;
 end;
end;



if ComboBox4.Text = 'Rok produkcji' then
begin


 checker:=false;
 znaleziono:=true;
 start:=0;
 wsk:=0;
 licznik:=-1;

 for i:=1 to length(tab) do
  begin
    stringgrid5.Cells[0,i]:='';
    stringgrid5.Cells[1,i]:='';
    stringgrid5.Cells[2,i]:='';
    stringgrid5.Cells[3,i]:='';
    stringgrid5.Cells[4,i]:='';
    stringgrid5.Cells[5,i]:='';
    stringgrid5.Cells[6,i]:='';
    stringgrid5.Cells[7,i]:='';
  end;

for j:=0 to length(tab)-1 do
begin
if (length(pocz)<=0) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=inttostr(tab[j].data_produkcji);
pocz[start].poz:=j;
start:=start+1;
end
else
begin
for i:=0 to length(pocz)-1 do
if inttostr(tab[j].data_produkcji)=pocz[i].nazwa then begin znaleziono:=true; break; end  else
znaleziono:=false;

if(znaleziono=false) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=inttostr(tab[j].data_produkcji);
pocz[start].poz:=j;
start:=start+1;
end;
end;
end;
//showmessage(inttostr(length(pocz)));
//showmessage(inttostr(length(pocz)));
//for i:=0 to length(pocz)-1 do
//showmessage(inttostr(i+1)+' '+inttostr(pocz[i].poz+1)+pocz[i].nazwa);
for i:=0 to length(pocz)-1 do
begin
licznik:=-1;
//showmessage('zmiana pozatku '+pocz[i].nazwa);
poczszuk:=pocz[i].poz;
  for j:=0 to length(tab)-1 do
  if (inttostr(tab[j].data_produkcji)=pocz[i].nazwa)then begin
  //showmessage('if '+inttostr(j));
  setlength(lista,length(pocz),length(lista)+1);
  licznik:=licznik+1;
  lista[i,licznik]:=j;  end
  else  begin
  //b2[poczszuk]:=-1;
   end;
 end;

licznik:=0;
for i:=0 to length(pocz)-1 do
for j:=0 to high(lista) do
begin
if(lista[i,j]=0)then checker:=true else checker:=false;
if(checker=false) or ((i=0) and (j=0))then
if (edit10.text=inttostr(tab[lista[i,j]].data_produkcji))then begin
licznik:=licznik+1;
    stringgrid5.Cells[0,licznik]:=inttostr(tab[lista[i,j]].id);
    stringgrid5.Cells[1,licznik]:=tab[lista[i,j]].marka;
    stringgrid5.Cells[2,licznik]:=tab[lista[i,j]].model;
    stringgrid5.Cells[3,licznik]:=tab[lista[i,j]].ilosc_rdz;
    stringgrid5.Cells[4,licznik]:=inttostr(tab[lista[i,j]].data_produkcji);
    stringgrid5.Cells[5,licznik]:=floattostr(tab[lista[i,j]].roz_ap);
    stringgrid5.Cells[6,licznik]:=tab[lista[i,j]].nr_ser;
    stringgrid5.Cells[7,licznik]:=tab[lista[i,j]].uzywany;
    end;
 end;
end;




 if ComboBox4.Text = 'Rozdzielczosc' then
begin


 checker:=false;
 znaleziono:=true;
 start:=0;
 wsk:=0;
 licznik:=-1;

 for i:=1 to length(tab) do
  begin
    stringgrid5.Cells[0,i]:='';
    stringgrid5.Cells[1,i]:='';
    stringgrid5.Cells[2,i]:='';
    stringgrid5.Cells[3,i]:='';
    stringgrid5.Cells[4,i]:='';
    stringgrid5.Cells[5,i]:='';
    stringgrid5.Cells[6,i]:='';
    stringgrid5.Cells[7,i]:='';
  end;

for j:=0 to length(tab)-1 do
begin
if (length(pocz)<=0) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=floattostr(tab[j].roz_ap);
pocz[start].poz:=j;
start:=start+1;
end
else
begin
for i:=0 to length(pocz)-1 do
if floattostr(tab[j].roz_ap)=pocz[i].nazwa then begin znaleziono:=true; break; end  else
znaleziono:=false;

if(znaleziono=false) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=floattostr(tab[j].roz_ap);
pocz[start].poz:=j;
start:=start+1;
end;
end;
end;
//showmessage(inttostr(length(pocz)));
//showmessage(inttostr(length(pocz)));
//for i:=0 to length(pocz)-1 do
//showmessage(inttostr(i+1)+' '+inttostr(pocz[i].poz+1)+pocz[i].nazwa);
for i:=0 to length(pocz)-1 do
begin
licznik:=-1;
//showmessage('zmiana pozatku '+pocz[i].nazwa);
poczszuk:=pocz[i].poz;
  for j:=0 to length(tab)-1 do
  if (floattostr(tab[j].roz_ap)=pocz[i].nazwa)then begin
  //showmessage('if '+inttostr(j));
  setlength(lista,length(pocz),length(lista)+1);
  licznik:=licznik+1;
  lista[i,licznik]:=j;  end
  else  begin
  //b2[poczszuk]:=-1;
   end;
 end;

licznik:=0;
for i:=0 to length(pocz)-1 do
for j:=0 to high(lista) do
begin
if(lista[i,j]=0)then checker:=true else checker:=false;
if(checker=false) or ((i=0) and (j=0))then
if (edit10.text=floattostr(tab[lista[i,j]].roz_ap))then begin
licznik:=licznik+1;
    stringgrid5.Cells[0,licznik]:=inttostr(tab[lista[i,j]].id);
    stringgrid5.Cells[1,licznik]:=tab[lista[i,j]].marka;
    stringgrid5.Cells[2,licznik]:=tab[lista[i,j]].model;
    stringgrid5.Cells[3,licznik]:=tab[lista[i,j]].ilosc_rdz;
    stringgrid5.Cells[4,licznik]:=inttostr(tab[lista[i,j]].data_produkcji);
    stringgrid5.Cells[5,licznik]:=floattostr(tab[lista[i,j]].roz_ap);
    stringgrid5.Cells[6,licznik]:=tab[lista[i,j]].nr_ser;
    stringgrid5.Cells[7,licznik]:=tab[lista[i,j]].uzywany;
    end;
 end;
end;



if ComboBox4.Text = 'Numer seryjny' then
begin


 checker:=false;
 znaleziono:=true;
 start:=0;
 wsk:=0;
 licznik:=-1;

 for i:=1 to length(tab) do
  begin
    stringgrid5.Cells[0,i]:='';
    stringgrid5.Cells[1,i]:='';
    stringgrid5.Cells[2,i]:='';
    stringgrid5.Cells[3,i]:='';
    stringgrid5.Cells[4,i]:='';
    stringgrid5.Cells[5,i]:='';
    stringgrid5.Cells[6,i]:='';
    stringgrid5.Cells[7,i]:='';
  end;





for j:=0 to length(tab)-1 do
begin
if (length(pocz)<=0) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].nr_ser;
pocz[start].poz:=j;
start:=start+1;
end
else
begin
for i:=0 to length(pocz)-1 do
if tab[j].nr_ser=pocz[i].nazwa then begin znaleziono:=true; break; end  else
znaleziono:=false;

if(znaleziono=false) then begin
setlength(pocz, length(pocz)+1);
pocz[start].nazwa:=tab[j].nr_ser;
pocz[start].poz:=j;
start:=start+1;
end;
end;
end;
//showmessage(inttostr(length(pocz)));
//showmessage(inttostr(length(pocz)));
//for i:=0 to length(pocz)-1 do
//showmessage(inttostr(i+1)+' '+inttostr(pocz[i].poz+1)+pocz[i].nazwa);
for i:=0 to length(pocz)-1 do
begin
licznik:=-1;
//showmessage('zmiana pozatku '+pocz[i].nazwa);
poczszuk:=pocz[i].poz;
  for j:=0 to length(tab)-1 do
  if (tab[j].nr_ser=pocz[i].nazwa)then begin
  //showmessage('if '+inttostr(j));
  setlength(lista,length(pocz),length(lista)+1);
  licznik:=licznik+1;
  lista[i,licznik]:=j;  end
  else  begin
  //b2[poczszuk]:=-1;
   end;
 end;

licznik:=0;
for i:=0 to length(pocz)-1 do
for j:=0 to high(lista) do
begin
if(lista[i,j]=0)then checker:=true else checker:=false;
if(checker=false) or ((i=0) and (j=0))then
if (edit10.text=tab[lista[i,j]].nr_ser)then begin
licznik:=licznik+1;
    stringgrid5.Cells[0,licznik]:=inttostr(tab[lista[i,j]].id);
    stringgrid5.Cells[1,licznik]:=tab[lista[i,j]].marka;
    stringgrid5.Cells[2,licznik]:=tab[lista[i,j]].model;
    stringgrid5.Cells[3,licznik]:=tab[lista[i,j]].ilosc_rdz;
    stringgrid5.Cells[4,licznik]:=inttostr(tab[lista[i,j]].data_produkcji);
    stringgrid5.Cells[5,licznik]:=floattostr(tab[lista[i,j]].roz_ap);
    stringgrid5.Cells[6,licznik]:=tab[lista[i,j]].nr_ser;
    stringgrid5.Cells[7,licznik]:=tab[lista[i,j]].uzywany;
    end;
 end;
end;






ab:=gettickcount;
cd:=(ab-ad)/1000;
Label26.Caption := FloatToStr(cd);
end;
end;
end.
