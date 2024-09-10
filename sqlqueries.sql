--1
select Users.FirstName, Users.LastName, DateofBirth
from Users
where DateOfBirth between '2000-01-01' and '2004-12-31'
order by DateofBirth asc

--2
select users.userid, users.username, posts.postdescription
from users
inner join posts on posts.postedby = users.userid
where users.userid = '4'

--3
select users.FirstName, users.LastName
from friends
join users on friends.friendbeingadded = users.userid
where friends.friendwhoadded = '2';

--4
select groupmembershiprequests.groupMemberUserId, users.firstname, users..lastname
from groupmembershiprequests
left join users on users.userid = groupmembershiprequests.groupmemberuserid
where usersuserid = '2'
--5
select Users.FirstName, users.lastname
from friends 
join users  on friends.friendwhoadded = users.userid
where friends.friendid = '2'
  
--6
SELECT users.FirstName, users.LastName, friends.IsAccepted
FROM friends
JOIN users ON friends.FriendBeingAdded = users.UserID
WHERE friends.FriendWhoAdded = '1';

--7
SELECT posts.PostID, posts.PostDescription, users.FirstName, users.LastName, posts.DatePosted
FROM Posts
JOIN Users ON posts.PostedBy = users.UserID
WHERE posts.GroupID = 2 AND posts.IsOnlyForFriends = 0;

--8
SELECT gmr.GroupMemberShipRequestsID, u.FirstName, u.LastName, gmr.DateAccepted
FROM GroupMembershipRequests gmr
JOIN Users u ON gmr.GroupMemberUserID = u.UserID
WHERE gmr.GroupID = 2 AND gmr.IsGroupMemberShipAccepted = 0;
