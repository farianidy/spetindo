using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace spetindoProject
{
    public class forecast
    {
        public double[,] harga = new double[3,1000000];
        public int k, i = 0, batas = 12, n = 0;
        double avrg;
        public int[] output = new int[100000];


        public double ramalPadi()
        {
            for (int j = 0; j < 6; j++)
            {
                double sum = 0;
                for (; i < batas; i++)
                {
                    sum = sum + harga[0,i];
                }

                avrg = sum / 12;
                harga[0,i + 1] = avrg;
                output[n] = Convert.ToInt32(avrg);
                n++;
                batas++;
                i = n;

            }
                    return (output[5]);
        }

        public double ramalJagung()
        {
            n = 0;
            for (int j = 0; j < 6; j++)
            {
                double sum = 0;
                for (; i < batas; i++)
                {
                    sum = sum + harga[1, i];
                }

                avrg = sum / 12;
                harga[1, i + 1] = avrg;
                output[n] = Convert.ToInt32(avrg);
                n++;
                batas++;
                i = n;

            }
            return (output[5]);
        }

        public double ramalKedelai()
        {
            n = 0;
            for (int j = 0; j < 6; j++)
            {
                double sum = 0;
                for (; i < batas; i++)
                {
                    sum = sum + harga[2, i];
                }

                avrg = sum / 12;
                harga[2, i + 1] = avrg;
                output[n] = Convert.ToInt32(avrg);
                n++;
                batas++;
                i = n;

            }
            return (output[5]);
        }

    }
}