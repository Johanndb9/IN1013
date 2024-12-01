1.SELECT w.FirstName, w.LastName
FROM Waiters w
JOIN Bills b ON w.WaiterID = b.WaiterID
JOIN Customers c ON b.CustomerID = c.CustomerID
WHERE c.FirstName = 'Tanya' AND c.LastName = 'Singh';

2.SELECT r.Date
FROM Rooms r
JOIN Headwaiters hw ON r.HeadwaiterID = hw.HeadwaiterID
WHERE hw.FirstName = 'Charles' AND r.RoomName = 'Green'
  AND r.Date BETWEEN '2016-02-01' AND '2016-02-29';

3.SELECT DISTINCT w.FirstName, w.LastName
FROM Waiters w
JOIN Headwaiters hw ON w.HeadwaiterID = hw.HeadwaiterID
WHERE hw.HeadwaiterID = (
    SELECT HeadwaiterID
    FROM Waiters
    WHERE FirstName = 'Zoe' AND LastName = 'Ball'
);

4.SELECT c.FirstName AS CustomerName, b.AmountSpent, w.FirstName AS WaiterName
FROM Bills b
JOIN Customers c ON b.CustomerID = c.CustomerID
JOIN Waiters w ON b.WaiterID = w.WaiterID
ORDER BY b.AmountSpent DESC;

5.SELECT DISTINCT w.FirstName, w.LastName
FROM Waiters w
JOIN Bills b ON w.WaiterID = b.WaiterID
WHERE b.BillNumber IN ('00014', '00017');

6.SELECT DISTINCT w.FirstName, w.LastName
FROM Waiters w
JOIN Rooms r ON w.TeamID = r.TeamID
WHERE r.RoomName = 'Blue' AND r.Date = '160312'

UNION

SELECT hw.FirstName, hw.LastName
FROM Headwaiters hw
JOIN Rooms r ON hw.HeadwaiterID = r.HeadwaiterID
WHERE r.RoomName = 'Blue' AND r.Date = '160312';















