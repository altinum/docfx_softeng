using Microsoft.EntityFrameworkCore.Diagnostics;
using RendelesApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RendelesApp
{
    public class TermekKategoriaTreeView : TreeView
    {

        public List<TermekKategoria> KategoriaLista = new();

        public TermekKategoria? KivalasztottKategoria
        {
            get
            {
                return this.SelectedNode.Tag as TermekKategoria ?? null;
            }
        }


        public void LoadData(List<TermekKategoria> lista)
        {
            KategoriaLista = lista;

            var fokategoriak = from k in KategoriaLista
                               where k.SzuloKategoriaId == null
                               select k;

            foreach (var kategoria in fokategoriak)
            {
                var node = CreateTreeNode(kategoria, KategoriaLista);
                this.Nodes.Add(node);
            }
        }

        public List<TermekKategoria> KivalasztottKategoriak(TermekKategoria termekKategoria)
        {
            if (KategoriaLista.Count == 0 || KivalasztottKategoria == null) return null;

            List<TermekKategoria> kivalasztottKategoriak = new List<TermekKategoria>([KivalasztottKategoria]);

            var kozvetlenGyermekek = KategoriaLista.Where(c => c.SzuloKategoriaId == termekKategoria.KategoriaId).ToList();
            foreach (var gyermek in kozvetlenGyermekek)
            {
                kivalasztottKategoriak.Add(gyermek);
                kivalasztottKategoriak.AddRange(KivalasztottKategoriak(gyermek));
            }

            return kivalasztottKategoriak;
        }

        private TreeNode CreateTreeNode(TermekKategoria kategoria, List<TermekKategoria> osszesKategoria)
        {
            // TreeNode létrehozása az aktuális kategóriához
            var node = new TreeNode(kategoria.Nev) { Tag = kategoria };

            // Alkategóriák keresése és hozzáadása
            var alkategoriak = from k in osszesKategoria
                               where k.SzuloKategoriaId == kategoria.KategoriaId
                               select k;

            foreach (var gyerekKategoria in alkategoriak)
            {
                node.Nodes.Add(CreateTreeNode(gyerekKategoria, osszesKategoria));
            }

            return node;
        }


    }
}
