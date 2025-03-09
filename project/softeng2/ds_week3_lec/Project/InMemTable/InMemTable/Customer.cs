using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InMemTable
{
    partial class Customer
    {
        public string FirstName { get; set; }

        public string LastName { get; set; }

        public DateTime DateOfBirth { get; set; }

        public Customer(string firstName, string lastName, DateTime dateOfBirth)
        {
            this.FirstName = firstName;
            this.LastName = lastName;
            this.DateOfBirth = dateOfBirth;
        }
    }

    partial class Customer
    {
       public string FullName
        {
            get
            {
                return this.FirstName + " " + this.LastName;
            }
        }

        public int Age
        {
            get
            {
                return DateTime.Now.Year - this.DateOfBirth.Year;
            }
        }
    }


}
