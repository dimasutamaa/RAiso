﻿using RAiso.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RAiso.Repositories
{
    public class CartRepository
    {
        private static LocalDatabaseEntities db = DBSingleton.GetInstance();
        public static void AddCart(Cart cart)
        {
            db.Carts.Add(cart);
            db.SaveChanges();
        }

        public static List<Cart> GetCarts(int id)
        {
            return (from x in db.Carts where x.UserID == id select x).ToList();
        }

        public static Cart FindCartItemByUser(int userId, int stationeryId)
        {
            return (from x in db.Carts where x.UserID.Equals(userId) && 
                    x.StationeryID.Equals(stationeryId) select x).FirstOrDefault();
        }
    }
}