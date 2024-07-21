using RAiso.Handlers;
using RAiso.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace RAiso.Controllers
{
    public class StationeryController
    {
        public static int GenerateID()
        {
            return StationeryHandler.GenerateID();
        }

        public static String Insert(string name, string priceStr)
        {
            int id = GenerateID();

            if (name == "" && priceStr == "")
            {
                return "All fields must be filled";
            }
            else if (name == "")
            {
                return "Name must be filled";
            }
            else if (name.Length < 3 || name.Length > 50)
            {
                return "Name must be between 3 – 50 characters";
            }
            else if (priceStr == "")
            {
                return "Price must be filled";
            }
            else if (!Regex.IsMatch(priceStr, @"^-?\d+(\.\d*)?$"))
            {
                return "Price must be numeric";
            }
            else if (Convert.ToInt32(priceStr) < 2000)
            {
                return "Price must be greater or equal to 2000";
            }
            else
            {
                int price = Convert.ToInt32(priceStr);
                Boolean response = StationeryHandler.Insert(id, name, price);
                if (response == true)
                {
                    return "Success";
                }
                else
                {
                    return "Stationery name has already been taken!";
                }
            }
        }

        public static List<MsStationery> GetAllStationery()
        {
            return StationeryHandler.GetAllStationery();
        }
    }
}