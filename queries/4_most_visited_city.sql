SELECT city, COUNT(reservations.id)as total_reservations
FROM properties
JOIN reservations ON properties.id = reservations.property_id
GROUP BY properties.city
ORDER by total_reservations DESC;