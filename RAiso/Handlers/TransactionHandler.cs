using RAiso.Factories;
using RAiso.Model;
using RAiso.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RAiso.Handlers
{
    public class TransactionHandler
    {
        public static int GenerateID()
        {
            TransactionHeader lastTransaction = TransactionRepository.GetLastTransaction();

            if (lastTransaction == null)
            {
                return 1;
            }
            else
            {
                int lastId = lastTransaction.TransactionID;
                int newId = lastId + 1;
                return newId;
            }
        }

        public static List<TransactionHeader> GetTransactionsById(int id)
        {
            return TransactionRepository.GetTransactionsById(id);
        }

        public static void CreateNewOrder(int id, int userId, DateTime date)
        {
            TransactionHeader newOrder = TransHeaderFactory.Create(id, userId, date);
            TransactionRepository.CreateOrder(newOrder);
        }

        public static void CreateNewOrderDetails(List<TransactionDetail> details)
        {
            TransactionRepository.CreateOrderDetail(details);
        }

        public static TransactionHeader FindById(int id)
        {
            return TransactionRepository.FindById(id);
        }
    }
}