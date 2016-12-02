﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

using MPT.Model;
using MPT.Positions;

using MPTLib.Test.RSView;

namespace MPTLib.Test.Positions
{
    [TestClass]
    public class PlcMessagesMergeTest
    {
        [TestMethod]
        public void TestMethod1()
        {
            try
            {
                var list = new ExcelPositionList(TestData._105_Inform2.FilePath, TestData._105_Inform2.PlcId);
                var r = list.LoadMessagesSheet();
                
                var sw = Stopwatch.StartNew();
                var merge = new PlcMessagesMerge(list.PlcMessages.Values, list.PlcMessages.Values);
                var a = merge.Diff;
                
                sw.Stop();
                Console.WriteLine(sw.ElapsedMilliseconds);
                //a.Values.Add(null);
            }
            catch (Exception)
            {

                throw;
            }
        }





        [TestMethod]
        public void TestMethod2()
        {
            var exsistList = new List<PlcMessage>()
            {
                new PlcMessage() {PlcId = 1, Number = 1, Text = ""}
            };

            var newList = new List<PlcMessage>()
            {
                new PlcMessage() {PlcId = 1, Number = 1, Text = "new"}
            };


            var merge = new PlcMessagesMerge(exsistList, newList);

        }
    }
}