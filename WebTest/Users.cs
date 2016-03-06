using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebTest
{
    public class Users
    {
        public string UserId { get; set; }
        public string Name { get; set; }
        public string ProfileImage { get; set; }

        public List<Users> GetAllUsers()
        {
            List<Users> myUsers = new List<Users>();

            Users myuser1 = new Users();
            Users myuser2 = new Users();
            Users myuser3 = new Users();
            Users myuser4 = new Users();


            myuser1.UserId = "paul@email.com";
            myuser1.Name = "Paul Smith";
            myuser1.ProfileImage = @"images/face_1.png";

            myuser2.UserId = "john@email.com";
            myuser2.Name = "John Parker";
            myuser2.ProfileImage = @"images/face_1.png";

            myuser3.UserId = "mark@email.com";
            myuser3.Name = "Mark Williams";
            myuser3.ProfileImage = @"images/face_1.png";

            myuser4.UserId = "bruce@email.com";
            myuser4.Name = "Bruce Wayne";
            myuser4.ProfileImage = @"images/face_1.png";

            //myUsers.Add(myuser1);
            //myUsers.Add(myuser2);
            //myUsers.Add(myuser3);
            //myUsers.Add(myuser4);

            return myUsers;
        }
    }
}