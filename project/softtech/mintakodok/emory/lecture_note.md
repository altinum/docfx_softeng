# Emory game

Kiinduló állomámnyok: [kepek.zip](Kepek.zip)

MemoryCard:

```csharp
internal class MemoryCard : PictureBox
{
    public int képSzám;
       
    public MemoryCard(int sor, int oszlop, int képSzám)
    {
        this.képSzám = képSzám;

        this.Height = 128;
        this.Width = 128;

        this.Left = oszlop * 140;
        this.Top = sor * 140;

        Felforditva = false;
    }

    private bool felforditva;

    public bool Felforditva
    {
        get { return felforditva; }
        set { 
            felforditva = value; 
            if (felforditva)
            {
                this.Load($"képek/nagy/{képSzám}@2x.png");
            }
            else
            {
                this.Load("képek/nagy/card_back@2x.png");
                    
            }                       
        }
    }
}
```

Form1

``` csharp
namespace EmoryGame
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.BackgroundImage = Bitmap.FromFile("képek/bg@2x.png");
            this.Height = this.BackgroundImage.Height;
            this.Width = this.BackgroundImage.Width;

            Kipakolás();
        }

        private void Kipakolás()
        {
            int[] kártyaSorrend = Keverés(16);

            int sorSzám = 0;
            for (int s = 0; s < 4; s++)
            {
                for (int o = 0; o < 4; o++)
                {
                    MemoryCard k = new MemoryCard(s, o, kártyaSorrend[sorSzám]);
                    this.Controls.Add(k);
                    k.Click += new EventHandler(k_Click);
                    sorSzám++;
                }
            }
        }

        MemoryCard elsőKártya;
        MemoryCard másodikKártya;

        void k_Click(object sender, EventArgs e)
        {
            MemoryCard mostaniKártya = (MemoryCard)sender;

            if (elsőKártya == null && másodikKártya == null)
            {
                //Most fordítottunk fel egy kártyát, ez lesz az első kártya
                elsőKártya = mostaniKártya;
                elsőKártya.Felforditva = true;
                return; //A "Return" itt extrém fontos, különben megyünk tovább, és végigpörgünk a többi eseten. 
            }

            if (elsőKártya!=null && másodikKártya == null)
            {
                //Az első kártyát már felfordítottuk, most jön a második.
                másodikKártya = mostaniKártya;
                másodikKártya.Felforditva = true;
                if (elsőKártya.képSzám == másodikKártya.képSzám)
                {
                    elsőKártya.Visible = false;
                    másodikKártya.Visible = false;
                }
                return; 
            }

             if (elsőKártya != null && másodikKártya != null)
            {
                //Mindkét kártyát felfordítottuk, most jön a harmadik, ami új első lesz.
                elsőKártya.Felforditva = false;
                másodikKártya.Felforditva = false;
                elsőKártya = mostaniKártya;
                elsőKártya.Felforditva = true;
                másodikKártya = null;
            }
        }

        int[] Keverés(int kártyaszám)
        {
            int[] tömb = new int[kártyaszám];
            for (int i = 0; i < kártyaszám / 2; i++)
            {
                tömb[i] = i + 1;
                tömb[i + kártyaszám / 2] = i + 1;
            }

            Random rnd = new Random();
            for (int j = 0; j < kártyaszám; j++)
            {
                int egyik = rnd.Next(kártyaszám);
                int másik = rnd.Next(kártyaszám);

                int köztes = tömb[egyik];
                tömb[egyik] = tömb[másik];
                tömb[másik] = köztes;
            }
            return tömb;
        }

    }
}

```

