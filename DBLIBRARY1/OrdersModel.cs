using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBLIBRARY1
{
    public class OrdersModel
    {
        public int OrderId { get; set; }
        public int CustomerId { get; set; }
        public int EmployeeId { get; set; }
        public string? OrderDate { get; set; }
        public int ShipperID { get; set; }

    }
}
