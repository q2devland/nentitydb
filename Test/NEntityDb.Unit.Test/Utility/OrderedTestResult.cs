using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

namespace NEntityDb.Unit.Test.Utility
{
    public class OrderedTestResult
    {      
        public int Count { get; set; } = 0;
        public int Attempted { get; set; } = 0;
        public int Failures { get; set; } = 0;

        public void AddResult(OrderedTestResult result)
        {
            this.Count += result.Count;
            this.Failures += result.Failures;
            this.Attempted += result.Attempted;
        }
    }
}
