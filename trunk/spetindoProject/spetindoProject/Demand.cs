using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace spetindoProject
{
    public class Demand
    {
        public string sEcho { get; set; }
        public string iTotalRecords { get; set; }
        public string iTotalDisplayRecords { get; set; }
        public IList<IList<string>> aaData { get; set; }
    }

    public class aaData
    {
        //demand
        public string komoditas { get; set; }
        public string kabupaten { get; set; }
        public string jenis_pembeli { get; set; }
        public string jumlah { get; set; }
        public string daerah_asal { get; set; }

    }
}