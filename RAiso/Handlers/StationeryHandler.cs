﻿using RAiso.Factories;
using RAiso.Model;
using RAiso.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RAiso.Handlers
{
    public class StationeryHandler
    {
        public static int GenerateID()
        {
            MsStationery lastStationery = StationeryRepository.GetLastStationery();

            if (lastStationery == null)
            {
                return 1;
            }
            else
            {
                int lastId = lastStationery.StationeryID;
                int newId = lastId + 1;
                return newId;
            }
        }

        public static Boolean Insert(int id, string name, int price)
        {
            MsStationery checkName = StationeryRepository.GetName(name);

            if (checkName != null)
            {
                return false;
            }
            else
            {
                MsStationery stationery = StationeryFactory.Create(id, name, price);
                StationeryRepository.AddStationery(stationery);
                return true;
            }
        }

        public static List<MsStationery> GetAllStationery()
        {
            return StationeryRepository.GetAllStationery();
        }
    }
}