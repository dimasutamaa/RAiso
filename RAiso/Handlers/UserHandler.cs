using RAiso.Model;
using RAiso.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RAiso.Handlers
{
    public class UserHandler
    {
        public static int GenerateID()
        {
            MsUser lastUser = UserRepository.GetLastUser();

            if (lastUser == null)
            {
                return 1;
            }
            else
            {
                int lastId = lastUser.UserID;
                int newId = lastId + 1;
                return newId;
            }
        }

        public static void AddUser(MsUser user)
        {
            UserRepository.AddUser(user);
        }

        public static String GetUsername(string name)
        {
            return UserRepository.GetUsername(name);
        }

        public static MsUser GetUserCredentials(string username, string password)
        {
            return UserRepository.GetUserCredentials(username, password);
        }
    }
}