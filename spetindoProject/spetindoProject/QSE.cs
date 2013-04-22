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
        public double[,] Bt = new double[100, 63];
        public char[] predict = new char[63];
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

        public int banyakBaris = 17;
        public int banyakKolom = 63;
        public int banyakSilang = 2;
        public double N, Npu, Nt, gbest = 1, temp_gbest = 0.5;
        Random random = new Random();
        public int t = 0;
        public string hasil;

        public void inisialisasi()
        {
            // membaca prediction
            XDocument doc = XDocument.Load("DS_Spetindo.xml");

            var produksi = doc.Descendants("Produksi");

            int n = 0;
            foreach (var Produksi in produksi)
            {
                //Console.WriteLine(Produksi.Value);
                predict[n] = Produksi.Value[0];
                hitung_c[n] = 0;
                n++;
            }

            //ngerint predic
            /*for (int i = 0; i < 63; i++)
            {
                Console.WriteLine(predict[i]);
            }*/

            //mengisi array condition

            for (int x = 0; x <= t; x++)
            {
                for (int kolom = 0; kolom < banyakKolom; kolom++)
                {
                    for (int baris = 0; baris < banyakBaris; baris++)
                    {
                        //for (int silang = 0; silang < banyakSilang; silang++)
                        //{
                        //Console.Write("Posisi [{0},{1}] = ", baris, kolom);
                        matrix[t, kolom, baris] = 45;
                        //}
                    }
                }
            }
            //Console.WriteLine();
            //menampilkan array condition
            /*for (int x = 0; x <= t; x++)
            {
                for (int kolom = 0; kolom < banyakKolom; kolom++)
                {
                    for (int baris = 0; baris < banyakBaris; baris++)
                    {
                        
                            Console.WriteLine("Qt adalah [{0},{1},{2}] = {3}", t, kolom, baris, matrix[t, kolom, baris]);
                        
                    }
                }
            }*/

        }

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

            //Console.WriteLine();

            //menampilkan array
            /*for (int i = 0; i <= t; i++)
            {
                for (int kolom = 0; kolom < banyakKolom; kolom++)
                {
                    for (int baris = 0; baris < banyakBaris; baris++)
                    {

                        Console.WriteLine("Pt adalah [{0},{1},{2}] = {3}", i, kolom, baris, states[i, kolom, baris]);

                    }
                }
            }*/

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
                        //Console.WriteLine(Math.Cos(matrix[t, j, i]));
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

            Console.WriteLine();

            //menampilkan array
            /*for (int i = 0; i < t; i++)
            {
                for (int kolom = 0; kolom < banyakKolom; kolom++)
                {
                    for (int baris = 0; baris < banyakBaris; baris++)
                    {

                        Console.WriteLine("Pt adalah [{0},{1},{2}] = {3}",t, kolom, baris, states[t, kolom, baris]);

                    }
                }
            }*/

        }

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
                        //temp_p[j] = temp_p[i];
                        //count_cp++;
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

            //menghitung Jm
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


            //coba ngeprint
            /*for (int cc = 0; cc < 63; cc++)
            {
                for (int dd = 0; dd < banyakBaris; dd++)
                {
                    Console.Write("{0} ", states[t,cc, dd]);
                }
                Console.WriteLine(" = {0}", hitung_c[temp_c[cc]]);
                //Console.WriteLine("predict = {0}", predict[cc]);
                //Console.WriteLine("hitung_p = {0}", hitung_p[temp_p[cc]]);
                //Console.WriteLine("hitung_cp = {0}", hitung_cp[temp_cp[cc]]);
                //Console.WriteLine("{0} / {1} = {2}", hitung_p[cc], N, Math.Round(a[cc],6));
                Console.WriteLine(hitung_p[temp_p[cc]] + " / " + N + " = " + a[cc]);
                Console.WriteLine("{0} / {1} = {2}", hitung_cp[temp_p[cc]], hitung_c[temp_p[cc]], b[cc]);
                Console.WriteLine("Jm = {0} / {1} * ( {2} * {3}) = {4}", hitung_c[temp_p[cc]], N, b[cc], Math.Log10(b[cc] / a[cc]), Jmeasure[cc]);
                Console.WriteLine(Fitness[cc]);
            }*/


        }

        public void makebt()
        {
            for (int i = 0; i < banyakKolom; i++)
            {
                Bt[t, i] = Fitness[i];
            }

            /*for (int i = 0; i < banyakKolom; i++)
            {
                Console.WriteLine("Bt {0} , {1} = {2}",t, i, Bt[t, i]);
            }*/
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
                        //temp_gbest = gbest;
                        //Console.WriteLine("gbest {0}", gbest);
                    }
                }

                for (int baris = 0; baris < banyakBaris; baris++)
                {
                    teta = matrix[t - 1, kolom, baris];


                    //Console.Write("Posisi [{0},{1}] = ", baris, kolom);
                    //rand = random.Next(0, 2);
                    rand = GetRandomNumber(0, 1);
                    //Console.WriteLine(rand);
                    Vt_akhir = alf * ((w * Vt_awal) + (c1 * rand * (pbest - teta)) + (c2 * rand * (gbest - teta)));
                    matrix[t, kolom, baris] = teta + Vt_akhir;
                    //Console.WriteLine(teta + Vt_akhir);

                }
            }

            //menampilkan array
            /*for (int kolom = 0; kolom < banyakKolom; kolom++)
            {
                for (int baris = 0; baris < banyakBaris; baris++)
                {

                    Console.WriteLine("Q[{0},{1},{2}] = {3}", t, kolom, baris, matrix[t,kolom,baris]);

                }
            }*/

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

        public void input()
        {

            /*for (int x = 0; x <= t; x++)
          {
              for (int kolom = 0; kolom < banyakKolom; kolom++)
              {
            for (int baris = 0; baris < banyakBaris; baris++)
            {

                Console.WriteLine("Qt adalah [{0},{1},{2}] = {3}", t, 20, baris, matrix[t, 20, baris]);
                Console.WriteLine("Qt adalah [{0},{1},{2}] = {3}", t, 10, baris, matrix[t, 10, baris]);
            }
              /*}
          }*/

            Console.WriteLine("===============================================");
            Console.WriteLine("please enter the array index you wish to get the value of it");

            for (int i = 0; i < answer.Length; i++)
            {
                answer[i] = Double.Parse(Console.ReadLine());
                //Console.WriteLine("{0}: {1} ", i, answer[i]);
            }
        }


        //output padi
        public string outputPadi()
        {
            //set data padi
            answer[0] = 1;

            //sorting Bt
            //Sort<double>(Bt, banyakKolom,banyakBaris);

            //memasukkan Bt ke rule
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

            //sort rule
            Array.Sort(rule);
            Array.Reverse(rule);
            /*for (int i = 0; i < 5; i++)
            {
                Console.WriteLine("rule {0} = {1}, t = {2}, kolom = {3}, predict = {4}", i, rule[i], temp_t[i], temp_kolom[i],predict[temp_kolom[i]]);
            }*/

            //ambil 10 rule
            for (int i = 0; i < 10; i++)
            {
                rules[i] = rule[i];
            }

            /*for (int i = 0; i < 10; i++)
            {
                Console.WriteLine("rules {0} = {1}", i, rules[i]);
            }*/


            //mengecek kesamaan di rules
            int sama = 1, flag = 1, index = 0;

            char a = 'a', b = 'b', c = 'c', d = 'd', e = 'e', f = 'f', g = 'g', h = 'h';
            /*int tt, kolom;

            for (int i = 0; i < 5; i++)
            {
                tt = temp_t[i];
                kolom=temp_kolom[i];

                for (int k = 0; k < banyakBaris; k++)
                    {
                        if (states[tt, kolom, k] != answer[k])
                        {
                            sama = 0;
                            break;
                        }
                    }
                    if (sama == 1)
                    {
                        Console.WriteLine("Predict {0} : {1} ",kolom, predict[kolom]);
                        flag = 0;
                        break;
                    }

                    if (flag == 0)
                        break;
            }*/

            for (int j = 0; j <= t; j++)
            {
                for (int i = 0; i < banyakKolom; i++)
                {
                    sama = 1;
                    for (int k = 0; k < banyakBaris; k++)
                    {
                        if (states[j, i, k] != answer[k])
                        {
                            sama = 0;
                            break;
                        }
                    }
                    if (sama == 1)
                    {
                        //Console.WriteLine("Predict : {0} ", predict[i]);
                        index = i;
                        flag = 0;
                        break;
                    }
                }
                if (flag == 0)
                    break;
            }

            if (predict[index].Equals(a))
            {
                hasil = "0 - 452 kwintal";
            }
            else if (predict[index].Equals(b))
            {
                hasil = "453 - 46179,5714285714 kwintal";
            }
            else if (predict[index].Equals(c))
            {
                hasil = "46180 - 91907,1428571429 kwintal";
            }
            else if (predict[index].Equals(d))
            {
                hasil = "91908 - 137634,714285714 kwintal";
            }
            else if (predict[index].Equals(e))
            {
                hasil = "137635 - 183362,285714286 kwintal";
            }
            else if (predict[index].Equals(f))
            {
                hasil = "183363 - 229089,857142857 kwintal";
            }
            else if (predict[index].Equals(g))
            {
                hasil = "229090 - 274817,428571429 kwintal";
            }
            else if (predict[index].Equals(h))
            {
                hasil = "274817,428571429 - More kwintal";
            }
            else
            {
                hasil = "Keputusan tidak ditemukan";
            }

            return (hasil);
        }


        //output jagung
        public string outputJagung()
        {
            //set data jagung
            answer[1] = 1;

            //sorting Bt
            //Sort<double>(Bt, banyakKolom,banyakBaris);

            //memasukkan Bt ke rule
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

            //sort rule
            Array.Sort(rule);
            Array.Reverse(rule);
            /*for (int i = 0; i < 5; i++)
            {
                Console.WriteLine("rule {0} = {1}, t = {2}, kolom = {3}, predict = {4}", i, rule[i], temp_t[i], temp_kolom[i],predict[temp_kolom[i]]);
            }*/

            //ambil 10 rule
            for (int i = 0; i < 10; i++)
            {
                rules[i] = rule[i];
            }

            /*for (int i = 0; i < 10; i++)
            {
                Console.WriteLine("rules {0} = {1}", i, rules[i]);
            }*/


            //mengecek kesamaan di rules
            int sama = 1, flag = 1, index = 0;

            char a = 'a', b = 'b', c = 'c', d = 'd', e = 'e', f = 'f', g = 'g', h = 'h';
            /*int tt, kolom;

            for (int i = 0; i < 5; i++)
            {
                tt = temp_t[i];
                kolom=temp_kolom[i];

                for (int k = 0; k < banyakBaris; k++)
                    {
                        if (states[tt, kolom, k] != answer[k])
                        {
                            sama = 0;
                            break;
                        }
                    }
                    if (sama == 1)
                    {
                        Console.WriteLine("Predict {0} : {1} ",kolom, predict[kolom]);
                        flag = 0;
                        break;
                    }

                    if (flag == 0)
                        break;
            }*/

            for (int j = 0; j <= t; j++)
            {
                for (int i = 0; i < banyakKolom; i++)
                {
                    sama = 1;
                    for (int k = 0; k < banyakBaris; k++)
                    {
                        if (states[j, i, k] != answer[k])
                        {
                            sama = 0;
                            break;
                        }
                    }
                    if (sama == 1)
                    {
                        //Console.WriteLine("Predict : {0} ", predict[i]);
                        index = i;
                        flag = 0;
                        break;
                    }
                }
                if (flag == 0)
                    break;
            }

            if (predict[index].Equals(a))
            {
                hasil = "0 - 452 kwintal";
            }
            else if (predict[index].Equals(b))
            {
                hasil = "453 - 46179,5714285714 kwintal";
            }
            else if (predict[index].Equals(c))
            {
                hasil = "46180 - 91907,1428571429 kwintal";
            }
            else if (predict[index].Equals(d))
            {
                hasil = "91908 - 137634,714285714 kwintal";
            }
            else if (predict[index].Equals(e))
            {
                hasil = "137635 - 183362,285714286 kwintal";
            }
            else if (predict[index].Equals(f))
            {
                hasil = "183363 - 229089,857142857 kwintal";
            }
            else if (predict[index].Equals(g))
            {
                hasil = "229090 - 274817,428571429 kwintal";
            }
            else if (predict[index].Equals(h))
            {
                hasil = "274817,428571429 - More kwintal";
            }
            else
            {
                hasil = "Keputusan tidak ditemukan";
            }

            return (hasil);
        }


        //output kedelai
        public string outputKedelai()
        {

            //set data kedelai
            answer[2] = 1;

            //sorting Bt
            //Sort<double>(Bt, banyakKolom,banyakBaris);

            //memasukkan Bt ke rule
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

            //sort rule
            Array.Sort(rule);
            Array.Reverse(rule);
            /*for (int i = 0; i < 5; i++)
            {
                Console.WriteLine("rule {0} = {1}, t = {2}, kolom = {3}, predict = {4}", i, rule[i], temp_t[i], temp_kolom[i],predict[temp_kolom[i]]);
            }*/

            //ambil 10 rule
            for (int i = 0; i < 10; i++)
            {
                rules[i] = rule[i];
            }

            /*for (int i = 0; i < 10; i++)
            {
                Console.WriteLine("rules {0} = {1}", i, rules[i]);
            }*/


            //mengecek kesamaan di rules
            int sama = 1, flag = 1, index = 0;

            char a = 'a', b = 'b', c = 'c', d = 'd', e = 'e', f = 'f', g = 'g', h = 'h';
            /*int tt, kolom;

            for (int i = 0; i < 5; i++)
            {
                tt = temp_t[i];
                kolom=temp_kolom[i];

                for (int k = 0; k < banyakBaris; k++)
                    {
                        if (states[tt, kolom, k] != answer[k])
                        {
                            sama = 0;
                            break;
                        }
                    }
                    if (sama == 1)
                    {
                        Console.WriteLine("Predict {0} : {1} ",kolom, predict[kolom]);
                        flag = 0;
                        break;
                    }

                    if (flag == 0)
                        break;
            }*/

            for (int j = 0; j <= t; j++)
            {
                for (int i = 0; i < banyakKolom; i++)
                {
                    sama = 1;
                    for (int k = 0; k < banyakBaris; k++)
                    {
                        if (states[j, i, k] != answer[k])
                        {
                            sama = 0;
                            break;
                        }
                    }
                    if (sama == 1)
                    {
                        //Console.WriteLine("Predict : {0} ", predict[i]);
                        index = i;
                        flag = 0;
                        break;
                    }
                }
                if (flag == 0)
                    break;
            }

            if (predict[index].Equals(a))
            {
                hasil = "0 - 452 kwintal";
            }
            else if (predict[index].Equals(b))
            {
                hasil = "453 - 46179,5714285714 kwintal";
            }
            else if (predict[index].Equals(c))
            {
                hasil = "46180 - 91907,1428571429 kwintal";
            }
            else if (predict[index].Equals(d))
            {
                hasil = "91908 - 137634,714285714 kwintal";
            }
            else if (predict[index].Equals(e))
            {
                hasil = "137635 - 183362,285714286 kwintal";
            }
            else if (predict[index].Equals(f))
            {
                hasil = "183363 - 229089,857142857 kwintal";
            }
            else if (predict[index].Equals(g))
            {
                hasil = "229090 - 274817,428571429 kwintal";
            }
            else if (predict[index].Equals(h))
            {
                hasil = "274817,428571429 - More kwintal";
            }
            else
            {
                hasil = "Keputusan tidak ditemukan";
            }

            return (hasil);
        }

    }
}
