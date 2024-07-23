using RAiso.Factories;
using RAiso.Model;
using RAiso.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RAiso.Handlers
{
    public class CartHandler
    {
        public static Boolean AddToCart(int userId, int stationeryId, int qty)
        {
            Cart item = CartRepository.FindCartItemByUser(userId, stationeryId);

            if (item != null)
            {
                return false;
            }
            else
            {
                Cart newItem = CartFactory.Create(userId, stationeryId, qty);
                CartRepository.AddCart(newItem);
                return true;
            }
        }

        public static List<Cart> GetCarts(int userId)
        {
            return CartRepository.GetCarts(userId);
        }
    }
}