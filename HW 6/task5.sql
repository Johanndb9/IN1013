1.SELECT w.FirstName, w.LastName, b.Date, COUNT(b.BillID) AS NumberOfBills
FROM Waiters w
JOIN Bills b ON w.WaiterID = b.WaiterID
GROUP BY w.WaiterID, b.Date
HAVING COUNT(b.BillID) >= 2;

2.SELECT r.RoomName, COUNT(t.TableID) AS NumberOfTables
FROM Rooms r
JOIN Tables t ON r.RoomID = t.RoomID
WHERE t.Capacity > 6
GROUP BY r.RoomID, r.RoomName;

3.SELECT r.RoomName, SUM(b.AmountSpent) AS TotalBillAmount
FROM Rooms r
JOIN Bills b ON r.RoomID = b.RoomID
GROUP BY r.RoomID, r.RoomName;

4.SELECT hw.FirstName, hw.LastName, SUM(b.AmountSpent) AS TotalBillAmount
FROM Headwaiters hw
JOIN Rooms r ON hw.HeadwaiterID = r.HeadwaiterID
JOIN Bills b ON r.RoomID = b.RoomID
GROUP BY hw.HeadwaiterID
ORDER BY TotalBillAmount DESC;

5.SELECT c.FirstName, c.LastName, AVG(b.AmountSpent) AS AverageSpent
FROM Customers c
JOIN Bills b ON c.CustomerID = b.CustomerID
GROUP BY c.CustomerID
HAVING AVG(b.AmountSpent) > 400;

6.SELECT w.FirstName, w.LastName, COUNT(b.BillID) AS NumberOfBills
FROM Waiters w
JOIN Bills b ON w.WaiterID = b.WaiterID
GROUP BY w.WaiterID, b.Date
HAVING COUNT(b.BillID) >= 3;

