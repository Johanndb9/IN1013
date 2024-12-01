1.SELECT DISTINCT c.FirstName, c.LastName
FROM Customers c
JOIN Bills b ON c.CustomerID = b.CustomerID
WHERE b.AmountSpent > 450.00
  AND b.HeadwaiterID = (
      SELECT HeadwaiterID
      FROM Headwaiters
      WHERE FirstName = 'Charles'
  );

2.SELECT hw.FirstName, hw.LastName
FROM Headwaiters hw
JOIN Rooms r ON hw.HeadwaiterID = r.HeadwaiterID
JOIN Bills b ON r.RoomID = b.RoomID
JOIN Customers c ON b.CustomerID = c.CustomerID
WHERE c.FirstName = 'Nerida'
  AND b.Date = '2016-01-11';

3.SELECT c.FirstName, c.LastName
FROM Customers c
JOIN Bills b ON c.CustomerID = b.CustomerID
WHERE b.AmountSpent = (
    SELECT MIN(AmountSpent)
    FROM Bills
);

4.SELECT w.FirstName, w.LastName
FROM Waiters w
WHERE w.WaiterID NOT IN (
    SELECT DISTINCT WaiterID
    FROM Bills
);

5.SELECT c.FirstName AS CustomerName, hw.FirstName AS HeadwaiterFirstName, 
       hw.LastName AS HeadwaiterLastName, r.RoomName
FROM Customers c
JOIN Bills b ON c.CustomerID = b.CustomerID
JOIN Rooms r ON b.RoomID = r.RoomID
JOIN Headwaiters hw ON r.HeadwaiterID = hw.HeadwaiterID
WHERE b.AmountSpent = (
    SELECT MAX(AmountSpent)
    FROM Bills
);



