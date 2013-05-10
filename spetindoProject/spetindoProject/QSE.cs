using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace spetindoProject
{
    public class QSE
    {
        public double[, ,] matrix = new double[100, 63, 17];
        public double[, ,] states = new double[100, 63, 17];
        public double[,] tes = new double[1000000, 17];
        public double[,] Bt = new double[100, 63];
        public char[] predict = new char[66];
        public double[] rule = new double[1000000];
        public int[] temp_t = new int[1000000];
        public int[] temp_kolom = new int[1000000];
        public double[] rules = new double[20];
        public double[] hitung_c = new double[63];
        public double[] hitung_p = new double[63];
        public double[] hitung_cp = new double[63];
        public double[] Jmeasure = new double[63];
        public double[] Fitness = new double[63];
        double[] answer = new double[17];
        double[] tempanswer = new double[17];
        double[] jacc = new double[1000000];
        double[] koeff = new double[1000000];

        public int banyakBaris = 17;
        public int banyakKolom = 63;
        public int banyakSilang = 2;
        public double N, Npu, Nt, gbest = 1, temp_gbest = 0.5, hitungsama = 0;
        Random random = new Random();
        public int t = 0, index = 65, ab = 0, sama = 0, flag = 0;
        public string hasil;

        public void inisialisasi()
        {
            // membaca dataset
            XDocument doc = XDocument.Load("DS_Spetindo.xml");

            var produksi = doc.Descendants("Produksi");

            int n = 0;
            foreach (var Produksi in produksi)
            {
                //memasukkan nilai di xml ke array predict
                predict[n] = Produksi.Value[0];
                hitung_c[n] = 0;
                n++;
            }

            
            for (int x = 0; x <= t; x++)
            {
                for (int kolom = 0; kolom < banyakKolom; kolom++)
                {
                    for (int baris = 0; baris < banyakBaris; baris++)
                    {
                        matrix[t, kolom, baris] = 45;
                    }
                }
            }

        }

        //merubah Qt menjadi Pt
        public void makept()
        {
            int j = 0, randomNumber;
            Random random = new Random();
            while (j < banyakKolom)
            {
                int i = 0;
                while (i < banyakBaris)
                {
                    randomNumber = random.Next(0, 2);
                    if (randomNumber > (Math.Cos(matrix[t, j, i]) * Math.Cos(matrix[t, j, i])))
                    {
                        states[t, j, i] = 1;
                    }
                    else
                    {
                        states[t, j, i] = 0;
                    }

                    i = i + 1;
                }
                j = j + 1;
            }


            //menampilkan array Pt
            for (int i = 0; i <= t; i++)
            {
                for (int kolom = 0; kolom < banyakKolom; kolom++)
                {
                    for (int baris = 0; baris < banyakBaris; baris++)
                    {

                        Console.WriteLine("Pt adalah [{0},{1},{2}] = {3}", i, kolom, baris, states[i, kolom, baris]);

                    }
                }
            }

        }

        public void makeptmin()
        {
            int j = 0, randomNumber;
            Random random = new Random();
            while (j < banyakKolom)
            {
                int i = 0;
                while (i < banyakBaris)
                {
                    randomNumber = random.Next(0, 2);
                    if (randomNumber > (Math.Cos(matrix[t - 1, j, i]) * Math.Cos(matrix[t - 1, j, i])))
                    {
                        states[t, j, i] = 1;
                    }
                    else
                    {
                        states[t, j, i] = 0;
                    }

                    i = i + 1;
                }
                j = j + 1;
            }

        }

        //membuat fitness function
        public void fitness()
        {
            //menghitung |c|
            int count_c;
            int sama, nomor = 0;
            int[] temp_c = new int[63];
            for (int i = 0; i < 63; i++)
            {
                temp_c[i] = -1;
            }
            for (int i = 0; i < banyakKolom; i++)
            {
                if (temp_c[i] != -1)
                    continue;
                temp_c[i] = nomor;
                nomor++;
                count_c = 1;
                for (int j = i + 1; j < banyakKolom; j++)
                {
                    if (temp_c[j] != -1)
                        continue;
                    sama = 1;
                    for (int k = 0; k < banyakBaris; k++)
                    {
                        if (states[t, i, k] != states[t, j, k])
                        {
                            sama = 0;
                            break;
                        }
                    }
                    if (sama == 1)
                    {
                        temp_c[j] = temp_c[i];
                        count_c++;
                    }
                }
                hitung_c[temp_c[i]] = count_c;
            }

            //menghitung p
            int count_p;
            nomor = 0;
            int[] temp_p = new int[63];
            for (int i = 0; i < 63; i++)
            {
                temp_p[i] = -1;
            }
            for (int i = 0; i < banyakKolom; i++)
            {
                if (temp_p[i] != -1)
                    continue;
                temp_p[i] = nomor;
                nomor++;
                count_p = 1;
                for (int j = i + 1; j < banyakKolom; j++)
                {
                    if (temp_p[j] != -1)
                        continue;
                    if (predict[i].Equals(predict[j]))
                    {
                        temp_p[j] = temp_p[i];
                        count_p++;
                    }
                }
                hitung_p[temp_p[i]] = count_p;
            }

            // menghitung C&P
            int count_cp;
            nomor = 0;
            int[] temp_cp = new int[63];
            for (int i = 0; i < 63; i++)
            {
                temp_cp[i] = -1;
            }
            for (int i = 0; i < banyakKolom; i++)
            {
                if (temp_cp[i] != -1)
                    continue;
                temp_cp[i] = nomor;
                nomor++;
                count_cp = 1;
                for (int j = i + 1; j < banyakKolom; j++)
                {
                    if (temp_cp[j] != -1)
                        continue;
                    sama = 1;
                    for (int k = 0; k < banyakBaris; k++)
                    {
                        if (states[t, i, k] != states[t, j, k])
                        {
                            sama = 0;
                            break;
                        }
                    }
                    if (predict[i].Equals(predict[j]))
                    {
                        if (sama == 1)
                            sama = sama + 1;
                    }
                    if (sama == 2)
                    {
                        temp_cp[j] = temp_cp[i];
                        count_cp++;
                    }
                }
                hitung_cp[temp_cp[i]] = count_cp;
            }

            //menghitung N
            N = banyakKolom;


            //menghitung b
            double[] b = new double[63];
            for (int i = 0; i < banyakKolom; i++)
            {
                b[i] = hitung_cp[temp_p[i]] / hitung_c[temp_p[i]];
            }

            //menghitung a
            double[] a = new double[63];
            for (int i = 0; i < banyakKolom; i++)
            {
                a[i] = hitung_p[temp_p[i]] / N;
            }

            //menghitung Jm
            for (int i = 0; i < banyakKolom; i++)
            {
                Jmeasure[i] = hitung_c[temp_p[i]] / N * (b[i] * Math.Log10(b[i] / a[i]));
            }

            //menghitung Fitness
            Npu = 0;
            Nt = banyakBaris;
            double w1 = 0.6, w2 = 0.4;
            for (int i = 0; i < banyakKolom; i++)
            {
                Fitness[i] = ((w1 * Jmeasure[i]) + (w2 * (Npu / Nt))) / (w1 + w2);
            }

        }

        //membuat Bt -> isi fitness function
        public void makebt()
        {
            for (int i = 0; i < banyakKolom; i++)
            {
                Bt[t, i] = Fitness[i];
            }

        }

        public double GetRandomNumber(double minimum, double maximum)
        {

            return random.NextDouble() * (maximum - minimum) + minimum;
        }

        public static void Sort<T>(T[][] data, int col, int bar)
        {
            Comparer<T> comparer = Comparer<T>.Default;
            Array.Sort<T[]>(data, (x, y) => comparer.Compare(x[col], y[bar]));
        }

        //menghitung PSO == merubah matrix (Vt)
        public void PSO()
        {
            //Random random = new Random();

            double rand, alf = 0.99, w = 0.7298, c1 = 1.42, c2 = 1.57, Vt_awal = GetRandomNumber(0, 1), Vt_akhir, teta, pbest = 0;
            gbest = 0;
            //Console.WriteLine("gbest {0}", gbest);
            for (int kolom = 0; kolom < banyakKolom; kolom++)
            {
                for (int x = 0; x < banyakBaris; x++)
                {
                    //Console.WriteLine("matrix {0}", matrix[t-1, kolom, x]);
                    if (matrix[t - 1, kolom, x] > pbest)
                        pbest = matrix[t - 1, kolom, x];

                    //Console.WriteLine("pbest {0} - gbest {1}",pbest,gbest);
                    if (pbest > gbest)
                    {
                        gbest = pbest;
                    }
                }

                for (int baris = 0; baris < banyakBaris; baris++)
                {
                    teta = matrix[t - 1, kolom, baris];

                    rand = GetRandomNumber(0, 1);
                    //Console.WriteLine(rand);
                    Vt_akhir = alf * ((w * Vt_awal) + (c1 * rand * (pbest - teta)) + (c2 * rand * (gbest - teta)));
                    matrix[t, kolom, baris] = teta + Vt_akhir;
                    //Console.WriteLine(teta + Vt_akhir);

                }
            }

        }

        public void algo()
        {
            while (gbest - temp_gbest >= 0.05)
            {
                //Console.WriteLine("awal {0}", gbest - temp_gbest);
                t = t + 1;
                makeptmin();
                fitness();
                if (t > 1)
                    temp_gbest = gbest;
                PSO();
                //Console.WriteLine("akhir {0}-{1}={2}", gbest, temp_gbest, gbest - temp_gbest);
                makebt();

            }
        }

        
        //fungsi cek output yg sama persis
        public void cek()
        {
            //memasukkan Bt ke rule (biar gak ada yg double)
            int no = 0;
            for (int z = 0; z < t; z++)
            {
                for (int i = 0; i < banyakKolom; i++)
                {
                    rule[no] = Bt[z, i];
                    //Console.WriteLine("rule {0} = {1}", i, rule[no]);
                    temp_kolom[no] = i;
                    temp_t[no] = z;

                    if (no > 0)
                    {
                        for (int cek = 0; cek < no; cek++)
                        {
                            if (rule[no] == rule[cek])
                            {
                                no--;
                                break;
                            }
                        }
                    }

                    no++;
                }
            }

            //sort rule dr tinggi ke rendah
            Array.Sort(rule);
            Array.Reverse(rule);

            //ambil 10 rule dimasukkan ke rules
            for (int i = 0; i < 10; i++)
            {
                rules[i] = rule[i];
            }


            sama = 1;
            flag = 1;
            index = 65;

            //memasukkan state yg mempunyai nilai rules ke tes


            for (int l = 0; l < 10; l++)
            {
                for (int j = 0; j <= t; j++)
                {
                    for (int i = 0; i < banyakKolom; i++)
                    {
                        if (rules[l] == Bt[j, i])
                        {
                            for (int m = 0; m < banyakBaris; m++)
                            {
                                tes[ab, m] = states[j, i, m];
                            }
                            ab++;
                        }
                    }
                }
            }

            //mengecek states yg sama dengan inputan
            for (int i = 0; i < ab; i++)
            {

                sama = 1;
                for (int k = 0; k < banyakBaris; k++)
                {
                    if (tes[i, k] != tempanswer[k])
                    {
                        sama = 0;
                        break;
                    }
                }
                if (sama == 1)
                {
                    index = i;
                    flag = 0;
                    break;
                }
            }

        }

        //cari nilai jaccard
        public void jaccard()
        {
            //count yg sama &hitung jaccard
            for (int i = 0; i < ab; i++)
            {

                hitungsama = 0;
                for (int k = 0; k < banyakBaris; k++)
                {
                    if (tes[i, k] == tempanswer[k])
                    {
                        hitungsama++;
                        //break;
                    }
                }
                double n = banyakBaris;
                jacc[i] = hitungsama / n;
                koeff[i] = jacc[i];
            }

            //sort jacc dr tinggi ke rendah
            Array.Sort(jacc);
            Array.Reverse(jacc);

        }

        //fungsi cek output dgn nilai jaccard
        public void cekJaccard()
        {
            //mengecek states yg sama dengan inputan + nilai jaccard tertinggi
            for (int i = 0; i < ab; i++)
            {
                for (int j = 0; j < ab; j++)
                {
                    if (koeff[j] == jacc[i])
                    {
                        index = j % 63;
                    }

                }
            }
        }

        public void print()
        {
            //for (int i = 0; i < ab; i++)
            Console.WriteLine(jacc[1]);
            Console.WriteLine(koeff[index]);

        }
        //output padi
        public string outputPadi()
        {
            //set data padi
            tempanswer[0] = 1;
            tempanswer[1] = 0;
            tempanswer[2] = 0;
            for (int i = 3; i < banyakBaris; i++)
            {
                tempanswer[i] = answer[i];
            }

            cek();

            char a = 'a', b = 'b', c = 'c', d = 'd', e = 'e', f = 'f', g = 'g', h = 'h';


            //Console.WriteLine(index);

            if (predict[index].Equals(a))
            {
                //hasil = "0 - 452 kwintal";
                hasil = "226";
            }
            else if (predict[index].Equals(b))
            {
                //hasil = "453 - 46179,5714285714 kwintal";
                hasil = "23586";
            }
            else if (predict[index].Equals(c))
            {
                //hasil = "46180 - 91907,1428571429 kwintal";
                hasil = "69043";
            }
            else if (predict[index].Equals(d))
            {
                //hasil = "91908 - 137634,714285714 kwintal";
                hasil = "114771";
            }
            else if (predict[index].Equals(e))
            {
                //hasil = "137635 - 183362,285714286 kwintal";
                hasil = "160498";
            }
            else if (predict[index].Equals(f))
            {
                //hasil = "183363 - 229089,857142857 kwintal";
                hasil = "206226";
            }
            else if (predict[index].Equals(g))
            {
                //hasil = "229090 - 274817,428571429 kwintal";
                hasil = "251953";
            }
            else if (predict[index].Equals(h))
            {
                //hasil = "274817,428571429 - More kwintal";
                hasil = "274817";
            }
            else if (index == 65)
            {
                //hasil = "Keputusan tidak ditemukan";
                jaccard();
                cekJaccard();

                //Console.WriteLine(index);
                a = 'a'; b = 'b'; c = 'c'; d = 'd'; e = 'e'; f = 'f'; g = 'g'; h = 'h';
                //Console.WriteLine(predict[index]);
                if (predict[index].Equals(a))
                {
                    //hasil = "0 - 452 kwintal";
                    hasil = "226";
                }
                else if (predict[index].Equals(b))
                {
                    //hasil = "453 - 46179,5714285714 kwintal";
                    hasil = "23586";
                }
                else if (predict[index].Equals(c))
                {
                    //hasil = "46180 - 91907,1428571429 kwintal";
                    hasil = "69043";
                }
                else if (predict[index].Equals(d))
                {
                    //hasil = "91908 - 137634,714285714 kwintal";
                    hasil = "114771";
                }
                else if (predict[index].Equals(e))
                {
                    //hasil = "137635 - 183362,285714286 kwintal";
                    hasil = "160498";
                }
                else if (predict[index].Equals(f))
                {
                    //hasil = "183363 - 229089,857142857 kwintal";
                    hasil = "206226";
                }
                else if (predict[index].Equals(g))
                {
                    //hasil = "229090 - 274817,428571429 kwintal";
                    hasil = "251953";
                }
                else if (predict[index].Equals(h))
                {
                    //hasil = "274817,428571429 - More kwintal";
                    hasil = "274817";
                }
            }

            return (hasil);
        }


        //output jagung
        public string outputJagung()
        {
            //set data jagung
            tempanswer[0] = 0;
            tempanswer[1] = 1;
            tempanswer[2] = 0;
            for (int i = 3; i < banyakBaris; i++)
            {
                tempanswer[i] = answer[i];
            }

            cek();

            char a = 'a', b = 'b', c = 'c', d = 'd', e = 'e', f = 'f', g = 'g', h = 'h';


            //Console.WriteLine(index);

            if (predict[index].Equals(a))
            {
                //hasil = "0 - 452 kwintal";
                hasil = "226";
            }
            else if (predict[index].Equals(b))
            {
                //hasil = "453 - 46179,5714285714 kwintal";
                hasil = "23586";
            }
            else if (predict[index].Equals(c))
            {
                //hasil = "46180 - 91907,1428571429 kwintal";
                hasil = "69043";
            }
            else if (predict[index].Equals(d))
            {
                //hasil = "91908 - 137634,714285714 kwintal";
                hasil = "114771";
            }
            else if (predict[index].Equals(e))
            {
                //hasil = "137635 - 183362,285714286 kwintal";
                hasil = "160498";
            }
            else if (predict[index].Equals(f))
            {
                //hasil = "183363 - 229089,857142857 kwintal";
                hasil = "206226";
            }
            else if (predict[index].Equals(g))
            {
                //hasil = "229090 - 274817,428571429 kwintal";
                hasil = "251953";
            }
            else if (predict[index].Equals(h))
            {
                //hasil = "274817,428571429 - More kwintal";
                hasil = "274817";
            }
            else if (index == 65)
            {
                //hasil = "Keputusan tidak ditemukan";
                jaccard();
                cekJaccard();

                //Console.WriteLine(index);
                a = 'a'; b = 'b'; c = 'c'; d = 'd'; e = 'e'; f = 'f'; g = 'g'; h = 'h';
                //Console.WriteLine(predict[index]);
                if (predict[index].Equals(a))
                {
                    //hasil = "0 - 452 kwintal";
                    hasil = "226";
                }
                else if (predict[index].Equals(b))
                {
                    //hasil = "453 - 46179,5714285714 kwintal";
                    hasil = "23586";
                }
                else if (predict[index].Equals(c))
                {
                    //hasil = "46180 - 91907,1428571429 kwintal";
                    hasil = "69043";
                }
                else if (predict[index].Equals(d))
                {
                    //hasil = "91908 - 137634,714285714 kwintal";
                    hasil = "114771";
                }
                else if (predict[index].Equals(e))
                {
                    //hasil = "137635 - 183362,285714286 kwintal";
                    hasil = "160498";
                }
                else if (predict[index].Equals(f))
                {
                    //hasil = "183363 - 229089,857142857 kwintal";
                    hasil = "206226";
                }
                else if (predict[index].Equals(g))
                {
                    //hasil = "229090 - 274817,428571429 kwintal";
                    hasil = "251953";
                }
                else if (predict[index].Equals(h))
                {
                    //hasil = "274817,428571429 - More kwintal";
                    hasil = "274817";
                }
            }

            return (hasil);
        }


        //output kedelai
        public string outputKedelai()
        {

            //set data kedelai
            tempanswer[0] = 0;
            tempanswer[1] = 0;
            tempanswer[2] = 1;
            for (int i = 3; i < banyakBaris; i++)
            {
                tempanswer[i] = answer[i];
            }

            cek();

            char a = 'a', b = 'b', c = 'c', d = 'd', e = 'e', f = 'f', g = 'g', h = 'h';


            //Console.WriteLine(index);

            if (predict[index].Equals(a))
            {
                //hasil = "0 - 452 kwintal";
                hasil = "226";
            }
            else if (predict[index].Equals(b))
            {
                //hasil = "453 - 46179,5714285714 kwintal";
                hasil = "23586";
            }
            else if (predict[index].Equals(c))
            {
                //hasil = "46180 - 91907,1428571429 kwintal";
                hasil = "69043";
            }
            else if (predict[index].Equals(d))
            {
                //hasil = "91908 - 137634,714285714 kwintal";
                hasil = "114771";
            }
            else if (predict[index].Equals(e))
            {
                //hasil = "137635 - 183362,285714286 kwintal";
                hasil = "160498";
            }
            else if (predict[index].Equals(f))
            {
                //hasil = "183363 - 229089,857142857 kwintal";
                hasil = "206226";
            }
            else if (predict[index].Equals(g))
            {
                //hasil = "229090 - 274817,428571429 kwintal";
                hasil = "251953";
            }
            else if (predict[index].Equals(h))
            {
                //hasil = "274817,428571429 - More kwintal";
                hasil = "274817";
            }
            else if (index == 65)
            {
                //hasil = "Keputusan tidak ditemukan";
                jaccard();
                cekJaccard();

                //Console.WriteLine(index);
                a = 'a'; b = 'b'; c = 'c'; d = 'd'; e = 'e'; f = 'f'; g = 'g'; h = 'h';
                //Console.WriteLine(predict[index]);
                if (predict[index].Equals(a))
                {
                    //hasil = "0 - 452 kwintal";
                    hasil = "226";
                }
                else if (predict[index].Equals(b))
                {
                    //hasil = "453 - 46179,5714285714 kwintal";
                    hasil = "23586";
                }
                else if (predict[index].Equals(c))
                {
                    //hasil = "46180 - 91907,1428571429 kwintal";
                    hasil = "69043";
                }
                else if (predict[index].Equals(d))
                {
                    //hasil = "91908 - 137634,714285714 kwintal";
                    hasil = "114771";
                }
                else if (predict[index].Equals(e))
                {
                    //hasil = "137635 - 183362,285714286 kwintal";
                    hasil = "160498";
                }
                else if (predict[index].Equals(f))
                {
                    //hasil = "183363 - 229089,857142857 kwintal";
                    hasil = "206226";
                }
                else if (predict[index].Equals(g))
                {
                    //hasil = "229090 - 274817,428571429 kwintal";
                    hasil = "251953";
                }
                else if (predict[index].Equals(h))
                {
                    //hasil = "274817,428571429 - More kwintal";
                    hasil = "274817";
                }
            }

            return (hasil);
        }

    }
}
