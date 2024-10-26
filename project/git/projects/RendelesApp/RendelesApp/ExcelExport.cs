using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using Excel = Microsoft.Office.Interop.Excel;
using System.Reflection;
using RendelesApp.Data;
using RendelesApp.Models;
using Microsoft.EntityFrameworkCore;

namespace RendelesApp
{

    public class ExcelExport
    {
        Excel.Application xlApp; // A Microsoft Excel alkalmazás
        Excel.Workbook xlWB;     // A létrehozott munkafüzet
        Excel.Worksheet xlRendelesSheet; // Munkalap a munkafüzeten belül

        RendelesDbContext _context;

        public ExcelExport()
        {
            this._context = new RendelesDbContext();
        }

        public void CreateExcel()
        {
            try
            {
                // Excel elindítása és az applikáció objektum betöltése
                xlApp = new Excel.Application();

                // Új munkafüzet
                xlWB = xlApp.Workbooks.Add(Missing.Value);

                // Új munkalap
                xlRendelesSheet = xlWB.ActiveSheet;

                // Tábla létrehozása
                CreateTable(); // Ennek megírása a következő feladatrészben következik

                // Control átadása a felhasználónak
                xlApp.Visible = true;
                xlApp.UserControl = true;
            }
            catch (Exception ex) // Hibakezelés a beépített hibaüzenettel
            {
                string errMsg = string.Format("Error: {0}\nLine: {1}", ex.Message, ex.Source);
                MessageBox.Show(errMsg, "Error");

                // Hiba esetén az Excel applikáció bezárása automatikusan
                xlWB.Close(false, Type.Missing, Type.Missing);
                xlApp.Quit();
                xlWB = null;
                xlApp = null;
            }
        }

        void CreateTable()
        {
            string[] fejlécek = new string[]
            {
                "ID",
                "Ügyfél",
                "Irányítószám",
                "Város",
                "Utca",
                "Házszám",
                "Rendelés dátum",
                "Státusz",
                "Kedvezmény",
                "Végösszeg"
            };

            for (int i = 0; i < fejlécek.Length; i++)
            {
                xlRendelesSheet.Cells[1, i + 1] = fejlécek[i];
            }

            // többtáblás lekérdezéshez DTO nélkül be kell töltenünk a kapcsolódó (joinolt) táblák adatait is.
            var rendelesek = _context.Rendeles.Include(x => x.SzallitasiCim).Include(x => x.Ugyfel).ToList();

            object[,] adatTömb = new object[rendelesek.Count(), fejlécek.Count()];

            for (int i = 0; i < rendelesek.Count(); i++)
            {
                adatTömb[i, 0] = rendelesek[i].RendelesId;
                adatTömb[i, 1] = rendelesek[i].Ugyfel.Nev;
                adatTömb[i, 2] = rendelesek[i].SzallitasiCim.Iranyitoszam;
                adatTömb[i, 3] = rendelesek[i].SzallitasiCim.Varos;
                adatTömb[i, 4] = rendelesek[i].SzallitasiCim.Utca;
                adatTömb[i, 5] = rendelesek[i].SzallitasiCim.Hazszam;
                adatTömb[i, 6] = rendelesek[i].RendelesDatum.ToString("yyyy-MM-dd HH:mm:ss");
                adatTömb[i, 7] = rendelesek[i].Statusz;
                adatTömb[i, 8] = rendelesek[i].Kedvezmeny.ToString("P");
                adatTömb[i, 9] = rendelesek[i].Vegosszeg.ToString("C0");
            }

            int sorokSzáma = adatTömb.GetLength(0);
            int oszlopokSzáma = adatTömb.GetLength(1);

            Excel.Range adatRange = xlRendelesSheet.get_Range("A2", Type.Missing).get_Resize(sorokSzáma, oszlopokSzáma);
            adatRange.Value2 = adatTömb;
            adatRange.Columns.AutoFit();

            FormatTable();
        }
        
        void FormatTable()
        {
            Excel.Range fejllécRange = xlRendelesSheet.get_Range("A1", Type.Missing).get_Resize(1, 10);
            fejllécRange.Font.Bold = true;
            fejllécRange.VerticalAlignment = Excel.XlVAlign.xlVAlignCenter;
            fejllécRange.HorizontalAlignment = Excel.XlHAlign.xlHAlignCenter;
            fejllécRange.EntireColumn.AutoFit();
            fejllécRange.RowHeight = 40;
            fejllécRange.Interior.Color = Color.Fuchsia;
            fejllécRange.BorderAround2(Excel.XlLineStyle.xlContinuous, Excel.XlBorderWeight.xlThick);
        }
    }


}
