using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ComputoServer_wpf.Modulos
{
    public static class ModGlobalVar
    {
        public static long _secs;
        public static long _mins;
        public static int _tmpsecs;
        public static int _tmpsecsNow;
        public static  int _hrs;
        public static string _elapseTime;
        public static bool _notify;
        public static int AmtinMin;
        public static int AmtinHr;
        public static int AmtinHrs;
        public static int IsMin;
        public static int IsDisc;
        public static int _tmpSetTime_; // 'time settings to be..
        public static bool _checkRun; // 'check if the client timer is first use. purpose: server restart while client is open
        public static ArrayList m_ThreadList;
        public static String _packet_msg;
        public static  int global_timer = 0;
        public static long _start;
        public static int DiscON;
        public static long _btnClick;
        public static long _prevIndex = 0;

        public static TimeSpan testElpase;
        public static DateTime timeEn, timeSt;
        public static  int h, m, sec;
        public static DateTime OpenTimeStart, timestart, timeend;
        public static TimeSpan UsedTime;
        public static  int chktimeHR, chktimeMIN, amountTopay, amountTopayMin;// ' amountTopayHR As Integer
        public static  int fmins; //'toggle to get if paid or not
        public static bool _bolPaid;

        public static int _mRates;// 'global rates, so that you can query it easily without using sql statement
                                  //'public static  mReport As New CrystalDecisions.CrystalReports.Engine.ReportDocument
        public static String Rpt_SqlStr; // ' for report query
    }
}
