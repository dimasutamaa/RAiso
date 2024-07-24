﻿using RAiso.Factories;
using RAiso.Handlers;
using RAiso.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RAiso.Controllers
{
    public class TransactionController
    {
        public static void CreateTransaction(MsUser user)
        {
            MsUser loggedUser = UserController.GetUserById(user.UserID);
            List<Cart> carts = CartController.GetCarts(loggedUser.UserID);

            int transactionId = TransactionHandler.GenerateID();
            int userId = loggedUser.UserID;
            DateTime date = DateTime.Now;

            TransactionHandler.CreateNewOrder(transactionId, userId, date);

            List<TransactionDetail> orderDetails = new List<TransactionDetail>();

            foreach (var cart in carts)
            {
                var orderDetail = TransDetailFactory.Create(transactionId, cart.StationeryID, cart.Quantity);
                orderDetails.Add(orderDetail);
            }

            TransactionHandler.CreateNewOrderDetails(orderDetails);

            CartHandler.DeleteCart(userId);
        }
    }
}